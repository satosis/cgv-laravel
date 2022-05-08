<?php

namespace App\Http\Controllers\Api;

use App\Services\UploadImageService;
use App\Services\UserService;
use Illuminate\Http\Response;
use Illuminate\Http\JsonResponse;
use App\Http\Controllers\Controller;
use App\Http\Requests\UpdateProfileRequest;
use App\Exceptions\ObjectNotFoundException;

class HomeController extends Controller
{
  /**
   * Info user
   *
   * @param UpdateProfileRequest $request
   * @param UserService $userService
   * @param UploadImageService $imageService
   * @return JsonResponse
   * @throws ObjectNotFoundException
   */
    public function info(UpdateProfileRequest $request, UserService $userService, UploadImageService $imageService)
    {
        $user = $request->user();
        if (!$user) {
            throw new ObjectNotFoundException(__('messages.user_not_found'));
        }

        $imageRequest = null;
        if ($request->hasFile('avatar')) {
            $imageRequest = $imageService->upload($request->avatar, true);
        }

        $result = $userService->updateFromUser($user, $request, $imageRequest);
        if ($result['status'] != Response::HTTP_OK) {
            return response()->json([
                'error' => __('messages.server_error'),
            ], $result['status']);
        }

        return response()->json([
            'user' => $result['data']['user'],
            'consultant_item' => $result['consultant_item'] ?? []
        ]);
    }
}
