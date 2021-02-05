
<section id="content" class="table-layout animated fadeIn">
    <!-- begin: .tray-center -->
    <div class="tray tray-center">


        <!-- Admin-panels -->
        <div class="admin-panels fade-onload">

            <div class="row">

                <!-- Three Pane Widget -->
                <div class="col-md-12 admin-grid">

                    <!-- dashboard activity -->
                    <div class="panel sort-disable" id="p01" data-panel-title="false">
                        <div class="panel-heading">
                            <span class="panel-title hidden-xs hidden"> Recent Activity</span>
                            <ul class="nav panel-tabs panel-tabs-left">
                                <!-- Demo Note: all hrefs set to #tab1_1 -->
                                <li class="active">
                                    <a href="#tab1_1" data-toggle="tab"> User Activity</a>
                                </li>
                                <li>
                                    <a href="#tab1_1" class="hidden-xs" data-toggle="tab"> Popular Items</a>
                                </li>
                                <li>
                                    <a href="#tab1_1" class="hidden-xs" data-toggle="tab"> Conversions</a>
                                </li>
                            </ul>
                        </div>
                        <div class="panel-body pn">

                            <div class="tab-content">
                                <div class="tab-pane active p15" id="tab1_1" role="tabpanel">
                                    <div class="row">

                                        <!-- Chart Column -->
                                        <div class="col-md-8 pln br-r-2 mvn15">
                                            <h5 class="ml5 mt20 ph10 pb5 br-b fw600 hidden">Visitors
                                                <small class="pull-right fw600">13,253
                                                    <span class="text-primary">(8,251 unique)</span>
                                                </small>
                                            </h5>
                                            <div id="ecommerce_chart1" style="height: 400px;padding:0 5px 15px;"></div>
                                        </div>

                                        <!-- Multi Text Column -->
                                        <div class="col-md-4">
                                            <h5 class="mt25 mbn ph10 pb5 fw650 fs14 text-uppercase">Top Referrals
                                                <small class="pull-right fw600 text-danger fs12 text-trasnf-none">View Report</small>
                                            </h5>
                                            <table class="table table--mod-1 mbn tc-med-1 tc-bold-last tc-fs13-last">
                                                <thead>
                                                <tr class="hidden">
                                                    <th>Source</th>
                                                    <th>Count</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <i class="rect-icon"></i>
                                                        <span>Coffee</span>
                                                    </td>
                                                    <td>0</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <i class="rect-icon"></i>
                                                        <span>Restaurant</span>
                                                    </td>
                                                    <td>0</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <i class="rect-icon"></i>
                                                        <span>Store</span>
                                                    </td>
                                                    <td>0</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                            <h5 class="mt20 pt20 br-t mbn ph10 pb5 fw50 fs14 text-uppercase">Top Search Terms
                                                <small class="pull-right fw600 text-danger fs12 text-trasnf-none">View Report</small>
                                            </h5>
                                            <table class="table table--mod-1 mbn tc-med-1 tc-bold-last tc-fs13-last">
                                                <thead>
                                                <tr class="hidden">
                                                    <th>Source</th>
                                                    <th>Count</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>
                                                        <i class="rect-icon"></i>
                                                        <span>Coffee</span>
                                                    </td>
                                                    <td>0</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <i class="rect-icon"></i>
                                                        <span>Restaurant</span>
                                                    </td>
                                                    <td>0</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <i class="rect-icon"></i>
                                                        <span>Store</span>
                                                    </td>
                                                    <td>0</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
