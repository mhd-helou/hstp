<?php

namespace App\Http\Controllers;

use App\Mail\SendMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class MailController extends Controller
{
    //
    public function sendEmail()
    {
        $title = 'Greetings Mr, And HappyEid!';
        $customer_details = [
            'name' => 'AlaaMhanna',
            'address' => 'TartusCity',
            'phone' => '0932131321',
            'email' => 'mohammed1helou@gmail.com'
        ];

        $sendmail = Mail::to($customer_details['email'])->send(new SendMail($title, $customer_details));
        if (!empty($sendmail)) {
            return response()->json(['message' => 'Mail Sent Sucssfully'], 200);
        }else{
            return response()->json(['message' => 'Mail Sent fail'], 400);
        }
    }
}
