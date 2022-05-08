<?php

namespace App\Http\Controllers\Api;

use Throwable;
use Illuminate\Http\Response;
use App\Http\Controllers\Controller;
use App\Services\ConsultantTypeService;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class ConsultantTypeController extends Controller
{
    /**
     * Create variable settingService
     * 
     * @var $consultantTypeService
     */
    protected $consultantTypeService;

    /**
     * __construct
     *
     * @param ConsultantItemService $consultantTypeService - callback object
     */
    public function __construct(ConsultantTypeService $consultantTypeService) 
    {
        $this->consultantTypeService = $consultantTypeService;
    }

  /**
   * Get list consultant items
   * 
   * @return \Illuminate\Http\JsonResponse
   */
    public function list()
    {
        try {
            $result = $this->consultantTypeService->getConsultantTypeService();
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

}
