<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="inError" value="${not empty param.login_error}"/>
<!-- Start: Main -->
<div id="main">
    <!-- Start: Content-Wrapper -->
    <section id="content_wrapper">

        <!-- begin canvas animation bg -->
        <div id="canvas-wrapper">
            <canvas id="demo-canvas"></canvas>
        </div>

        <!-- Begin: Content -->
        <section id="content">
            <div class="admin-form theme-info" id="login1">

                <div class="row mb15 table-layout">

                    <div class="col-xs-6 va-m pln">
                        <a href="/" title="Return to Dashboard">
                            <%--<img src="#" title="Logo" class="img-responsive w250">--%>
                        </a>
                    </div>

                    <div class="col-xs-6 text-right va-b pr5">
                        <div class="login-links">
                            <a href="#" class="active" title="Sign In">Sign In</a>
                            <span class="text-white"> | </span>
                            <a href="#" class="" title="Register">Register</a>
                        </div>

                    </div>

                </div>

                <div class="panel panel-info mt10 br-n">

                    <div class="panel-heading heading-border bg-white">
                        <span class="panel-title hidden">
                        <i class="fa fa-sign-in"></i>Register</span>
                        <div class="section row mn">
                            <div class="col-sm-4">
                                <a href="#" class="button btn-social facebook mr5 btn-block">
                        <span>
                        </span>Facebook</a>
                            </div>
                            <div class="col-sm-4">
                                <a href="#" class="button btn-social twitter mr5 btn-block">
                        <span>
                        </span>Twitter</a>
                            </div>
                            <div class="col-sm-4">
                                <a href="#" class="button btn-social googleplus btn-block">
                        <span>
                        </span>Google+</a>
                            </div>
                        </div>
                    </div>
                    <!-- end .form-header section -->

                    <c:if test="${inError}">
                        <div class="special-alerts">
                            <div class="alert alert-danger alert-dismissable">
                                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                                <i class="fa fa-remove pr10"></i>
                                <strong>Login failed!</strong> Unable to login, Please try again.
                            </div>
                        </div>
                    </c:if>
                    <form:form method="post" action="${pageContext.request.contextPath}/controller/administrator/j_spring_security_check" id="contact">
                        <div class="panel-body bg-light p30">
                            <div class="row">
                                <div class="col-sm-7 pr30">

                                    <div class="section row hidden">
                                        <div class="col-md-4">
                                            <a href="#" class="button btn-social facebook span-left mr5 btn-block">
                                            <span>
                                                <i class="fa fa-facebook"></i>
                                            </span>Facebook</a>
                                        </div>
                                        <div class="col-md-4">
                                            <a href="#" class="button btn-social twitter span-left mr5 btn-block"><span><i class="fa fa-twitter"></i></span>Twitter</a>
                                        </div>
                                        <div class="col-md-4">
                                            <a href="#" class="button btn-social googleplus span-left btn-block"><span><i class="fa fa-google-plus"></i></span>Google+</a>
                                        </div>
                                    </div>

                                    <div class="section">
                                        <label for="username" class="field-label text-muted fs14 mb5">Username</label>
                                        <label for="username" class="field prepend-icon">
                                            <input type="text" name="j_username" id="username" class="pl10 gui-input" placeholder="Enter username">
                                        </label>
                                    </div>
                                    <!-- end section -->

                                    <div class="section">
                                        <label for="username" class="field-label text-muted fs14 mb5">Password</label>
                                        <label for="password" class="field prepend-icon">
                                            <input type="password" name="j_password" id="password" class="pl10 gui-input" placeholder="Enter password">
                                        </label>
                                    </div>
                                    <!-- end section -->

                                </div>
                                <div class="col-sm-5 br-l br-grey pl30">
                                    <h3 class="mb25"> You'll Have Access To Your:</h3>
                                    <p class="mb15">
                                        <span class="fa fa-check text-success pr5"></span> Manage Activity Logs</p>
                                    <p class="mb15">
                                        <span class="fa fa-check text-success pr5"></span> Manage Your Payments</p>
                                    <p class="mb15">
                                        <span class="fa fa-check text-success pr5"></span> Manage Your Business</p>
                                    <p class="mb15">
                                        <span class="fa fa-check text-success pr5"></span> Staying Connect With Your Co-Worker</p>
                                </div>
                            </div>
                        </div>
                        <!-- end .form-body section -->
                        <div class="clearfix p10 ph15">
                            <div class="checkbox-custom checkbox-custom--1 mb10">
                                <input type="checkbox" name="remember" id="checkboxDefault1">
                                <label for="checkboxDefault1">Remember me</label>
                            </div>

                        </div>

                        <div class="clearfix">
                            <button type="submit" class="button btn-default login-btn">Sign In</button>
                        </div>
                        <!-- end .form-footer section -->
                    </form:form>
                </div>
            </div>

        </section>
        <!-- End: Content -->
    </section>
    <!-- End: Content-Wrapper -->
</div>