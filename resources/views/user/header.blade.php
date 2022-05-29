<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/"> <i class="ion-cube"></i> Unistore</a>
        </div>

        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="{!! \Illuminate\Support\Facades\Request::path()=='home'?'active':'' !!}"><a href="/home">Home</a></li>
                <li class="{!! \Illuminate\Support\Facades\Request::path()=='catalog'?'active':'' !!}"><a href="/catalog">Catalog</a></li>
                <li class="{!! \Illuminate\Support\Facades\Request::path()=='blog'?'active':'' !!}"><a href="/blog">Blog</a></li>
                <li class="{!! \Illuminate\Support\Facades\Request::path()=='contacts'?'active':'' !!}"><a href="/contacts">Contacts</a></li>
                <li class="dropdown">
                    <a href="" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">More <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/show-cart">Cart</a></li>
                        <li><a href="/checkout">Checkout</a></li>
                        <li><a href="/faq">FAQ</a></li>

                        <li role="separator" class="divider"></li>
                        <li class="dropdown-header">Variations</li>
                        <li><a href="/">Home</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                {!! \App\Helpers\Helper::checkAuth() !!}
            </ul>
        </div><!--/.nav-collapse -->
    </div><!--/.container-fluid -->
</nav>

