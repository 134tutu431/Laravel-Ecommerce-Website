<?php

namespace App\Models;

use App\Http\Service\Slider\SliderService;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Slider extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'url',
        'description',
        'thumb',
        'sort_by',
        'active'
    ];
    public function scopeSearch($query)
    {
        if(request()->input('search')){
            $query=SliderService::search(request());
        }
        return $query;
    }
}