<%--
                                        <!-- Flag/Icon Column -->
                                        <div class="col-md-4 hidden">
                                            <h5 class="mt5 ph10 pb5 br-b fw600 fs12">Traffic Sources
                                                <small class="pull-right fw600 text-primary">View Stats</small>
                                            </h5>
                                            <table class="table mbn">
                                                <thead>
                                                <tr class="hidden">
                                                    <th>#</th>
                                                    <th>First Name</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td class="va-m fw600 text-muted">
                                                        <span class="flag-xs flag-us mr5 va-b"></span> United States
                                                    </td>
                                                    <td class="fs15 fw600 text-right">28%</td>
                                                </tr>
                                                <tr>
                                                    <td class="va-m fw600 text-muted">
                                                        <span class="flag-xs flag-tr mr5 va-b"></span> Turkey
                                                    </td>
                                                    <td class="fs15 fw600 text-right">25%</td>
                                                </tr>
                                                <tr>
                                                    <td class="va-m fw600 text-muted">
                                                        <span class="flag-xs flag-fr mr5 va-b"></span> France
                                                    </td>
                                                    <td class="fs15 fw600 text-right">22%</td>
                                                </tr>
                                                <tr>
                                                    <td class="va-m fw600 text-muted">
                                                        <span class="flag-xs flag-in mr5 va-b"></span> India
                                                    </td>
                                                    <td class="fs15 fw600 text-right">18%</td>
                                                </tr>
                                                <tr>
                                                    <td class="va-m fw600 text-muted">
                                                        <span class="flag-xs flag-es mr5 va-b"></span> Spain
                                                    </td>
                                                    <td class="fs15 fw600 text-right">15%</td>
                                                </tr>
                                                <tr>
                                                    <td class="va-m fw600 text-muted">
                                                        <span class="flag-xs flag-de mr5 va-b"></span> Germany
                                                    </td>
                                                    <td class="fs15 fw600 text-right">12%</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>--%>
                                    </div>
                                </div>
