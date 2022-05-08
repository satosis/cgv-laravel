<?php

namespace App\Http\Controllers\Api;

use App\Services\UploadImageService;
use Throwable;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Services\ConsultantService;
use App\Http\Controllers\Controller;
use App\Http\Requests\AdvisorApplyRequest;
use App\Http\Requests\CreateConsultantRequest;
use App\Http\Requests\ConfirmConsultantRequest;
use App\Http\Requests\GetConsultantRequestByAdvisor;
use App\Http\Requests\GetConsultantRecruitByAdvisor;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class ConsultantController extends Controller
{
    /**
     * Create variable settingService
     *
     * @var $consultantService
     */
    protected $consultantService;

    /**
     * __construct
     *
     * @param ConsultantService $consultantService - callback object
     */
    public function __construct(ConsultantService $consultantService)
    {
        $this->consultantService = $consultantService;
    }

  /**
   * List Request consultant
   *
   * @param Request $request
   * @return \Illuminate\Http\JsonResponse
   */
    public function listRequestConsultant(Request $request)
    {
        $result = $this->consultantService->listRequest($request);
        return response()->json($result);
    }

  /**
   * Detail Consultant
   *
   * @param Request $request
   * @param $id
   * @return \Illuminate\Http\JsonResponse
   */
    public function detail(Request $request, $id)
    {
        $result = $this->consultantService->detail($request, $id);
        return response()->json($result, $result['status']);
    }

  /**
   * Register topic consultant by farmer
   *
   * @param CreateConsultantRequest $request
   * @param UploadImageService $imageService
   * @return \Illuminate\Http\JsonResponse
   */
    public function requestConsultant(CreateConsultantRequest $request, UploadImageService $imageService)
    {
        $imageRequests = [];
        if ($request->hasFile('attachment')) {
            foreach ($request->attachment as $file) {
                $imageRequests[] = [
                    'original_name' => $file->getClientOriginalName(),
                    'file' => $imageService->upload($file, false),
                ];
            }
        }

        $result = $this->consultantService->registerConsultant($request, $imageRequests);
        $result['status'] !== Response::HTTP_OK
            ? $response['error'] = $result['error']
            : $response = $result['data'];

        return response()->json($response, $result['status']);
    }

  /**
   * Advisor request consultant of farmer by request type
   *
   * @param AdvisorApplyRequest $request
   * @return \Illuminate\Http\JsonResponse
   */
    public function advisorApplyRequestConsultant(AdvisorApplyRequest $request)
    {
        $result = $this->consultantService->advisorRegisterRequest($request);
        $result['status'] !== Response::HTTP_OK ? $response['error'] = $result['error'] : $response = $result['data'];
        return response()->json($response, $result['status']);
    }

  /**
   * Get list consultant farmer find advisor
   *
   * @param GetConsultantRequestByAdvisor $request
   * @return \Illuminate\Http\JsonResponse
   */
    public function listFarmerRequest(GetConsultantRequestByAdvisor $request)
    {
        try {
            $result = $this->consultantService->listRequestByType($request);
            $status = Response::HTTP_OK;
        } catch (Throwable $e) {
            if ($e instanceof ModelNotFoundException) {
                $result = [
                    'error' => __('messages.data_not_found')
                ];
                $status = Response::HTTP_NOT_FOUND;
            } else {
                $result = [
                    'error' => $e->getMessage()
                ];
                $status = Response::HTTP_INTERNAL_SERVER_ERROR;
            }
        }
        return response()->json($result, $status);
    }

  /**
   * Get list consultant farmer find advisor
   *
   * @param GetConsultantRecruitByAdvisor $request
   * @return \Illuminate\Http\JsonResponse
   */
    public function listFarmerRecruit(GetConsultantRecruitByAdvisor $request)
    {
        $type = 0;
        try {
            $result = $this->consultantService->listFarmerRecruit($request, $type);
            $status = Response::HTTP_OK;
        } catch (Throwable $e) {
            if ($e instanceof ModelNotFoundException) {
                $result = [
                    'error' => __('messages.data_not_found')
                ];
                $status = Response::HTTP_NOT_FOUND;
            } else {
                $result = [
                    'error' => $e->getMessage()
                ];
                $status = Response::HTTP_INTERNAL_SERVER_ERROR;
            }
        }
        return response()->json($result, $status);
    }

  /**
   * Confirm request consultant
   *
   * @param ConfirmConsultantRequest $request
   * @return \Illuminate\Http\JsonResponse
   */
    public function confirm(ConfirmConsultantRequest $request)
    {
        $result = $this->consultantService->confirmRequest($request);
        return response()->json($result, $result['status']);
    }
}
