<?php

namespace App\Http\Controllers\Api;

use Throwable;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Http\Controllers\Controller;
use App\Services\ConsultantItemService;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class ConsultantItemController extends Controller
{
    /**
     * Create variable settingService
     * 
     * @var $consultantItemService
     */
    protected $consultantItemService;

    /**
     * __construct
     *
     * @param ConsultantItemService $consultantItemService - callback object
     */
    public function __construct(ConsultantItemService $consultantItemService) 
    {
        $this->consultantItemService = $consultantItemService;
    }

  /**
   * Get list consultant items
   * 
   * @return \Illuminate\Http\JsonResponse
   */
    public function list()
    {
        try {
            $result = $this->consultantItemService->getConsultantItemsService();
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
