<?php

namespace App\Http\Controllers\Api;

use Throwable;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Services\RatingService;
use App\Http\Controllers\Controller;

class RatingController extends Controller
{
    protected $ratingService;

    /**
     * __construct
     *
     * @param RatingService  $ratingService  - callback object
     */
    public function __construct(RatingService $ratingService)
    {
        $this->ratingService  = $ratingService;
    }

  /**
   * List Review For Farmer
   * 
   * @param Request $request
   * @param $id
   * @return \Illuminate\Http\JsonResponse
   */
    public function reviewAdvisor(Request $request, $id)
    {
        $result = $this->ratingService->listReview($request, $id);
        return response()->json($result);
    }

}
