<?php

namespace App\Http\Controllers\Api;

use Throwable;
use App\Models\Wallet;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Services\WalletService;
use App\Http\Controllers\Controller;
use App\Http\Requests\UpdatePaymentRequest;
use App\Http\Requests\ApplicationPaymentRequest;

class WalletController extends Controller
{
    protected $walletService;

    /**
     * __construct
     *
     * @param WalletService  $walletService  - callback object
     */
    public function __construct(WalletService $walletService)
    {
        $this->walletService  = $walletService;
    }

  /**
   *  Add new payment info for user
   *
   * @param UpdatePaymentRequest $request
   * @param $walletId
   * @return \Illuminate\Http\JsonResponse
   * @throws \App\Exceptions\ObjectNotFoundException
   */
    public function update(UpdatePaymentRequest $request, $walletId)
    {
        $result = $this->walletService->update($request, $walletId);
        return $result;
    }

  /**
   * Get Payment info for User
   *
   * @param Request $request
   * @return \Illuminate\Http\JsonResponse
   * @throws \App\Exceptions\ObjectNotFoundException
   */
    public function info(Request $request)
    {
        $result = $this->walletService->info($request);
        return response()->json($result, $result['status']);
    }

  /**
   * Create transfer application
   *
   * @param ApplicationPaymentRequest $request
   * @return \Illuminate\Http\JsonResponse
   * @throws \App\Exceptions\ObjectNotFoundException
   */
    public function application(ApplicationPaymentRequest $request)
    {
        $result = $this->walletService->application($request);
        return response()->json($result, $result['status']);
    }
}
