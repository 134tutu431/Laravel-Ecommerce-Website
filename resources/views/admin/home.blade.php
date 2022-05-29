@extends('admin.main')
@section('content')
<style>svg { width: 100%; }</style>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-info">
                    <div class="inner">
                        <h3>{{$new_order}}</h3>
                        <p>New Orders</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-bag"></i>
                    </div>
                    <a href="/admin/orders" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-success">
                    <div class="inner">
                        <h3>{{$percent_profit}}<sup style="font-size: 20px">%</sup></h3>

                        <p>% Profit</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-stats-bars"></i>
                    </div>
                    <a href="#profit" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-warning">
                    <div class="inner">
                        <h3>{{$new_user}}</h3>

                        <p>User Registrations</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-person-add"></i>
                    </div>
                    <a href="/admin/customers/list" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
                <!-- small box -->
                <div class="small-box bg-danger">
                    <div class="inner">
                        <h3>{{$new_comment}}</h3>

                        <p>New Comments</p>
                    </div>
                    <div class="icon">
                        <i class="ion ion-pie-graph"></i>
                    </div>
                    <a href="/admin/comments" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </div>
            <!-- ./col -->
        </div>
        <section id="profit" class="card card-info">
            <div class="card-header"><h5 class="card-title">Sales statistics</h5></div>
            <div class="card-body">
                <form class="row" autocomplete="off" method="post">
                    @csrf
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>From date</label>
                            <input name="from_date" id="from_date" type="date" class="form-control form-control-sm ">
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>To date</label>
                            <input name="to_date" id="to_date" type="date" class="form-control form-control-sm ">
                        </div>
                    </div>
                    <div class="col-md-2">
                        <label>Filter by</label>
                        <select class="form-control form-control-sm filter-by">
                            <option>--Select--</option>
                            <option value="1">7 days ago</option>
                            <option value="2">Last month</option>
                            <option value="3">This month</option>
                            <option value="4">365 days ago</option>
                        </select>
                    </div>
                </form>
                <div id="test"></div>
                <div class="row ">
                    <div class="col-md-3">
                        <button id="filter" type="submit" class="btn btn-outline-info btn-sm">Filter results</button>
                    </div>
                    <div class="col-md-12">
                        <div id="myfirstchart" style="height: 250px;width: 100%"></div>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <div class="container-fluid">
        <div class="card card-info">
            <div class="card-header">
                <h5 class="card-title">Statistics the number of visitors</h5>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered table-hover">
                        <thead class="thead-light" >
                        <tr>
                            <th class="text-center align-middle"  scope="col">Online</th>
                            <th class="text-center align-middle" scope="col">This month total</th>
                            <th class="text-center align-middle" scope="col">Last month total</th>
                            <th class="text-center align-middle" scope="col">This year total</th>
                            <th class="text-center align-middle" scope="col">Total</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <th class="text-center align-middle" scope="row">{{$current_visitor}}</th>
                            <th class="text-center align-middle" scope="row">{{$thism_visitor}}</th>
                            <th class="text-center align-middle" scope="row">{{$lastm_visitor}}</th>
                            <th class="text-center align-middle" scope="row">{{$year}}</th>
                            <th class="text-center align-middle" scope="row">{{$visitor}}</th>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4">
                <div class="card card-info">
                    <div class="card-header">
                        <h5 class="card-title">Quantity statistic</h5>
                    </div>
                    <div class="card-body">
                        <div id="donut-example" class="morris-donut-inverse"></div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card card-info">
                    <div class="card-header">
                        <h5 class="card-title">Products Statistic</h5>
                    </div>
                    <div class="card-body">
                        @foreach($products as $key => $product_by_views)
                            <li>
                                {{$key+1}}.<a href="/catalog/{{$product_by_views->id}}-{{$product_by_views->slug}}"target="_blank">{{$product_by_views->name}}</a>| {{$product_by_views->views}} views
                            </li>
                        @endforeach

                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card card-info">
                    <div class="card-header">
                        <h5 class="card-title">Articles Statistic</h5>
                    </div>
                    <div class="card-body">
                        @foreach($articles as $key => $article_by_views)
                            <li>
                                {{$key+1}}.<a href="/catalog/{{$article_by_views->id}}-{{$article_by_views->slug}}"target="_blank">{{$article_by_views->name}}</a>| {{$article_by_views->views}} views
                            </li>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
@section('footer')
    <script>
        $(document).ready(function (){
            var colorDanger = "#FF1744";
            var donut = Morris.Donut({
                element: 'donut-example',
                resize: true,
                colors: [
                    '#80DEEA',
                    '#00BCD4',
                    '#0097A7',
                    '#00838F',
                    '#006064'
                ],
                //labelColor:"#cccccc", // text color
                //backgroundColor: '#333333', // border color
                data: [
                    {label:"Articles", value: {{$article}}},
                    {label:"Customers", value: {{$customer}}},
                    {label:"Orders", value:{{$order}}},
                    {label:"Products", value: {{$product}}, color:colorDanger}
                ]
            });
        });
    </script>
@endsection
