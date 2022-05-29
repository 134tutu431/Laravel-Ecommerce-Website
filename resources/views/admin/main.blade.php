
<!DOCTYPE html>
<html lang="en">
<head>
    @include('admin.head')
</head>
<style>

    .page-item.active .page-link
    {
        background-color:#17a2b8;
        border-color:#17a2b8
    }
    .pagination > li > a
    {
        background-color: white;
        color: #17a2b8;
    }
    .display-img img{
        margin-top: 10px;
        width: 100%;
        height: 250px;
    }
    .del{
    }
    li{
        list-style-type: none ;
    }
    .os-theme-dark>.os-scrollbar>.os-scrollbar-track>.os-scrollbar-handle, .os-theme-light>.os-scrollbar>.os-scrollbar-track>.os-scrollbar-handle, .os-theme-dark>.os-scrollbar>.os-scrollbar-track, .os-theme-light>.os-scrollbar>.os-scrollbar-track {
        border-radius: 10px;
    }
</style>
<body class="hold-transition sidebar-mini layout-fixed sidebar-collapse">
<div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="/admin" class="nav-link">Home</a>
            </li>
            <li class="nav-item d-none d-sm-inline-block">
                <a href="#" class="nav-link">Contact</a>
            </li>
        </ul>
        <!-- Right navbar links -->
        <ul class="navbar-nav ml-auto">
            <!-- Navbar Search -->
            <li class="nav-item">
                <a class="nav-link" data-widget="navbar-search" href="#" role="button">
                    <i class="fas fa-search"></i>
                </a>
                <div class="navbar-search-block">
                    <form class="form-inline">
                        <div class="input-group input-group-sm">
                            <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                            <div class="input-group-append">
                                <button class="btn btn-navbar" type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
                                <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                                    <i class="fas fa-times"></i>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                    <i class="fas fa-expand-arrows-alt"></i>
                </a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle " data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user-alt nav-icon"></i></a>
                <div class="dropdown-menu dropdown-menu-md-right">
                    <a class="dropdown-item" href="/admin/profile/{{auth()->id()}}"><i style="padding-right: 10px" class="fas fa-user">   </i> Profile</a>
                    <a class="dropdown-item" href="#"> <i style="padding-right: 10px" class="fas fa-cog">   </i> Setting</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="{{route('logout')}}"><i style="padding-right: 10px" class="fas fa-sign-out-alt"></i>Logout</a>
                </div>
            </li>

        </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
        <!-- Brand Logo -->
        <a href="/admin" class="brand-link">
            <img src="@if(\Illuminate\Support\Facades\Auth::user()->avatar!=null)
                {{\Illuminate\Support\Facades\Auth::user()->avatar}}
            @else
                /template/avatar/avatar.png
            @endif
                " alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
            <span class="brand-text font-weight-light">AdminLTE 3</span>
        </a>

        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar user (optional) -->
            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="image">
                    <img src="@if(\Illuminate\Support\Facades\Auth::user()->avatar!=null)
                    {{\Illuminate\Support\Facades\Auth::user()->avatar}}
                    @else
                        /template/avatar/avatar.png @endif" class="img-circle elevation-2" alt="User Image">
                </div>
                <div class="info">
                    <a href="#" class="d-block">{{\Illuminate\Support\Facades\Auth::user()->name}}</a>
                </div>
            </div>

            <!-- SidebarSearch Form -->
            <div class="form-inline">
                <div class="input-group" data-widget="sidebar-search">
                    <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                    <div class="input-group-append">
                        <button class="btn btn-sidebar">
                            <i class="fas fa-search fa-fw"></i>
                        </button>
                    </div>
                </div>
            </div>
            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                         with font-awesome or any other icon font library -->
                    <li class="nav-item {!! \Illuminate\Support\Facades\Request::path()=='admin'?'menu-open':'' !!}">
                        <a href="/admin" class="nav-link">
                            <i class="far fa-chart-bar nav-icon"></i>
                            <p>
                                Statistics
                            </p>
                        </a>
                    </li>

                    <li class="nav-item {!! \Illuminate\Support\Facades\Request::path()=='admin/category/list'?'menu-open':'' !!} {!! \Illuminate\Support\Facades\Request::path()=='admin/category/add'?'menu-open':'' !!}">
                        <a href="#" class="nav-link">
                            <i class="fas fa-bars nav-icon"></i>
                            <p>
                                Category
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item ">
                                <a href="/admin/category/add" class="nav-link {!! \Illuminate\Support\Facades\Request::path()=='admin/category/add'?'active':'' !!} ">
                                    <i class="fas fa-plus-square nav-icon"></i>
                                    <p>Add category </p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/category/list" class="nav-link {!! \Illuminate\Support\Facades\Request::path()=='admin/category/list'?'active':'' !!}">
                                    <i class="fas fa-list-alt nav-icon"></i>
                                    <p>List of categories</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item {!! \Illuminate\Support\Facades\Request::path()=='admin/manufacturers/list'?'menu-open':'' !!} {!! \Illuminate\Support\Facades\Request::path()=='admin/manufacturers/add'?'menu-open':'' !!}">
                        <a href="#" class="nav-link">
                            <i class="fas fa-industry nav-icon"></i>
                            <p>
                                Manufacturers
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item ">
                                <a href="/admin/manufacturers/add" class="nav-link {!! \Illuminate\Support\Facades\Request::path()=='admin/manufacturers/add'?'active':'' !!}">
                                    <i class="fas fa-plus-square nav-icon"></i>
                                    <p>Add Manufacturer</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/manufacturers/list" class="nav-link {!! \Illuminate\Support\Facades\Request::path()=='admin/manufacturers/list'?'active':'' !!}">
                                    <i class="fas fa-list-alt nav-icon"></i>
                                    <p>List of Manufacturers</p>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item {!! \Illuminate\Support\Facades\Request::path()=='admin/products/list'?'menu-open':'' !!} {!! \Illuminate\Support\Facades\Request::path()=='admin/products/add'?'menu-open':'' !!}">
                        <a href="#" class="nav-link">
                            <i class="fas fa-store-alt nav-icon"></i>
                            <p>
                                Products
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="/admin/products/add" class="nav-link {!! \Illuminate\Support\Facades\Request::path()=='admin/products/add'?'active':'' !!}">
                                    <i class="fas fa-plus-square nav-icon"></i>
                                    <p>Add Product</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/products/list" class="nav-link {!! \Illuminate\Support\Facades\Request::path()=='admin/products/list'?'active':'' !!}">
                                    <i class="fas fa-list-alt nav-icon"></i>
                                    <p>List of products</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item {!! \Illuminate\Support\Facades\Request::path()=='admin/sliders/list'?'menu-open':'' !!} {!! \Illuminate\Support\Facades\Request::path()=='admin/sliders/add'?'menu-open':'' !!}">
                        <a href="#" class="nav-link">
                            <i class="fas fa-images nav-icon"></i>
                            <p>
                                Sliders
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item">
                                <a href="/admin/sliders/add" class="nav-link {!! \Illuminate\Support\Facades\Request::path()=='admin/sliders/add'?'active':'' !!}">
                                    <i class="fas fa-plus-square nav-icon"></i>
                                    <p>Add Slider</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/sliders/list" class="nav-link {!! \Illuminate\Support\Facades\Request::path()=='admin/sliders/list'?'active':'' !!}">
                                    <i class="fas fa-list-alt nav-icon"></i>
                                    <p>List of Slider</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item {!! \Illuminate\Support\Facades\Request::path()=='admin/articles/list'?'menu-open':'' !!} {!! \Illuminate\Support\Facades\Request::path()=='admin/articles/add'?'menu-open':'' !!}">
                        <a href="#" class="nav-link">
                            <i class="fas fa-newspaper nav-icon"></i>
                            <p>
                                Articles
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item ">
                                <a href="/admin/articles/add" class="nav-link {!! \Illuminate\Support\Facades\Request::path()=='admin/articles/add'?'active':'' !!}">
                                    <i class="fas fa-plus-square nav-icon"></i>
                                    <p>Add Articles</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/articles/list" class="nav-link {!! \Illuminate\Support\Facades\Request::path()=='admin/articles/list'?'active':'' !!}">
                                    <i class="fas fa-list-alt nav-icon"></i>
                                    <p>List of Articles</p>
                                </a>
                            </li>
                        </ul>
                    </li>

                    <li class="nav-item {!! \Illuminate\Support\Facades\Request::path()=='admin/customers/list'?'menu-open':'' !!} {!! \Illuminate\Support\Facades\Request::path()=='admin/customers/add'?'menu-open':'' !!}">
                        <a href="#" class="nav-link">
                            <i class="fas fa-user nav-icon"></i>
                            <p>
                                Customers
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item ">
                                <a href="/admin/customers/add" class="nav-link {!! \Illuminate\Support\Facades\Request::path()=='admin/customers/add'?'active':'' !!}">
                                    <i class="fas fa-plus-square nav-icon"></i>
                                    <p>Add Customer</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/customers/list" class="nav-link {!! \Illuminate\Support\Facades\Request::path()=='admin/customers/list'?'active':'' !!}">
                                    <i class="fas fa-list-alt nav-icon"></i>
                                    <p>List of Customers</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item {!! \Illuminate\Support\Facades\Request::path()=='admin/discount-codes/list'?'menu-open':'' !!} {!! \Illuminate\Support\Facades\Request::path()=='admin/discount-codes/add'?'menu-open':'' !!}">
                        <a href="#" class="nav-link">
                            <i class="fas fa-tags nav-icon"></i>
                            <p>
                                Discount Codes
                                <i class="right fas fa-angle-left"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            <li class="nav-item ">
                                <a href="/admin/discount-codes/add" class="nav-link {!! \Illuminate\Support\Facades\Request::path()=='admin/discount-codes/add'?'active':'' !!}">
                                    <i class="fas fa-plus-square nav-icon"></i>
                                    <p>Add Discount Code</p>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="/admin/discount-codes/list" class="nav-link {!! \Illuminate\Support\Facades\Request::path()=='admin/discount-codes/list'?'active':'' !!}">
                                    <i class="fas fa-list-alt nav-icon"></i>
                                    <p>List of Discount Codes</p>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item {!! \Illuminate\Support\Facades\Request::path()=='admin/orders'?'menu-open':'' !!}">
                        <a href="/admin/orders" class="nav-link">
                            <i class="fab fa-shopify nav-icon"></i>
                            <p>
                                Order
                            </p>
                        </a>
                    </li>
                    <li class="nav-item {!! \Illuminate\Support\Facades\Request::path()=='admin/comments'?'menu-open':'' !!}">
                        <a href="/admin/comments" class="nav-link">
                            <i class="fas fa-comments nav-icon"></i>
                            <p>
                                Comments
                            </p>
                        </a>
                    </li>

                </ul>
            </nav>
            <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

        <br>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        @include('admin.alert')
                    </div>
                </div>
            </div>
        </section>
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <!-- left column -->
                    <div class="col-md-12">
                            @yield('content')
                    </div>
                    <!--/.col (left) -->
                    <!-- right column -->
                    <div class="col-md-6">

                    </div>
                    <!--/.col (right) -->
                </div>
                <!-- /.row -->
            </div><!-- /.container-fluid -->
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
</div>
<!-- ./wrapper -->
@include('admin.footer')
</body>
</html>