<%--                                <div role="tabpanel" class="tab-pane" id="tab1_2">
                                    <div class="table-responsive">
                                        <table class="table admin-form theme-warning tc-checkbox-1 fs13">
                                            <thead>
                                            <tr class="bg-light">
                                                <th class="">Image</th>
                                                <th class="">Product Title</th>
                                                <th class="">SKU</th>
                                                <th class="">Price</th>
                                                <th class="">Stock</th>
                                                <th class="text-right">Status</th>

                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td class="w100">
                                                    <img class="img-responsive mw20 ib mr10" title="user" src="assets/img/stock/products/thumb_1.jpg">
                                                </td>
                                                <td class="">Apple Ipod 4G - Silver</td>
                                                <td class="">#21362</td>
                                                <td class="">$215</td>
                                                <td class="">1,400</td>
                                                <td class="text-right">
                                                    <div class="btn-group text-right">
                                                        <button type="button" class="btn btn-success br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Active
                                                            <span class="h-plus ml5"></span>
                                                        </button>
                                                        <ul class="dropdown-menu" role="menu">
                                                            <li>
                                                                <a href="#">Edit</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">Delete</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">Archive</a>
                                                            </li>
                                                            <li class="divider"></li>
                                                            <li>
                                                                <a href="#">Complete</a>
                                                            </li>
                                                            <li class="active">
                                                                <a href="#">Pending</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">Canceled</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="w100">
                                                    <img class="img-responsive mw20 ib mr10" title="user" src="assets/img/stock/products/thumb_2.jpg">
                                                </td>
                                                <td class="">Apple Smart Watch - 1G</td>
                                                <td class="">#15262</td>
                                                <td class="">$455</td>
                                                <td class="">2,100</td>
                                                <td class="text-right">
                                                    <div class="btn-group text-right">
                                                        <button type="button" class="btn btn-success br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Active
                                                            <span class="h-plus ml5"></span>
                                                        </button>
                                                        <ul class="dropdown-menu" role="menu">
                                                            <li>
                                                                <a href="#">Edit</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">Delete</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">Archive</a>
                                                            </li>
                                                            <li class="divider"></li>
                                                            <li>
                                                                <a href="#">Complete</a>
                                                            </li>
                                                            <li class="active">
                                                                <a href="#">Pending</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">Canceled</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="w100">
                                                    <img class="img-responsive mw20 ib mr10" title="user" src="assets/img/stock/products/thumb_6.jpg">
                                                </td>
                                                <td class="">Apple Macbook 4th Gen - Silver</td>
                                                <td class="">#66362</td>
                                                <td class="">$1699</td>
                                                <td class="">6,100</td>
                                                <td class="text-right">
                                                    <div class="btn-group text-right">
                                                        <button type="button" class="btn btn-success br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Active
                                                            <span class="h-plus ml5"></span>
                                                        </button>
                                                        <ul class="dropdown-menu" role="menu">
                                                            <li>
                                                                <a href="#">Edit</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">Delete</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">Archive</a>
                                                            </li>
                                                            <li class="divider"></li>
                                                            <li>
                                                                <a href="#">Complete</a>
                                                            </li>
                                                            <li class="active">
                                                                <a href="#">Pending</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">Canceled</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="w100">
                                                    <img class="img-responsive mw20 ib mr10" title="user" src="assets/img/stock/products/thumb_7.jpg">
                                                </td>
                                                <td class="">Apple Iphone 16GB - Silver</td>
                                                <td class="">#51362</td>
                                                <td class="">$1299</td>
                                                <td class="">5,200</td>
                                                <td class="text-right">
                                                    <div class="btn-group text-right">
                                                        <button type="button" class="btn btn-success br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Active
                                                            <span class="h-plus ml5"></span>
                                                        </button>
                                                        <ul class="dropdown-menu" role="menu">
                                                            <li>
                                                                <a href="#">Edit</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">Delete</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">Archive</a>
                                                            </li>
                                                            <li class="divider"></li>
                                                            <li>
                                                                <a href="#">Complete</a>
                                                            </li>
                                                            <li class="active">
                                                                <a href="#">Pending</a>
                                                            </li>
                                                            <li>
                                                                <a href="#">Canceled</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </td>
                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div role="tabpanel" class="tab-pane " id="tab1_3">
                                </div>--%>
                            </div>

                        </div>
                    </div>

                </div>
                <!-- end: .col-md-12.admin-grid -->

            </div>
            <!-- end: .row -->

            <!-- dashboard tiles -->
            <div class="row">
                <div class="col-sm-4 col-xl-3">
                    <div class="panel panel-tile text-center">
                        <div class="panel-body">
                            <h1 class="fs48 mt5 mbn text-success">0</h1>
                            <h6 class="def-color">NEW ORDERS</h6>
                            <%--
                            <div><i class="fa fa-arrow-up mt10 mb15 text-success"></i></div>
                            <span class="fs14">
                                            3% INCREASE
                                            1W AGO
                            </span>
                            --%>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xl-3">
                    <div class="panel panel-tile text-center">
                        <div class="panel-body">
                            <h1 class="fs48 mt5 mbn text-info">0</h1>
                            <h6 class="def-color">TOTAL SALES GROSS</h6>
                            <%--<span class="fs14">
                                <div><i class="fa fa-arrow-up mt10 mb15 text-success"></i></div>
                                    <span class="fs14">
                                        2.7% INCREASE
                                            1W AGO
                                    </span>
                            </span>--%>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xl-3">
                    <div class="panel panel-tile text-center">
                        <div class="panel-body">
                            <h1 class="fs48 mt5 mbn text-warning">0</h1>
                            <h6 class="def-color">PENDING SHIPMENTS</h6>

                            <%--<div><i class="fa fa-arrow-up mt10 mb15 text-danger"></i></div>
                            <span class="fs14">
                                1% INCREASE
                                    1W AGO
                            </span>--%>
                        </div>

                    </div>
                </div>
                <div class="col-sm-3 col-xl-3 visible-xl">
                    <div class="panel panel-tile text-center">
                        <div class="panel-body">
                            <h1 class="fs48 mt5 mbn text-danger">0</h1>
                            <h6 class="def-colorr">UNIQUE VISITS</h6>

                            <%--<div><i class="fa fa-arrow-down mt10 mb15 text-danger"></i></div>
                            <span class="fs14">
                                6% DECREASE
                                1W AGO
                            </span>--%>
                        </div>
                    </div>
                </div>
            </div>


            <%--<div class="row">
                <div class="col-md-6 admin-grid bubles-container">
                    <!-- Column Graph -->
                    <div class="panel" id="p6">
                        <div class="panel-heading">
                            <span class="panel-title">Column Graph</span>
                        </div>
                        <div class="panel-body pn">
                            <div class="row table-layout">
                                <div id="high-column" style="width: 100%; height: 639px; margin: 0 auto"></div>
                            </div>
                        </div>
                    </div>

                </div>
                <div class="col-md-6 admin-grid">
                    <!-- Calendar Widget -->
                    <div class="panel panel-widget calendar-widget calendar-alt" id="p02">
                        <div class="panel-heading">
                        <span class="panel-icon">
                          <i class="fa fa-calendar-o"></i>
                        </span>
                            <span class="panel-title"> Calendar Widget</span>
                        </div>
                        <div class="panel-body bg-white p15">
                            <div id="calendar-widget"></div>
                        </div>
                    </div>
                </div>
            </div>--%>

