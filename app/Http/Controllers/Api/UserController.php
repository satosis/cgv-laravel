<?php

namespace App\Http\Controllers\Api;

use Throwable;
use Illuminate\Http\Request;
use App\Services\UserService;
use Illuminate\Http\Response;
use App\Http\Controllers\Controller;
use App\Http\Requests\GetUserByTypeRequest;
use Illuminate\Database\Eloquent\ModelNotFoundException;

class UserController extends Controller
{
    /**
     * Create variable settingService
     *
     * @var $userService
     */
    protected $userService;

    /**
     * __construct
     *
     * @param UserService $userService - callback object
     */
    public function __construct(UserService $userService)
    {
        $this->userService = $userService;
    }

  /**
   *  Get list consultant items
   *
   * @param GetUserByTypeRequest $request
   * @return \Illuminate\Http\JsonResponse
   */
    public function list(GetUserByTypeRequest $request)
    {
        $user_type = $request->user_type;
        $consultant_type = $request->consultant_type;
        try {
            $result = $this->userService->getUserTypeConsultantItemService($user_type, $consultant_type);
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
