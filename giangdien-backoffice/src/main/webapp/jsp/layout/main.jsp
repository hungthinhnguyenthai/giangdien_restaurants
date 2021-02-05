<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<tiles:insertAttribute name="toolbox"/>
<!-- Start: Main -->
<div id="main">
    <header class="navbar navbar-fixed-top">
        <tiles:insertAttribute name="headerTop">
            <%--<tiles:putAttribute name="page" value="${page}"/>--%>
        </tiles:insertAttribute>
    </header>
    <!-- End: Header -->

    <!-- Start: Sidebar -->
    <tiles:insertAttribute name="sidebar"/>
    <!-- End: Sidebar Left -->

    <!-- Start: Content-Wrapper -->
    <section id="content_wrapper">

        <!-- Start: Topbar-Dropdown -->
        <tiles:insertAttribute name="topbar"/>
        <!-- End: Topbar-Dropdown -->

        <!-- Begin: Content -->
        <tiles:insertAttribute name="content"/>
        <!-- End: Content -->

        <!-- Begin: Page Footer -->
        <footer id="content-footer" class="affix">
            <tiles:insertAttribute name="footerTop"/>
        </footer>
        <!-- End: Page Footer -->

    </section>
    <!-- End: Content-Wrapper -->

    <!-- Start: Right Sidebar -->
    <tiles:insertAttribute name="rightbar"/>
    <!-- End: Right Sidebar -->
</div>