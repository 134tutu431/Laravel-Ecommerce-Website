<?php

namespace App\Models;

use App\Http\Service\Product\ProductService;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'category_id',
        'manufacturer_id',
        'price',
        'price_sale',
        'quantity',
        'description',
        'content',
        'specification',
        'thumb',
        'slug',
        'active',
        'views'
    ];
    public function category(){
        return $this->hasOne(Category::class,'id','category_id')->withDefault(['name'=>'']);
    }
    public function manufacturer(){
        return $this->hasOne(Manufacturer::class,'id','manufacturer_id')->withDefault(['name'=>'']);
    }
    public function productimage(){
        return $this->hasMany(ProductImage::class,'id','product_id')->withDefault(['thumb'=>'']);
    }
    public function comment(){
        return $this->hasMany(Comment::class,'id','product_id');
    }
    public function scopeSearch($query)
    {
        if(request()->input('search')){
            $query=ProductService::search(request());
        }
        return $query;
    }
}
