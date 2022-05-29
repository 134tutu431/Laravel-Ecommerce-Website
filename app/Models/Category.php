<?php

namespace App\Models;

use App\Http\Service\Category\CategoryService;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{

    use HasFactory;
    protected $fillable = [
        'name',
        'parent_id',
        'description',
        'content',
        'slug',
        'active'
    ];

    public function product(){
        return $this->hasMany(Product::class,'category_id','id');
    }

    public function scopeSearch($query)
    {
        if(request()->input('search')){
            $query=CategoryService::search(request());
        }
        return $query;
    }
}