<%--            <div class="row">
                <div class="col-md-12">

                    <!-- Geo Map + Table Stats -->
                    <div class="panel" id="p9">
                        <div class="panel-heading">
                            <span class="panel-title"> Visitor Geography </span>
                        </div>
                        <div class="row">
                            <div class="col-md-10">
                                <div class="panel-body border-bottom-none border-top-none">
                                    <div id="WidgetMap" class="jvector-colors hide-jzoom" style="width: 100%; height: 450px;"></div>
                                </div>
                            </div>
                            <div class="col-md-2 br-l mt-1">
                                <!-- Panel Break Smart Widget -->
                                <div class="text-center">
                                    <h1 class="fs48 mt40 mbn">24%</h1>

                                    <p class="fs14">California</p>

                                    <h1 class="fs48 mt40 mbn">7%</h1>

                                    <p class="fs14">Texas</p>

                                    <h1 class="fs48 mt40 mbn">14%</h1>

                                    <p class="fs14">Missouri</p>

                                    <h1 class="fs48 mt40 mbn">7%</h1>

                                    <p class="fs14">New York</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>--%>

            <!--Area Graph-->
            <div class="row">
                <div class="col-md-12 admin-grid">

                    <!-- Stats Top Graph Bot -->
                    <div class="panel" id="p7">
                        <div class="panel-heading">
                            <span class="panel-title">Area Graph</span>
                        </div>


                        <div class="panel-body pn">
                            <div class="row">
                                <div class="col-md-9">

                                    <div class="smart-widget pt25 pl20 sm-right smr-50">
                                        <label class="field">
                                            <input type="text" name="sub" id="sub" class="gui-input" placeholder="Search...">
                                        </label>
                                    </div>

                                    <div id="high-line3" style="width: 100%; height: 285px; margin: 0 0 60px 15px;"></div>
                                </div>
                                <div class="col-md-3 pt-md-80 text-center text-lg-left">

                                    <div class="row">
                                        <div class="col-xs-3 col-sm-offset-1 col-md-3 col-md-offset-0 col-lg-offset-1">
                                            <div class="ib mr15">
                                                <span class="fa fa-male text-warning fs14"></span>
                                                <!-- Warning Progress Bar -->
                                                <div class="child-inline-block progress-persent text-center">
                                                    <div class="progress vertical bottom progress-bar-xs br6 mt10 mbn">
                                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="height: 0%;"></div>
                                                        <span class="pers">0%</span>
                                                    </div>

                                                </div>
                                                <p class="fs12 color-2">Male</p>
                                            </div>
                                        </div>
                                        <div class="col-xs-3 col-md-3">
                                            <div class="ib mr15">
                                                <span class="fa fa-female text-info fs14"></span>

                                                <div class="child-inline-block progress-persent text-center">
                                                    <!-- Info Progress Bar -->
                                                    <div class="progress vertical bottom progress-bar-xs br6 mt10 mbn">
                                                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="height: 0%;"></div>
                                                        <span class="pers">0%</span>
                                                    </div>

                                                </div>
                                                <p class="fs12 color-2">Female</p>
                                            </div>
                                        </div>
                                        <div class="col-xs-3 col-md-3">
                                            <div class="ib mr15">
                                                <span class="fa fa-child text-success fs14"></span>
                                                <!-- Success Progress Bar -->
                                                <div class="child-inline-block progress-persent text-center">
                                                    <div class="progress vertical bottom progress-bar-xs br6 mt10 mbn">
                                                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="height: 0%;"></div>
                                                        <span class="pers">0%</span>
                                                    </div>
                                                </div>
                                                <p class="fs12 color-2">Unemployed</p>
                                            </div>
                                        </div>

                                    </div>
                                    <%--<!--<div class="br-b admin-form">-->

                                    <!--<table class="table mbn br-t">-->
                                    <!--<tbody>-->
                                    <!--<tr>-->
                                    <!--<td class="va-m fw600 text-muted">-->
                                    <!--<span class="fa fa-female text-primary fs14 ml5 mr10"></span>Male-->
                                    <!--</td>-->
                                    <!--<td class="fs14 fw600 text-right">54%</td>-->
                                    <!--</tr>-->
                                    <!--<tr>-->
                                    <!--<td class="va-m fw600 text-muted">-->
                                    <!--<span class="fa fa-male text-info fs14 ml5 mr10"></span>Female-->
                                    <!--</td>-->
                                    <!--<td class="fs14 fw600 text-right">46%</td>-->
                                    <!--</tr>-->
                                    <!--<tr>-->
                                    <!--<td class="va-m fw600 text-muted">-->
                                    <!--<span class="fa fa-child text-warning fs15 ml5 mr10"></span>Unemployed-->
                                    <!--</td>-->
                                    <!--<td class="fs14 fw600 text-right">14%</td>-->
                                    <!--</tr>-->
                                    <!--</tbody>-->
                                    <!--</table>-->
                                    <!--</div>-->--%>

                                </div>


                            </div>
                        </div>
                    </div>

                </div>
            </div>


            <div class="row">

                <div class="col-md-7 admin-grid">

                    <!-- Task Widget -->
                    <div class="panel pb10 panel-widget task-widget task-alt" id="p05">
                        <div class="panel-heading cursor">
                        <span class="panel-icon">
                          <i class="fa fa-cog"></i>
                        </span>
                            <span class="panel-title"> Task-List Widget</span>
                        </div>
                        <div class="panel-body p15">
                            <p class="fs18 mt5 mb20 def-color medium">Personal Tasks
                            </p>
                            <ul class="task-list task-current">
                                <li class="task-item success">
                                    <div class="task-handle">
                                        <div class="checkbox-custom">
                                            <input type="checkbox" id="task1">
                                            <label for="task1"></label>
                                        </div>
                                    </div>
                                    <div class="task-desc">Create documentation for launch</div>
                                    <div class="task-menu"></div>
                                </li>
                                <li class="task-item primary">
                                    <div class="task-handle">
                                        <div class="checkbox-custom">
                                            <input type="checkbox" id="task2">
                                            <label for="task2"></label>
                                        </div>
                                    </div>
                                    <div class="task-desc">Add new servers to design board</div>
                                    <div class="task-menu"></div>
                                </li>
                                <li class="task-item info">
                                    <div class="task-handle">
                                        <div class="checkbox-custom">
                                            <input type="checkbox" id="task3">
                                            <label for="task3"></label>
                                        </div>
                                    </div>
                                    <div class="task-desc">Finish building prototype for Sony</div>
                                    <div class="task-menu"></div>
                                </li>
                                <li class="task-item warning">
                                    <div class="task-handle">
                                        <div class="checkbox-custom">
                                            <input type="checkbox" id="task4">
                                            <label for="task4"></label>
                                        </div>
                                    </div>
                                    <div class="task-desc">Order new building supplies for Microsoft</div>
                                    <div class="task-menu"></div>
                                </li>
                                <li class="task-item system">
                                    <div class="task-handle">
                                        <div class="checkbox-custom">
                                            <input type="checkbox" id="task5">
                                            <label for="task5"></label>
                                        </div>
                                    </div>
                                    <div class="task-desc">Add new servers to design board</div>
                                    <div class="task-menu"></div>
                                </li>
                            </ul>
                            <p class="fs18 mt20 mb20 def-color medium">
                                Completed Tasks
                            </p>
                            <ul class="task-list task-completed">
                                <li class="task-item danger item-checked">
                                    <div class="task-handle">
                                        <div class="checkbox-custom">
                                            <input type="checkbox" checked="" id="task7">
                                            <label for="task7"></label>
                                        </div>
                                    </div>
                                    <div class="task-desc">Finish building prototype for Sony</div>
                                    <div class="task-menu"></div>
                                </li>
                                <li class="task-item system item-checked">
                                    <div class="task-handle">
                                        <div class="checkbox-custom">
                                            <input type="checkbox" checked="" id="task8">
                                            <label for="task8"></label>
                                        </div>
                                    </div>
                                    <div class="task-desc">Order new building supplies for Microsoft</div>
                                    <div class="task-menu"></div>
                                </li>
                                <li class="task-item item-alert item-checked">
                                    <div class="task-handle">
                                        <div class="checkbox-custom">
                                            <input type="checkbox" checked="" id="task9">
                                            <label for="task9"></label>
                                        </div>
                                    </div>
                                    <div class="task-desc">Finish building prototype for Sony</div>
                                    <div class="task-menu"></div>
                                </li>
                                <li class="task-item info item-checked">
                                    <div class="task-handle">
                                        <div class="checkbox-custom">
                                            <input type="checkbox" checked="" id="task10">
                                            <label for="task10"></label>
                                        </div>
                                    </div>
                                    <div class="task-desc">Order new building supplies for Microsoft</div>
                                    <div class="task-menu"></div>
                                </li>
                            </ul>
                        </div>

                    </div>
                </div>
                <!-- end: .col-md-7-->

