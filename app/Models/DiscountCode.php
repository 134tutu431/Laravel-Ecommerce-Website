<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class DiscountCode extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'code',
        'feature',
        'discount',
        'active',
        'quantity',
        'start_date',
        'expiry_date'
    ];
    public function scopeSearch($query)
    {
        if(request()->input('search')){
            $query=DiscountCode::where('code','like','%'.request()->input('search').'%');
        }
        return $query;
    }
}
