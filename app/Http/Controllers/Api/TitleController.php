<?php

namespace App\Http\Controllers\Api;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreTitleRequest;
use App\Http\Resources\TitleResource;
use App\Models\Title;
use Illuminate\Http\Request;

class TitleController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //return TitleResource::collection(Title::all());
        return TitleResource::collection(Title::select('id', 'name', 'lang')->paginate(2,['*'], 'page'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreTitleRequest $request)
    {
        return new TitleResource(Title::create($request->validated()));
    }

    /**
     * Display the specified resource.
     */
    public function show($id)
    {
        $title = Title::find($id);
        if (!$title) { abort(404, 'Title not found'); }
        return new TitleResource($title);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StoreTitleRequest $request, Title $title)
    {

        $title->update($request->validated());
        return new TitleResource($title);

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Title $title)
    {
      $title->delete();
      return response()->noContent();
    }
}
