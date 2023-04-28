<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Invitation extends Model
{
    use HasFactory;
    protected $fillable = ['full_name', 'whatsapp_num', 'is_whatsapp',
                           'email', 'sec_email', 'authority',
                           'position', 'is_attendant', 'req_status',
                           'lang', 'date','honor_title', 'title_id', 'category_id', 'chair_id'];
    public function chair(){
        return $this->belongsTo(Chair::class);
    }
    public function category(){
        return $this->belongsTo(Category::class);
    }
    public function title(){
        return $this->belongsTo(Title::class);
    }
}
