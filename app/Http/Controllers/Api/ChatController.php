<?php

namespace App\Http\Controllers\Api;

use DB; 
use Auth;
use Throwable;
use App\Models\User;
use Illuminate\Http\Request;
use App\Services\ChatService;
use Illuminate\Http\Response;
use Tymon\JWTAuth\Facades\JWTAuth;
use App\Http\Controllers\Controller;
use App\Services\UploadImageService;
use App\Http\Requests\UploadMessageRequest;
use App\Exceptions\ObjectNotFoundException;

class ChatController extends Controller
{
    /**
     * Create variable settingService
     *
     * @var $chatService
     */
    protected $chatService;

    /**
     * __construct
     *
     * @param ChatService $chatService - callback object
     */
    public function __construct(ChatService $chatService) 
    {
        $this->chatService = $chatService;
    }

  /**
   * Info Chat Detail
   *
   * @param Request $request
   * @param $channel
   * @return \Illuminate\Http\JsonResponse
   * @throws ObjectNotFoundException
   */
    public function detailInfo(Request $request, $channel)
    {   
        $result = $this->chatService->detailInfo($request, $channel);
        return response()->json($result, $result['status']);
    }

    /**
   * Detail Chat
   *
   * @param Request $request
   * @param $channel
   * @return \Illuminate\Http\JsonResponse
   * @throws ObjectNotFoundException
   */
  public function detailChat(Request $request, $channel)
  {   
      $result = $this->chatService->detailChat($request, $channel); 
      return response()->json($result, $result['status']);
  }


  /**
   * Get Channel
   * @param Request $request
   * @param $userId
   * @param $consultantId
   * @return \Illuminate\Http\JsonResponse
   * @throws ObjectNotFoundException
   */
    public function channel(Request $request, $userId, $consultantId)
    {   
        $result = $this->chatService->channel($request, $userId, $consultantId);
        return response()->json($result, $result['status']);
    }

  /**
   * Generate token
   *
   * @param Request $request
   * @return \Illuminate\Http\JsonResponse
   */
    public function generateToken(Request $request)
    {
        $result = $this->chatService->generateToken($request);
        return response()->json($result, $result['status']);
    }

  /**
   * Store chat message
   *
   * @param Request $request
   * @return \Illuminate\Http\JsonResponse
   */

    public function webhook(Request $request)
    {
        $result = $this->chatService->webhookChat($request);
        return response()->json($result, $result['status']);
    }

  /**
   * Store file message
   *
   * @param UploadMessageRequest $request
   * @param $channel
   * @param UploadImageService $imageService
   * @return \Illuminate\Http\JsonResponse
   * @throws ObjectNotFoundException
   */
    public function upload(UploadMessageRequest $request, $channel, UploadImageService $imageService)
    {   
        $message = $request->message ?? '';
        $type = $request->type ?? '';
        $imageCompress = [];
        if ($request->hasFile('message') && $type == 'image') {
            $imageCompress = [
                'name' => $message->getClientOriginalName(),
                'file' => $imageService->uploadImageChat($message),
            ];
        }
        $result = $this->chatService->upload($request, $channel, $imageCompress);
        return response()->json($result, $result['status']);
    } 

  /**
   *  Get list chat of user
   *
   * @param Request $request
   * @return \Illuminate\Http\JsonResponse
   */

    public function list(Request $request)
    {
        $result = $this->chatService->getListChat($request);
        return response()->json($result, $result['status']);
    }

  /**
   * Update status chat
   *
   * @param Request $request
   * @param $channel
   * @return \Illuminate\Http\JsonResponse
   * @throws ObjectNotFoundException
   */

    public function status(Request $request , $channel)
    {
        $result = $this->chatService->status($request, $channel);
        return response()->json($result, $result['status']);
    }

  /**
   * Read message message
   *
   * @param Request $request
   * @param $channel
   * @return \Illuminate\Http\JsonResponse
   * @throws ObjectNotFoundException
   */
    public function read(Request $request, $channel)
    { 
        $result = $this->chatService->read($request, $channel);
        return response()->json($result, $result['status']);
    }

    /**
     * Get count unread message
     * Throws ObjectNotFoundException
     */
    public function countUnReadMessage(Request $request)
    {
        $result = $this->chatService->countUnReadMessage($request);
        return response()->json($result, $result['status']);
    }
}
