<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ChairResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
    /*    return [
            'id'=>$this->id,
            'class'=>$this->class,
            'grade'=>$this->grade,
            'status'=> $this->status,
            'invitation_id'=> $this->invitation_id,
        ];*/

        return parent::toArray($request);
    }
}
