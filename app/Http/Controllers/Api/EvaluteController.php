<?php

namespace App\Http\Controllers\Api;

use Throwable;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Services\PayPayService;
use App\Services\EvaluteService;
use App\Http\Controllers\Controller;
use App\Http\Requests\EvaluteReviewRequest;
use App\Http\Requests\EvaluteCancelRequest;

class EvaluteController extends Controller
{
    /**
     * Create variable settingService
     *
     * @var $evaluteService
     * @var $paypayService
     */
    protected $evaluteService;
    protected $paypayService;

    /**
     * __construct
     *
     * @param EvaluteService $evaluteService - callback object
     * @param PayPayService  $paypayService  - callback object
     */
    public function __construct(EvaluteService $evaluteService, PayPayService $paypayService)
    {
        $this->evaluteService = $evaluteService;
        $this->paypayService  = $paypayService;
    }

  /**
   * Store review & transaction paypay
   *
   * @param EvaluteReviewRequest $request
   * @return \Illuminate\Http\JsonResponse
   */
    public function review(EvaluteReviewRequest $request)
    {
        $result = $this->evaluteService->evaluteExecute($request);
        return response()->json($result,$result['status']);
    }

  /**
   * Transaction cancel paypay
   *
   * @param EvaluteCancelRequest $request
   * @return \Illuminate\Http\JsonResponse
   */
    public function cancel(EvaluteCancelRequest $request)
    {
        try {
            $result = $this->paypayService->cancelPaymentTransaction($request);
            $status = Response::HTTP_OK;
        } catch (Throwable $e) {
            $result = [
                'error' => $e->getMessage()
            ];
            $status = Response::HTTP_INTERNAL_SERVER_ERROR;
        }

        return response()->json($result, $status);
    }

  /**
   * Webhook paypay
   *
   * @param Request $request
   * @return void
   */
    public function webhook(Request $request)
    {
        $this->paypayService->webhookPaymentTransaction($request);
    }
}
