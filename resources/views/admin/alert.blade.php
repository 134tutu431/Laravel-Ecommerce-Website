<?php
 use Illuminate\Support\Facades\Session
?>
@if ($errors->any())
    <div class="alert alert-danger alert-dismissible ">
            @foreach ($errors->all() as $error)
                {{ $error }}<br>
            @endforeach
                <button type="button" class="close" aria-label="Close">
                    <span aria-hidden="true" style="color: white"><i style="color: white" class="fas fa-times"></i></span>
                </button>
    </div>
@endif
@if(\Illuminate\Support\Facades\Session::has('error'))
    <div class="alert alert-danger" role="alert">
            {{\Illuminate\Support\Facades\Session::get('error')}}
        <button type="button" id="close" class="close">
            <span aria-hidden="true">&times;</span>
        </button>
    </div>
@endif
@if(\Illuminate\Support\Facades\Session::has('success'))
    <div class="alert alert-success" role="alert">
        {{\Illuminate\Support\Facades\Session::get('success')}}
        <button type="button" id="close" class="close">
            <span aria-hidden="true"><i style="color: white" class="fas fa-times"></i></span>
        </button>
    </div>
@endif
