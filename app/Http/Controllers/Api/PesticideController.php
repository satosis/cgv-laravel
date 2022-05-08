<?php

namespace App\Http\Controllers\Api;

use Illuminate\Http\Request;
use App\Services\PesticideService;
use App\Http\Controllers\Controller;

class PesticideController extends Controller
{
    protected $pesticideService;

    /**
     * __construct
     *
     * @param PesticideService  $pesticideService  - callback object
     */
    public function __construct(PesticideService $pesticideService)
    {
      $this->pesticideService  = $pesticideService;
    }

    /**
     * Check if keyword exists
     *
     * @param Request $request
     * @return mixed
     */
    public function index(Request $request)
    {
      $result = $this->pesticideService->check($request);
      return $result;
    }

}
