<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreInvitationRequest;
use App\Mail\SendMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class MailController extends Controller
{
    //
    public function sendEmail(StoreInvitationRequest $request, $email, $full_name)
    {

        $title = 'Greetings, This email format is being prepared by the DEVVELOPER';
        $customer_details = [
            'name' => $full_name,
            'address' => 'KSA',
            'phone' => '0932131321',
            'email' => $email
        ];

        $sendmail = Mail::to($customer_details['email'])->send(new SendMail($title, $customer_details));
        if (!empty($sendmail)) {
            return response()->json(['message' => 'Mail Sent Sucssfully'], 200);
        }else{
            return response()->json(['message' => 'Mail Sent fail'], 400);
        }
    }
}
