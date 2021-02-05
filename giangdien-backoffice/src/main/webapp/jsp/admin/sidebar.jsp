<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<aside id="sidebar_left" class="nano nano-light affix">

    <!-- Start: Sidebar Left Content -->
    <div class="sidebar-left-content nano-content">

        <!-- Start: Sidebar Header -->
        <header class="sidebar-header">

            <!-- Sidebar Widget - Author -->
            <div class="sidebar-widget author-widget">
                <div class="media">
                    <c:choose>
                        <c:when test="${not empty user.profilePicture}">
                            <a class="media-left" href="#">
                                <img src="${pageContext.request.contextPath}/${user.profilePicture}" class="img-responsive">
                            </a>
                        </c:when>
                        <c:otherwise>
                            <a class="media-left" href="#">
                                <img src="${pageContext.request.contextPath}/images/core/profilePlaceHolder.png" class="img-responsive">
                            </a>
                        </c:otherwise>
                    </c:choose>
                    <div class="media-body">
                        <div class="media-author">${user.firstName} ${user.lastName}</div>
                        <div class="media-links">
                            <a href="#" class="sidebar-menu-toggle">User Menu -</a>
                            <a href="${pageContext.request.contextPath}/controller/administrator/logout">Logout</a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Sidebar Widget - Menu (slidedown) -->
            <div class="sidebar-widget menu-widget">
                <div class="row text-center mbn">
                    <div class="col-xs-4">
                        <a href="${pageContext.request.contextPath}/controller/administrator" class="text-primary" data-toggle="tooltip" data-placement="top" title="Dashboard">
                            <span class="glyphicon glyphicon-home"></span>
                        </a>
                    </div>
                    <div class="col-xs-4">
                        <a href="#todo" class="text-info" data-toggle="tooltip" data-placement="top" title="Messages">
                            <span class="glyphicon glyphicon-inbox"></span>
                        </a>
                    </div>
                    <div class="col-xs-4">
                        <a href="#todo" class="text-alert" data-toggle="tooltip" data-placement="top" title="Tasks">
                            <span class="glyphicon glyphicon-bell"></span>
                        </a>
                    </div>
                    <div class="col-xs-4">
                        <a href="#todo" class="text-system" data-toggle="tooltip" data-placement="top" title="Activity">
                            <span class="fa fa-desktop"></span>
                        </a>
                    </div>
                    <div class="col-xs-4">
                        <a href="#todo" class="text-danger" data-toggle="tooltip" data-placement="top" title="Settings">
                            <span class="fa fa-gears"></span>
                        </a>
                    </div>
                    <div class="col-xs-4">
                        <a href="#todo" class="text-warning" data-toggle="tooltip" data-placement="top" title="Cron Jobs">
                            <span class="fa fa-flask"></span>
                        </a>
                    </div>
                </div>
            </div>

            <!-- Sidebar Widget - Search (hidden) -->
            <div class="sidebar-widget search-widget hidden">
                <div class="input-group">
              <span class="input-group-addon">
                <i class="fa fa-search"></i>
              </span>
                    <input type="text" id="sidebar-search" class="form-control" placeholder="Search...">
                </div>
            </div>

        </header>
        <!-- End: Sidebar Header -->

        <!-- Start: Sidebar Menu -->

        <ul class="nav sidebar-menu">
            <!-- sidebar progress bars -->
            <li class="sidebar-label pt30 pb5">Business goals</li>
            <li class="sidebar-stat">
                <a href="#TODO" class="fs12">
                    <span class="fa fa-line-chart"></span>
                    <span class="sidebar-title">Daily Goal</span>
                    <span class="pull-right mr20">35%</span>

                    <div class="progress progress-bar-xs mh20">
                        <div class="progress-bar progress-bar--1" role="progressbar" aria-valuenow="35" aria-valuemin="0" aria-valuemax="100" style="width: 35%">
                            <span class="sr-only">35% Complete</span>
                        </div>
                    </div>
                </a>
            </li>
            <li class="sidebar-stat">
                <a href="#TODO" class="fs12">
                    <span class="fa fa-bar-chart"></span>
                    <span class="sidebar-title">Monthly goals</span>
                    <span class="pull-right mr20">62%</span>

                    <div class="progress progress-bar-xs mh20 mb10">
                        <div class="progress-bar progress-bar--1" role="progressbar" aria-valuenow="62" aria-valuemin="0" aria-valuemax="100" style="width: 62%">
                            <span class="sr-only">62% Complete</span>
                        </div>
                    </div>
                </a>
            </li>


            <li class="sidebar-label pt10">Menu</li>
            <li class="active">
                <a href="#">
                    <span class="glyphicon glyphicon-home"></span>
                    <span class="sidebar-title">Dashboard</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <span class="glyphicon glyphicon-book"></span>
                    <span class="sidebar-title">Documentation</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <span class="fa fa-calendar"></span>
                    <span class="sidebar-title">Calendar</span>
                    <span class="sidebar-title-tray">
                <span class="label label-xs bg-warning">New</span>
              </span>
                </a>
            </li>
            <li class="sidebar-label pt15">Business Management</li>
            <li>
                <a class="accordion-toggle" href="#">
                    <span class="fa fa-bar-chart-o"></span>
                    <span class="sidebar-title">Profit</span>
                    <span class="h-plus"></span>
                </a>
                <ul class="nav sub-nav">
                    <li>
                        <a href="#todo"><span class="glyphicon glyphicon-book"></span> Dashboard </a>
                    </li>
                    <li>
                        <a href="#todo"><span class="fa fa-flag-checkered"></span> Goal </a>
                    </li>
                </ul>
            </li>
            <li>
                <a class="accordion-toggle" href="#">
                    <span class="fa fa-check-square"></span>
                    <span class="sidebar-title">Budgets</span>
                    <span class="h-plus"></span>
                </a>
                <ul class="nav sub-nav">
                    <li>
                        <a href="#budgetTodo">
                            <span class="fa fa-desktop"></span> Dashboard </a>
                    </li>
                    <li>
                        <a href="#budgetTodo">
                            <span class="glyphicon glyphicon-calendar"></span> Shareholders </a>
                    </li>
                    <li>
                        <a href="#budgetTodo">
                            <span class="fa fa-desktop"></span> Debit </a>
                    </li>
                </ul>
            </li>
            <li>
                <a class="accordion-toggle" href="#">
                    <span class="fa fa-cog"></span>
                    <span class="sidebar-title">Expense</span>
                    <span class="h-plus"></span>
                </a>
                <ul class="nav sub-nav">
                    <li>
                        <a class="accordion-toggle" href="#">
                            <span class="fa fa-desktop"></span>
                            Dashboard
                            <%--<span class="h-plus"></span>--%>
                        </a>
                        <%--<ul class="nav sub-nav">
                            <li>
                                <a href="layout_sidebar-left-static.html">
                                    Left Static </a>
                            </li>
                            <li>
                                <a href="layout_sidebar-left-fixed.html">
                                    Left Fixed </a>
                            </li>
                            <li>
                                <a href="layout_sidebar-left-widgets.html">
                                    Left Widgets </a>
                            </li>
                            <li>
                                <a href="layout_sidebar-left-minified.html">
                                    Left Minified </a>
                            </li>
                            <li>
                                <a href="layout_sidebar-left-light.html">
                                    Left White </a>
                            </li>
                            <li>
                                <a href="layout_sidebar-right-static.html">
                                    Right Static </a>
                            </li>
                            <li>
                                <a href="layout_sidebar-right-fixed.html">
                                    Right Fixed </a>
                            </li>
                            <li>
                                <a href="layout_sidebar-right-menu.html">
                                    Right w/Menu </a>
                            </li>
                        </ul>--%>
                    </li>
                    <li>
                        <a class="accordion-toggle" href="#">
                            <span class="fa fa-arrows-v"></span>
                            Raw materials
                            <%--<span class="h-plus"></span>--%>
                        </a>
                        <%--<ul class="nav sub-nav">
                            <li>
                                <a href="layout_navbar-static.html">
                                    Navbar Static </a>
                            </li>
                            <li>
                                <a href="layout_navbar-fixed.html">
                                    Navbar Fixed </a>
                            </li>
                            <li>
                                <a href="layout_navbar-menus.html">
                                    Navbar Menus </a>
                            </li>
                            <li>
                                <a href="layout_navbar-contextual.html">
                                    Contextual Example </a>
                            </li>
                            <li>
                                <a href="layout_navbar-search-alt.html">
                                    Search Alt Style </a>
                            </li>
                        </ul>--%>
                    </li>
                    <li>
                        <a class="accordion-toggle" href="#">
                            <span class="fa fa-hand-o-up"></span>
                            Furniture
                        </a>
                    </li>
                    <li>
                        <a class="accordion-toggle" href="#">
                            <span class="fa fa-arrows-v"></span>
                            Human Resource
                        </a>
                    </li>
                </ul>
            </li>

            <!-- sidebar reporting -->
            <li class="sidebar-label pt20">Reporting</li>
            <li>
                <a class="accordion-toggle" href="#">
                    <span class="fa fa-desktop"></span>
                    <span class="sidebar-title">Dashboard</span>
                </a>
            </li>
            <li>
                <a class="accordion-toggle" href="#">
                    <span class="fa fa-align-justify"></span>
                    <span class="sidebar-title"> Sold Items </span>
                </a>
            </li>
            <li>
                <a class="accordion-toggle" href="#">
                    <span class="fa fa-flash"></span>
                    <span class="sidebar-title">Customers</span>
                </a>
            </li>
            <li>
                <a class="accordion-toggle" href="#">
                    <span class="fa fa-flash"></span>
                    <span class="sidebar-title">Staff</span>
                </a>
            </li>

            <!-- sidebar bullets -->
            <li class="sidebar-label pt20">Resource Management</li>
            <li class="sidebar-proj">
                <a class = "accordion-toggle" href="#projectOne">
                    <span class="fa fa-bookmark"></span>
                    <span class="sidebar-title">
                        Warehouse
                        <span class="h-plus"></span>
                    </span>
                </a>
                <ul class="nav sub-nav">
                    <li>
                        <a href="#">
                            Import </a>
                    </li>
                    <li>
                        <a href="#">
                            Store
                        </a>
                    </li>
                </ul>
            </li>
            <li class="sidebar-proj">
                <a href="#projectTwo">
                    <span class="fa fa-bookmark"></span>
                    <span class="sidebar-title">Property</span>
                </a>
            </li>
            <li class="sidebar-proj">
                <a href="#projectTwo">
                    <span class="fa fa-group"></span>
                    <span class="sidebar-title">Human Resource</span>
                </a>
            </li>

            <li class="sidebar-label pt20">Systems</li>
            <li>
                <a class="accordion-toggle" href="#">
                    <span class="fa fa-signal"></span>
                    <span class="sidebar-title">Information Panels</span>
                    <span class="h-plus"></span>
                </a>
                <ul class="nav sub-nav">
                    <li>
                        <a href="${pageContext.request.contextPath}/controller/administrator/settings">
                            <span class="fa fa-cube"></span> Basic Information</a>
                    </li>
                    <li>
                        <a href="widgets_panel.html">
                            <span class="fa fa-desktop"></span> Introduction</a>
                    </li>
                    <li>
                        <a href="widgets_scroller.html">
                            <span class="fa fa-columns"></span> Contact </a>
                    </li>
                    <li>
                        <a href="widgets_data.html">
                            <span class="fa fa-dot-circle-o"></span> Policy </a>
                    </li>
                </ul>
            </li>

            <li>
                <a class="accordion-toggle" href="#">
                    <span class="fa fa-shopping-cart"></span>
                    <span class="sidebar-title">Gallery</span>
                    <span class="h-plus"></span>
                </a>
                <ul class="nav sub-nav">
                    <li> <a href="${pageContext.request.contextPath}/controller/administrator/gallery">
                        <span class="glyphicon glyphicon-shopping-cart"></span> All
                        <%--<span class="label label-xs bg-warning">New</span>--%>
                    </a>
                    </li>
                    <li>
                        <a href="#">
                            <span class="glyphicon glyphicon-tags"></span> Coffee </a>
                    </li>
                    <li>
                        <a href="#todoGallery">
                            <span class="fa fa-money"></span> Restaurant </a>
                    </li>
                    <li>
                        <a href="#todoGallery">
                            <span class="fa fa-users"></span> Store Convenient </a>
                    </li>
                </ul>
            </li>
        </ul>
        <!-- End: Sidebar Menu -->

        <!-- Start: Sidebar Collapse Button -->
        <div class="sidebar-toggle-mini">
            <a href="#">
                <span class="fa fa-sign-out"></span>
            </a>
        </div>
        <!-- End: Sidebar Collapse Button -->

    </div>
    <!-- End: Sidebar Left Content -->

</aside>