<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'content',
        'product_id',
        'status',
        'parent_id',
        'reply_status'
    ];
    public function product(){
        return $this->hasOne(Product::class,'id','product_id')->withDefault(['name'=>'']);
    }
    public function scopeSearch($query)
    {
        if(request()->input('search')){
            $query=Comment::where('name','like','%'.request()->input('search').'%');
        }
        return $query;
    }
}
