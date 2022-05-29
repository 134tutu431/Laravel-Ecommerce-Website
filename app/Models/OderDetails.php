<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class OderDetails extends Model
{
    use HasFactory;
    protected $fillable = [
        'oder_id',
        'product_id',
        'product_name',
        'product_price',
        'sale_quantity',
    ];
    public function product(){
        return $this->hasOne(Product::class,'id','product_id');
    }
}
