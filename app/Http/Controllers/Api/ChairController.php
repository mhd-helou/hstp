<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Requests\StoreChairRequest;
use App\Http\Resources\ChairResource;
use App\Models\Chair;
use Illuminate\Http\Request;

class ChairController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //return ChairResource::collection(Chair::all());
        return ChairResource::collection(Chair::with('invitation')->get());

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreChairRequest $request)
    {
        return new ChairResource(Chair::create($request->validated()));
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $chair = Chair::find($id);
        if (!$chair) { abort(404, 'Chair not found'); }
        return new ChairResource($chair);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StoreChairRequest $request, Chair $chair)
    {

        $chair->update($request->validated());
        return new ChairResource($chair);

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Chair $chair)
    {
        $chair->delete();
        return response()->noContent();
    }
}
