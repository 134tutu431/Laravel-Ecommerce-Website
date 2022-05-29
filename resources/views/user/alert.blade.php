<?php
use Illuminate\Support\Facades\Session
?>
@if ($errors->any())
    <div class="alert alert-danger " role="alert">
        <button type="button" class="close" >
            <span aria-hidden="true" >&times;</span>
        </button>
        @foreach ($errors->all() as $error)
            {{ $error }}<br>
        @endforeach

    </div>
@endif
@if(\Illuminate\Support\Facades\Session::has('error'))
    <div class="alert alert-danger" role="alert">
        {{\Illuminate\Support\Facades\Session::get('error')}}
        <button type="button" class="close">
            <span aria-hidden="true" style="color: black">&times;</span>
        </button>
    </div>
@endif
@if(\Illuminate\Support\Facades\Session::has('success'))
    <div class="alert alert-success" role="alert">
        {{\Illuminate\Support\Facades\Session::get('success')}}
        <button type="button"  class="close">
            <span aria-hidden="true" style="color: black">&times;</span>
        </button>
    </div>
@endif
