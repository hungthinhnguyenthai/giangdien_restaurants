<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!-- Page Head-->
<tiles:importAttribute name="tab"/>
<header class="page-head slider-menu-position">
    <!-- RD Navbar Transparent-->
    <div class="rd-navbar-wrap  text-center">
        <nav class="rd-navbar rd-navbar-default rd-navbar-transparent" data-auto-height="true" data-md-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-stick-up="true">
            <div class="rd-navbar-inner">
                <!-- RD Navbar Panel-->
                <div class="rd-navbar-panel">
                    <!-- RD Navbar Toggle-->
                    <button data-rd-navbar-toggle=".rd-navbar, .rd-navbar-nav-wrap" class="rd-navbar-toggle"><span></span></button>
                    <!--Navbar Brand-->
                    <div class="rd-navbar-brand"><a href="${pageContext.request.contextPath}/controller/home"><img src='${pageContext.request.contextPath}/images/home/logo.png' alt=''/><span class="rd-navbar-brand-slogan font-accent text-bold text-white">${baseInfo.businessSector}</span></a></div>
                </div>
                <div class="rd-navbar-menu-wrap">
                    <div class="rd-navbar-nav-wrap">
                        <div class="rd-navbar-mobile-scroll">
                            <!--Navbar Brand Mobile-->
                            <div class="rd-navbar-mobile-brand"><a href="${pageContext.request.contextPath}/controller/home"><img src='${pageContext.request.contextPath}/images/home/logo.png' alt=''/></a></div>
                            <div class="form-search-wrap">
                                <form action="#" method="GET" class="form-search">
                                    <div class="form-group">
                                        <label for="rd-navbar-form-search-widget" class="form-label form-search-label form-label-sm"><spring:message code="label.search"/></label>
                                        <input id="rd-navbar-form-search-widget" type="text" name="s" autocomplete="off" class="form-search-input input-sm form-control form-control-gray-lightest input-sm"/>
                                    </div>
                                    <button type="submit" class="form-search-submit"><span class="mdi mdi-magnify"></span></button>
                                </form>
                            </div>
                            <!-- RD Navbar Nav-->
                            <ul class="rd-navbar-nav">
                                <li class="${tab == 'Home' ? 'active' : ''}">
                                    <a href="${pageContext.request.contextPath}/controller/home">
                                        <span><spring:message code="label.home"/></span>
                                    </a>
                                </li>
                                <li class="${tab == 'AboutUs' ? 'active' : ''}">
                                    <a href="${pageContext.request.contextPath}/controller/home/aboutus">
                                        <span><spring:message code="label.aboutUs"/></span>
                                    </a>
                                </li>
                                <li class="rd-navbar--has-dropdown rd-navbar-submenu ${tab == 'Coffee' ? 'active' : ''}">
                                    <a href="${pageContext.request.contextPath}/controller/coffee">
                                        <span><spring:message code="label.coffee"/></span>
                                    </a>
                                    <ul class="rd-navbar-dropdown">
                                        <li><a href="#"><span class="text-middle"><spring:message code="label.menu"/></span></a></li>
                                        <li><a href="#"><span class="text-middle"><spring:message code="label.order"/></span></a></li>
                                    </ul>
                                    <span class="rd-navbar-submenu-toggle"></span>
                                </li>
                                <li class="rd-navbar--has-dropdown rd-navbar-submenu ${tab == 'Restaurant' ? 'active' : ''}">
                                    <a href="${pageContext.request.contextPath}/controller/restaurant"><span><spring:message code="label.restaurant"/></span></a>
                                    <ul class="rd-navbar-dropdown">
                                        <li><a href="#"><span class="text-middle"><spring:message code="label.menu"/></span></a></li>
                                        <li><a href="#"><span class="text-middle"><spring:message code="label.order"/></span></a></li>
                                    </ul>
                                    <span class="rd-navbar-submenu-toggle"></span>
                                </li>
                                <li class="${tab == 'StoreConvenience' ? 'active' : ''}">
                                    <a href="${pageContext.request.contextPath}/controller/store">
                                        <span><spring:message code="label.store.convenience"/></span>
                                    </a>
                                </li>
                                <li class="${tab == 'Contacts' ? 'active' : ''}">
                                    <a href="${pageContext.request.contextPath}/controller/contacts">
                                        <span><spring:message code="label.contacts"/></span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!--Navbar Search-->
                    <div class="rd-navbar-search"><a data-rd-navbar-toggle=".rd-navbar-inner,.rd-navbar-search" class="rd-navbar-search-toggle mdi"><span></span></a>
                        <form action="#" method="GET" class="rd-navbar-search-form search-form-icon-right">
                            <div class="form-group">
                                <label for="rd-navbar-search-form-input" class="form-label"><spring:message code="label.search.placeholder">Type and hit enter...</spring:message></label>
                                <input id="rd-navbar-search-form-input" type="text" name="s" autocomplete="off" class="rd-navbar-search-form-input form-control form-control-gray-lightest"/>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </nav>
    </div>
</header>