<%--                <div class="col-md-5 admin-grid">

                    <!-- Search List -->
                    <div class="panel pb30" id="p17">
                        <div class="panel-heading">
                            <span class="panel-title">Crawler List</span>
                        </div>
                        <div class="panel-body pn">
                            <table class="table mbn tc-norm-last tc-med-1">
                                <thead>
                                <tr class="hidden">
                                    <th>#</th>
                                    <th>First Name</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <span class="fa fa-link pr15"></span>pages.com/img/15
                                    </td>
                                    <td>45%</td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="fa fa-link pr15"></span>pages.com/popular
                                    </td>
                                    <td>17%</td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="fa fa-link pr15"></span>pages.com/featured/16
                                    </td>
                                    <td>15%</td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="fa fa-link pr15"></span>pages.com/news/3
                                    </td>
                                    <td>20%</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>


                    <!-- Country List -->
                    <div class="panel pb30" id="p16">
                        <div class="panel-heading">
                            <span class="panel-title">Country List</span>
                        </div>
                        <div class="panel-body pn">
                            <table class="table mbn tc-med-1 table-lh-36 tc-norm-last">
                                <tbody>
                                <tr>
                                    <td class="pt30">
                                        <span class="flag-md flag-us mr10 va-b"></span>United States
                                    </td>
                                    <td class="pt30">24%</td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="flag-md flag-de mr10 va-b"></span>Germany
                                    </td>
                                    <td>7%</td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="flag-md flag-fr mr10 va-b"></span>France
                                    </td>
                                    <td>14%</td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="flag-md flag-tr mr10 va-b"></span>Turkey
                                    </td>
                                    <td>31%</td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="flag-md flag-es mr10 va-b"></span>Spain
                                    </td>
                                    <td>22%</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>


                    <!-- Browser List -->
                    <div class="panel pb30" id="p18">
                        <div class="panel-heading">
                            <span class="panel-title">Browser List</span>
                        </div>
                        <div class="panel-body pn">
                            <table class="table mbn tc-med-1 table-lh-31 tc-norm-last">
                                <tbody>
                                <tr>
                                    <td class="pt30">
                                        <span class="favicons-md chrome va-t mr10"></span>United States
                                    </td>
                                    <td class="pt30">45%</td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="favicons-md opera va-t mr10"></span>Germany
                                    </td>
                                    <td>17%</td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="favicons-md firefox  va-t mr10"></span>France
                                    </td>
                                    <td>17%</td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="favicons-md ie va-t mr10"></span>Spain
                                    </td>
                                    <td>15%</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>


                </div>
                <!-- end: .col-md-4-->--%>


            </div>
            <!-- end: .row -->

        </div>

    </div>
    <!-- end: .tray-center -->
    <!-- begin: .tray-right -->
    <%--<aside class="tray tray-right tray270 pn hidden" data-tray-height="match">--%>

        <%--<!-- store activity timeline -->--%>
        <%--<ol class="timeline-list pl5 mt5">--%>
            <%--<li class="timeline-item">--%>
                <%--<div class="timeline-icon bg-dark light">--%>
                    <%--<span class="fa fa-tags"></span>--%>
                <%--</div>--%>
                <%--<div class="timeline-desc">--%>
                    <%--<b>Michael</b> Added a new item to his store:--%>
                    <%--<a href="#">Ipod</a>--%>
                <%--</div>--%>
                <%--<div class="timeline-date">1:25am</div>--%>
            <%--</li>--%>
            <%--<li class="timeline-item">--%>
                <%--<div class="timeline-icon bg-dark light">--%>
                    <%--<span class="fa fa-tags"></span>--%>
                <%--</div>--%>
                <%--<div class="timeline-desc">--%>
                    <%--<b>Sara</b> Added a new item to his store:--%>
                    <%--<a href="#">Notebook</a>--%>
                <%--</div>--%>
                <%--<div class="timeline-date">3:05am</div>--%>
            <%--</li>--%>
            <%--<li class="timeline-item">--%>
                <%--<div class="timeline-icon bg-success">--%>
                    <%--<span class="fa fa-usd"></span>--%>
                <%--</div>--%>
                <%--<div class="timeline-desc">--%>
                    <%--<b>Admin</b> created a new invoice for:--%>
                    <%--<a href="#">Software</a>--%>
                <%--</div>--%>
                <%--<div class="timeline-date">4:15am</div>--%>
            <%--</li>--%>
            <%--<li class="timeline-item">--%>
                <%--<div class="timeline-icon bg-warning">--%>
                    <%--<span class="fa fa-pencil"></span>--%>
                <%--</div>--%>
                <%--<div class="timeline-desc">--%>
                    <%--<b>Laura</b> edited her work experience--%>
                <%--</div>--%>
                <%--<div class="timeline-date">5:25am</div>--%>
            <%--</li>--%>
            <%--<li class="timeline-item">--%>
                <%--<div class="timeline-icon bg-success">--%>
                    <%--<span class="fa fa-usd"></span>--%>
                <%--</div>--%>
                <%--<div class="timeline-desc">--%>
                    <%--<b>Admin</b> created a new invoice for:--%>
                    <%--<a href="#">Apple Inc.</a>--%>
                <%--</div>--%>
                <%--<div class="timeline-date">7:45am</div>--%>
            <%--</li>--%>
            <%--<li class="timeline-item">--%>
                <%--<div class="timeline-icon bg-dark light">--%>
                    <%--<span class="fa fa-tags"></span>--%>
                <%--</div>--%>
                <%--<div class="timeline-desc">--%>
                    <%--<b>Michael</b> Added a new item to his store:--%>
                    <%--<a href="#">Ipod</a>--%>
                <%--</div>--%>
                <%--<div class="timeline-date">8:25am</div>--%>
            <%--</li>--%>
            <%--<li class="timeline-item">--%>
                <%--<div class="timeline-icon bg-dark light">--%>
                    <%--<span class="fa fa-tags"></span>--%>
                <%--</div>--%>
                <%--<div class="timeline-desc">--%>
                    <%--<b>Sara</b> Added a new item to his store:--%>
                    <%--<a href="#">Watch</a>--%>
                <%--</div>--%>
                <%--<div class="timeline-date">9:35am</div>--%>
            <%--</li>--%>
            <%--<li class="timeline-item">--%>
                <%--<div class="timeline-icon bg-system">--%>
                    <%--<span class="fa fa-fire"></span>--%>
                <%--</div>--%>
                <%--<div class="timeline-desc">--%>
                    <%--<b>Admin</b> created a new invoice for:--%>
                    <%--<a href="#">Software</a>--%>
                <%--</div>--%>
                <%--<div class="timeline-date">4:15am</div>--%>
            <%--</li>--%>
            <%--<li class="timeline-item">--%>
                <%--<div class="timeline-icon bg-warning">--%>
                    <%--<span class="fa fa-pencil"></span>--%>
                <%--</div>--%>
                <%--<div class="timeline-desc">--%>
                    <%--<b>Laura</b> edited her work experience--%>
                <%--</div>--%>
                <%--<div class="timeline-date">5:25am</div>--%>
            <%--</li>--%>
            <%--<li class="timeline-item">--%>
                <%--<div class="timeline-icon bg-success">--%>
                    <%--<span class="fa fa-usd"></span>--%>
                <%--</div>--%>
                <%--<div class="timeline-desc">--%>
                    <%--<b>Admin</b> created a new invoice for:--%>
                    <%--<a href="#">Software</a>--%>
                <%--</div>--%>
                <%--<div class="timeline-date">4:15am</div>--%>
            <%--</li>--%>
            <%--<li class="timeline-item">--%>
                <%--<div class="timeline-icon bg-warning">--%>
                    <%--<span class="fa fa-pencil"></span>--%>
                <%--</div>--%>
                <%--<div class="timeline-desc">--%>
                    <%--<b>Laura</b> edited her work experience--%>
                <%--</div>--%>
                <%--<div class="timeline-date">5:25am</div>--%>
            <%--</li>--%>
            <%--<li class="timeline-item">--%>
                <%--<div class="timeline-icon bg-success">--%>
                    <%--<span class="fa fa-usd"></span>--%>
                <%--</div>--%>
                <%--<div class="timeline-desc">--%>
                    <%--<b>Admin</b> created a new invoice for:--%>
                    <%--<a href="#">Apple Inc.</a>--%>
                <%--</div>--%>
                <%--<div class="timeline-date">7:45am</div>--%>
            <%--</li>--%>
            <%--<li class="timeline-item">--%>
                <%--<div class="timeline-icon bg-dark light">--%>
                    <%--<span class="fa fa-tags"></span>--%>
                <%--</div>--%>
                <%--<div class="timeline-desc">--%>
                    <%--<b>Michael</b> Added a new item to his store:--%>
                    <%--<a href="#">Ipod</a>--%>
                <%--</div>--%>
                <%--<div class="timeline-date">8:25am</div>--%>
            <%--</li>--%>
            <%--<li class="timeline-item">--%>
                <%--<div class="timeline-icon bg-dark light">--%>
                    <%--<span class="fa fa-tags"></span>--%>
                <%--</div>--%>
                <%--<div class="timeline-desc">--%>
                    <%--<b>Sara</b> Added a new item to his store:--%>
                    <%--<a href="#">Watch</a>--%>
                <%--</div>--%>
                <%--<div class="timeline-date">9:35am</div>--%>
            <%--</li>--%>
        <%--</ol>--%>

    <%--</aside>--%>
    <!-- end: .tray-right -->
</section>