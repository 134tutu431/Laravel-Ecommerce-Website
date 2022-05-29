<?php
use App\Http\Controllers\Admin\ArticleController;
use App\Http\Controllers\Admin\CutomerController;
use App\Http\Controllers\Admin\DiscountCodeController;
use App\Http\Controllers\Admin\ManufacturerController;
use App\Http\Controllers\Admin\OrderController;
use App\Http\Controllers\Admin\SliderController;
use App\Http\Controllers\Admin\UploadController;
use App\Http\Controllers\BlogController;
use App\Http\Controllers\CartController;
use App\Http\Controllers\CatalogController;
use App\Http\Controllers\CheckOutController;
use App\Http\Controllers\CommentController;
use App\Http\Controllers\FacebookController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\MailController;
use App\Http\Controllers\Admin\StatisticalController;
use App\Http\Controllers\User\AuthUserController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\AuthController;
use App\Http\Controllers\Admin\MainController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\ProductController;
Route::prefix('admin')->group(function (){
    Route::get('login',[AuthController::class,'index'])->name('login');
    Route::post('login',[AuthController::class,'checkLogin']);
});
    Route::get('admin',[MainController::class,'index']);
Route::prefix('admin')->middleware('admin.login')->group(function (){
        Route::get('',[MainController::class,'index'])->name('admin');
        #Statistical
        Route::post('normal',[StatisticalController::class,'index']);
        Route::post('filter',[StatisticalController::class,'filter']);
        Route::post('filter-by',[StatisticalController::class,'filter_by']);
        #Logout
        Route::get('logout',[AuthController::class,'logout'])->name('logout');
        #Profile
        Route::get('profile/{id}',[AuthController::class,'profile'])->name('profile');
        Route::post('profile/{id}',[AuthController::class,'updateProfile'])->name('update.profile');
        #Category
        Route::prefix('category')->group(function (){
            Route::get('/',function (){
                return redirect()->route('list_cate');
            });
            Route::get('add',[CategoryController::class,'add']);
            Route::post('store',[CategoryController::class,'store']);
            Route::get('list',[CategoryController::class,'index'])->name('list_cate');
            Route::get('edit/{category}',[CategoryController::class,'show']);
            Route::post('edit/{category}',[CategoryController::class,'update']);
            Route::delete('remove',[CategoryController::class,'remove']);
        });

        #Products
        Route::prefix('products')->group(function (){
            Route::get('/',function (){
                return redirect()->route('list_pro');
            });
            Route::get('add',[ProductController::class,'add']);
            Route::post('add',[ProductController::class,'store']);
            Route::get('list',[ProductController::class,'index'])->name('list_pro');
            Route::get('edit/{product}',[ProductController::class,'show']);
            Route::get('delimage/{id}',[ProductController::class,'delImage']);
            Route::post('edit/{product}',[ProductController::class,'update']);
            Route::delete('destroy',[ProductController::class,'destroy']);
        });

        #Sliders
        Route::prefix('sliders')->group(function (){
            Route::get('/',function (){
                return redirect()->route('list_sli');
            });
            Route::get('add',[SliderController::class,'add']);
            Route::post('add',[SliderController::class,'store']);
            Route::get('list',[SliderController::class,'index'])->name('list_sli');
            Route::get('edit/{slider}',[SliderController::class,'show']);
            Route::post('edit/{slider}',[SliderController::class,'update']);
            Route::delete('destroy',[SliderController::class,'destroy']);
        });

        #Artiles
        Route::prefix('articles')->group(function (){
            Route::get('/',function (){
                return redirect()->route('list_article');
            });
            Route::get('add',[ArticleController::class,'add']);
            Route::post('add',[ArticleController::class,'store']);
            Route::get('list',[ArticleController::class,'index'])->name('list_article');
            Route::get('edit/{article}',[ArticleController::class,'edit']);
            Route::post('edit/{article}',[ArticleController::class,'update']);
            Route::delete('destroy',[ArticleController::class,'destroy']);
        });

        #Customers
        Route::prefix('customers')->group(function (){
            Route::get('/',function (){
                return redirect()->route('list_customer');
            });
            Route::get('add',[CutomerController::class,'add']);
            Route::post('add',[CutomerController::class,'store']);
            Route::get('list',[CutomerController::class,'index'])->name('list_customer');
            Route::get('edit/{user}',[CutomerController::class,'edit']);
            Route::post('edit/{user}',[CutomerController::class,'update']);
            Route::delete('destroy',[CutomerController::class,'destroy']);
        });

        #Manufactures
        Route::prefix('manufacturers')->group(function (){
            Route::get('/',function (){
                return redirect()->route('list_manufacturer');
            });
            Route::get('add',[ManufacturerController::class,'create']);
            Route::post('add',[ManufacturerController::class,'store']);
            Route::get('list',[ManufacturerController::class,'index'])->name('list_manufacturer');
            Route::get('edit/{manufacturer}',[ManufacturerController::class,'edit']);
            Route::post('edit/{manufacturer}',[ManufacturerController::class,'update']);
            Route::delete('destroy',[ManufacturerController::class,'destroy']);
        });

        #Orders
        Route::prefix('orders')->group(function (){
            Route::get('/',[OrderController::class,'index']);
            Route::get('edit/{order_id}',[OrderController::class,'edit']);
            Route::post('edit/{order_id}',[OrderController::class,'update']);
            Route::get('print-order/{order_id}',[OrderController::class,'print_order']);
            Route::delete('destroy',[OrderController::class,'destroy']);
            Route::get('list-cancel',[OrderController::class,'list_cancel']);
            Route::post('list-cancel',[OrderController::class,'approve_cancel']);
        });

        #Comments
        Route::prefix('comments')->group(function (){
            Route::get('/',[CommentController::class,'index']);
            Route::delete('destroy',[CommentController::class,'destroy']);
            Route::post('approve-comment',[CommentController::class,'approve_comment']);
            Route::post('reply-comment',[CommentController::class,'reply_comment']);
        });

        #Discount_codes
        Route::prefix('discount-codes')->group(function (){
            Route::get('/',function (){
                return redirect()->route('list_discount');
            });
            Route::get('add',[DiscountCodeController::class,'create']);
            Route::post('add',[DiscountCodeController::class,'store']);
            Route::get('list',[DiscountCodeController::class,'index'])->name('list_discount');
            Route::post('list',[DiscountCodeController::class,'search']);
            Route::get('edit/{id}',[DiscountCodeController::class,'edit']);
            Route::post('edit/{id}',[DiscountCodeController::class,'update']);
            Route::delete('destroy',[DiscountCodeController::class,'destroy']);
        });

        #Upload
        Route::post('upload/services',[UploadController::class,'store']);
});
Route::prefix('/')->group(function (){
    #Home
    Route::get('', function (){
        return redirect()->route('home');
    });
    Route::get('home',[HomeController::class,'index'])->name('home');

    #Blog
    Route::get('blog',[BlogController::class,'index']);
    Route::get('blog/{article}',[BlogController::class,'show']);

    #Catalog
    Route::get('catalog',[CatalogController::class,'index']);
//    Route::post('catalog/type',[CatalogController::class,'type']);
    Route::get('catalog/{product}',[CatalogController::class,'show']);
    Route::post('catalog/show-modal-cart',[CatalogController::class,'show_modal_cart']);
    Route::post('catalog/count-cart',[CatalogController::class,'count_cart']);
    Route::post('product/delete',[CatalogController::class,'delete']);
//    Route::get('product/sort',[CatalogController::class,'sort']);

    #Comment
    Route::post('/autoload-comment',[CommentController::class,'autoload_comment']);
    Route::post('/send-comment',[CommentController::class,'send_comment']);

    #Login
    Route::get('login',[AuthUserController::class,'formLogin']);
    Route::post('login',[AuthUserController::class,'login']);

    #Signup
    Route::get('signup',[AuthUserController::class,'create']);
    Route::post('signup',[AuthUserController::class,'store']);

    Route::middleware('user.login')->group(function (){
        Route::get('logout',[AuthUserController::class,'logout']);

        #Cart
        Route::post('add-cart-ajax',[CartController::class,'add_cart_ajax']);
        Route::post('/catalog/add-cart',[CartController::class,'index']);
        Route::get('show-cart',[CartController::class,'show_cart'])->name('cart');
        Route::get('delete-cart/{rowId}',[CartController::class,'delete_cart']);
        Route::post('update-cart',[CartController::class,'update_cart']);
//        Route::post('cart-update',[CartController::class,'cart_update']);

        #Checkout
        Route::get('checkout',[CheckOutController::class,'index']);
        Route::post('checkout',[CheckOutController::class,'create']);
        Route::post('check-discount',[DiscountCodeController::class,'check_discount']);
        Route::get('checkout/paypal',[CheckOutController::class,'checkoutpaypal']);
        Route::get('/check-out-success',[CheckOutController::class,'checkout_paypal_success']);

        #HistoryOrder
        Route::get('history',[OrderController::class,'history']);
        Route::get('history/detail/{id}',[OrderController::class,'history_detail']);
        Route::post('history/detail/{id}',[CutomerController::class,'updateInfoOrder']);
        Route::post('history/cancel-order',[OrderController::class,'cancel_order']);

        #Profile
        Route::get('profile',[AuthUserController::class,'profile']);
        Route::post('profile',[AuthUserController::class,'update_profile']);
        Route::get('edit-pass',[AuthUserController::class,'edit_pass']);
        Route::post('edit-pass',[AuthUserController::class,'update_pass']);
    });
    #Contacts
    Route::get('contacts',[HomeController::class,'contact']);

    #FAQ
    Route::get('faq',[HomeController::class,'faq']);

    #LoginwithFacebook
    Route::prefix('facebook')->name('facebook.')->group( function(){
        Route::get('auth', [FacebookController::class, 'loginUsingFacebook'])->name('facebook.login');
        Route::get('callback', [FacebookController::class, 'callbackFromFacebook'])->name('callback');
    });
    #Mail
    Route::get('recover-pass',[MailController::class,'recover_pass']);
    Route::post('recover-pass',[MailController::class,'mail_recover_pass']);
    Route::get('update-new-pass',[MailController::class,'update_new_pass']);
    Route::post('update-new-pass',[MailController::class,'change_pass']);
});

