<?php

namespace App\Models;

use App\Http\Service\Manufacturer\ManufacturerService;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Manufacturer extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'description',
        'slug',
        'logo',
        'active'
    ];
    public function product(){
        return $this->hasMany(Product::class,'manufacturer_id','id');
    }
    public function scopeSearch($query)
    {
        if(request()->input('search')){
            $query=ManufacturerService::search(request());
        }
        return $query;
    }
}
