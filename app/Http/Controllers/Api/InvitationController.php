<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Controllers\MailController;
use App\Http\Requests\StoreCategoryRequest;
use App\Http\Requests\StoreInvitationRequest;
use App\Http\Resources\CategoryResource;
use App\Http\Resources\InvitationResource;
use App\Mail\SendMail;
use App\Models\Category;
use App\Models\Invitation;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class InvitationController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {

        //return CategoryResource::collection(Category::all());
        return InvitationResource::collection(
            Invitation::with('category', 'title','chair')->paginate(2,['*'], 'page'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreInvitationRequest $request)
    {
        $email = $request->input('email');
        $full_name = $request->input('full_name');
        $sendEmail = new MailController();
        $sendEmail->sendEmail($request,$email,$full_name);
        return new InvitationResource(Invitation::create($request->validated()));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StoreInvitationRequest $request, Invitation $invitation)
    {

        $invitation->update($request->validated());
        return new InvitationResource($invitation);

    }

    /**
     * Display the specified resource.
     */
    public function show(Invitation $invitation)
    {
        return new InvitationResource($invitation);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Invitation $invitation)
    {
        $invitation->delete();
        return response()->noContent();
    }
}
