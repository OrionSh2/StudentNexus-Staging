<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Student extends Model
{
    protected $fillable = [
        'name',
        'student_id',
        'gender',
        'ethnicity',
        'email',
        'phone',
    ];
}
