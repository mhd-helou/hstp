<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Chair extends Model
{
    use HasFactory;
    protected $fillable = ['class','grade','status', 'invitation_id'];
    public function invitation()
    {
        return $this->belongsTo(Invitation::class)->withDefault([
            'full_name' => ''
        ]);
    }
}
