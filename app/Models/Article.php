<?php

namespace App\Models;

use App\Http\Service\Article\ArticleService;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    use HasFactory;
    protected $fillable = [
        'name',
        'description',
        'content',
        'thumb',
        'slug',
        'active',
        'views'
    ];
    public function scopeSearch($query)
    {
        if(request()->input('search')){
            $query=ArticleService::search(request());
        }
        return $query;
    }

}
