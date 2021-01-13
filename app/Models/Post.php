<?php

namespace App\Models;
use App\Models\User;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

   protected $fillable = [
        'title',
        'situation',
        'sugestion'
    ];

    public function autor()
    {
        return $this->belongsTo(User::class,'author','id');
    }


}
