<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
class Oder extends Model
{
    use HasFactory;
    protected $fillable = [
        'customer_id',
        'payment_id',
        'address',
        'remark',
        'total_price',
        'status',
        'discount',
        'code',
        'cancel_status',
        'cancel_reason'
    ];
    public function customer(){
        return $this->hasOne(User::class,'id','customer_id');
    }
    public function payment(){
        return $this->hasOne(Payments::class,'id','customer_id');
    }
    public function oderDetail(){
        return $this->hasMany(OderDetails::class,'id','oder_id');
    }
    public function discount_code(){
        return $this->hasOne(DiscountCode::class,'code','discount');
    }
}
