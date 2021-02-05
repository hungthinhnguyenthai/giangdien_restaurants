<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="inError" value="${not empty param.login_error}"/>

<!--Section Intro-->
<section class="context-dark text-center">
    <div data-on="false" data-md-on="true" class="rd-parallax">
        <div data-speed="0.45" data-type="media" data-url="${pageContext.request.contextPath}/images/home/intro-01-1920x955.jpg" class="rd-parallax-layer"></div>
        <div data-speed="0.3" data-type="html" data-fade="true" class="rd-parallax-layer">
            <div class="shell">
                <div class="section-110 section-cover range range-xs-center range-xs-middle">
                    <div class="cell-md-8"><img src="${pageContext.request.contextPath}/images/home/intro-logo-175x173.png" alt="" width="175" height="173">
                        <h1 class="font-accent"><span class="big">Giang Dien</span></br><span>Coffee & Restaurant</span></h1>
                        <div class="group">
                            <div class="group-item reveal-block"><span class="icon icon-xxs mdi mdi-navigation text-middle"></span> <span class="text-middle">Giang Dien Industrial Park, Trang Bom District, Dong Nai Province, Vietnam</span>
                            </div>
                            <div class="group-item"><span class="icon icon-xxs mdi mdi-clock text-middle"></span> <span class="text-middle">07:00 am - 11:00 pm</span>
                            </div>
                            <div class="group-item"><span class="icon icon-xxs mdi mdi-phone text-middle"></span> <span class="text-middle">(+84) 0908 098 278</span>
                            </div>
                        </div>
                        <p class="offset-top-24 big veil reveal-sm-block">We introduce new cultures to visitors through cuisines of various countries, offering a special dish for everyone regardless of their food preferences.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Section Login Page-->
<section class="main-wrapper section-98 section-110 color_scheme scheme_1">
    <div id="wrapper1" class="container">
        <div id="wrapper2" class="row">
            <div class="main_content  col-sm-12">
                <h2 class="page_heading">Login or create an account</h2>
                <div id="account_login">
                    <div class="account_wrapper">
                        <div class="account_left">
                            <div class="account_section">
                                <h4>New here?</h4>
                                <p class="note">Registration is free and easy!</p>
                                <ul>
                                    <li>Faster checkout</li>
                                    <li>Save multiple shipping addresses</li>
                                    <li>View and track orders and more</li>
                                </ul>
                                <a id="account_register__link" class="btn" href="#">Create an account</a>
                            </div>
                        </div>

                        <div class="account_right">

                            <div class="account_section">
                                <form:form method="post" action="${pageContext.request.contextPath}/j_spring_security_check" class="form-horizontal">
                                    <p class="alert-form-info"></p>
                                    <h4>Already registered?</h4>
                                    <c:if test="${inError}">
                                        <div class="alert alert-danger"><ul><li>${sessionScope.SPRING_SECURITY_LAST_EXCEPTION.message}</li></ul></div>
                                    </c:if>
                                    <div class="form-group">
                                        <label for="customer_login" class="control-label">Login</label>
                                        <input type="login" value="" name="j_username" id="customer_login" class="form-control" size="30"><p class="alert-form-info"></p>
                                    </div>
                                    <div class="form-group">
                                        <label for="customer_password" class="control-label">Password</label>
                                        <input type="password" value="" name="j_password" id="customer_password" class="form-control" size="16"><p class="alert-form-info"></p>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn">Sign in</button><p class="alert-form-info"></p>
                                        <a id="account_reset__link" href="#">Forgot your password?</a>
                                    </div>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="account_register" class="account_section" style="display: none;">
                    <h4>Create an account <span><a class="link_close account_register__cancel" href="#">Close</a></span></h4>
                    <div class="form-horizontal">
                        <form method="post" id="create_customer" accept-charset="UTF-8"><input type="hidden" value="create_customer" name="form_type"><p class="alert-form-info"></p><input type="hidden" name="utf8" value="✓"><p class="alert-form-info"></p>
                            <div class="clearfix form-group">
                                <label for="first_name" class="login control-label col-sm-4">First name</label>
                                <div class="col-sm-4"><input type="text" value="" name="customer[first_name]" id="first_name" class="form-control" size="30"><p class="alert-form-info"></p></div>
                            </div>

                            <div class="clearfix form-group">
                                <label for="last_name" class="login control-label col-sm-4">Last name</label>
                                <div class="col-sm-4"><input type="text" value="" name="customer[last_name]" id="last_name" class="form-control" size="30"><p class="alert-form-info"></p></div>
                            </div>

                            <div class="clearfix form-group">
                                <label for="email" class="login control-label col-sm-4">Email address</label>
                                <div class="col-sm-4"><input type="email" value="" name="customer[email]" id="email" class="form-control" size="30"><p class="alert-form-info"></p></div>
                            </div>

                            <div class="clearfix form-group">
                                <label for="password" class="login control-label col-sm-4">Password</label>
                                <div class="col-sm-4"><input type="password" value="" name="customer[password]" id="password" class="form-control password" size="30"><p class="alert-form-info"></p></div>
                            </div>

                            <div class="form-group">
                                <div class="col-sm-offset-4 col-sm-4">
                                    <button class="btn btn-primary" type="submit">Register</button>
                                    <a class="account_register__cancel" href="#">Cancel</a>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div id="account_reset" class="account_section" style="display: none;">
                    <h4>Reset Password <span><a class="link_close account_reset__cancel" href="#">Close</a></span></h4>
                    <p class="note">We will send you an email to reset your password</p>
                    <form method="post" <%--action="/account/recover"--%> accept-charset="UTF-8"><input type="hidden" value="recover_customer_password" name="form_type"><p class="alert-form-info"></p><input type="hidden" name="utf8" value="✓"><p class="alert-form-info"></p>
                        <div class="clearfix form-horizontal">
                            <div class="form-group">
                                <label for="email" class="large col-sm-4">Email Address</label>
                                <div class="col-sm-4">
                                    <input class="form-control" type="email" value="" size="30" name="email" id="recover-email"><p class="alert-form-info"></p>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-4">
                                    <button class="btn" type="submit">Submit</button>
                                    <a class="account_reset__cancel" href="#">Cancel</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>