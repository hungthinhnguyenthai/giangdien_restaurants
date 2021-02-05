<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en" class="wide wow-animation smoothscroll scrollTo">
<head>
  <title>Giang Dien | Account</title>
  <jsp:include page="jsp/header.jsp"/>
</head>
<body>
<div class="page text-center">
  <header class="page-head slider-menu-position">
    <!-- RD Navbar Transparent-->
    <div class="rd-navbar-wrap">
      <nav class="rd-navbar rd-navbar-default rd-navbar-transparent" data-auto-height="true" data-md-layout="rd-navbar-fixed" data-lg-layout="rd-navbar-static" data-lg-stick-up="true">
        <div class="rd-navbar-inner">
          <!-- RD Navbar Panel-->
          <div class="rd-navbar-panel">
            <!-- RD Navbar Toggle-->
            <button data-rd-navbar-toggle=".rd-navbar, .rd-navbar-nav-wrap" class="rd-navbar-toggle"><span></span></button>
            <!--Navbar Brand-->
            <div class="rd-navbar-brand"><a href="${pageContext.request.contextPath}/controller/home"><img style='margin-top: -5px;margin-left: -15px;' width='138' height='31' src='${pageContext.request.contextPath}/images/home/logo.png' alt=''/><span class="rd-navbar-brand-slogan font-accent text-bold text-white">Restaurant</span></a></div>
          </div>
          <div class="rd-navbar-menu-wrap">
            <div class="rd-navbar-nav-wrap">
              <div class="rd-navbar-mobile-scroll">
                <!--Navbar Brand Mobile-->
                <div class="rd-navbar-mobile-brand"><a href="${pageContext.request.contextPath}/controller/home"><img style='margin-top: -5px;margin-left: -15px;' width='138' height='31' src='${pageContext.request.contextPath}/images/home/logo.png' alt=''/></a></div>
                <div class="form-search-wrap">
                  <form action="#" method="GET" class="form-search">
                    <div class="form-group">
                      <label for="rd-navbar-form-search-widget" class="form-label form-search-label form-label-sm">Search</label>
                      <input id="rd-navbar-form-search-widget" type="text" name="s" autocomplete="off" class="form-search-input input-sm form-control form-control-gray-lightest input-sm"/>
                    </div>
                    <button type="submit" class="form-search-submit"><span class="mdi mdi-magnify"></span></button>
                  </form>
                </div>
                <!-- RD Navbar Nav-->
                <ul class="rd-navbar-nav">
                  <li class="active">
                    <a href="${pageContext.request.contextPath}/controller/home">
                      <span>Home</span>
                    </a>
                  </li>
                  <li>
                    <a href="${pageContext.request.contextPath}/controller/home/aboutus">
                      <span>About Us</span>
                    </a>
                  </li>
                  <li>
                    <a href="${pageContext.request.contextPath}/controller/coffee">
                      <span>Coffee</span>
                    </a>
                  </li>
                  <li>
                    <a href="${pageContext.request.contextPath}/controller/restaurant">
                      <span>Restaurant</span>
                    </a>
                  </li>
                  <li>
                    <a href="${pageContext.request.contextPath}/controller/store">
                      <span>Store Convenience</span>
                    </a>
                  </li>
                  <li>
                    <a href="${pageContext.request.contextPath}/controller/contacts">
                      <span>Contacts</span>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
            <!--Navbar Search-->
            <div class="rd-navbar-search"><a data-rd-navbar-toggle=".rd-navbar-inner,.rd-navbar-search" class="rd-navbar-search-toggle mdi"><span></span></a>
              <form action="#" method="GET" class="rd-navbar-search-form search-form-icon-right">
                <div class="form-group">
                  <label for="rd-navbar-search-form-input" class="form-label">Type and hit enter...</label>
                  <input id="rd-navbar-search-form-input" type="text" name="s" autocomplete="off" class="rd-navbar-search-form-input form-control form-control-gray-lightest"/>
                </div>
              </form>
            </div>
          </div>
        </div>
      </nav>
    </div>
  </header>
  <!-- Page Contents-->
  <main class="page-content">
    <jsp:include page="jsp/account/login.jsp" />
  </main>
  <jsp:include page="/jsp/section/footerTop.jsp" />
</div>
<jsp:include page="jsp/footer.jsp" />
</body>
</html>