<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<tiles:importAttribute name="headerTop"/>
<tiles:importAttribute name="sidebar"/>
<tiles:importAttribute name="topbar"/>
<tiles:importAttribute name="content"/>
<tiles:importAttribute name="footerTop"/>
<tiles:importAttribute name="rightbar"/>
<tiles:importAttribute name="toolbox"/>

<tiles:importAttribute name="hasTask"/>
<tiles:importAttribute name="hasChart"/>
<tiles:importAttribute name="hasCalendar"/>
<tiles:importAttribute name="hasReportMap"/>
<tiles:importAttribute name="classType"/>
<tiles:importAttribute name="isMainBoard"/>
<tiles:importAttribute name="hasForm"/>
<tiles:importAttribute name="tagsPlugin"/>
<tiles:importAttribute name="fileUploadPlugin"/>
<tiles:importAttribute name="holderPlugin"/>
<tiles:importAttribute name="datePlugin"/>
<tiles:importAttribute name="magnificPopup"/>
<tiles:importAttribute name="summernote"/>
<tiles:importAttribute name="messageDocker"/>
<tiles:importAttribute name="canvasBG"/>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv = "Content-Type" content="text/html; charset=utf-8">
    <title><tiles:getAsString name="title"/></title>
    <tiles:insertAttribute name="header">
        <tiles:putAttribute name="hasForm" value="${hasForm}"/>
        <tiles:putAttribute name="hasTask" value="${hasTask}"/>
        <tiles:putAttribute name="hasChart" value="${hasChart}"/>
        <tiles:putAttribute name="hasCalendar" value="${hasCalendar}"/>
        <tiles:putAttribute name="hasReportMap" value="${hasReportMap}"/>
        <tiles:putAttribute name="magnificPopup" value="${magnificPopup}"/>
        <tiles:putAttribute name="summernote" value="${summernote}"/>
    </tiles:insertAttribute>
</head>

<body class="${classType}">

    <tiles:insertAttribute name="main">
        <tiles:putAttribute name="headerTop" value="${headerTop}"/>
        <tiles:putAttribute name="sidebar" value="${sidebar}"/>
        <tiles:putAttribute name="topbar" value="${topbar}"/>
        <tiles:putAttribute name="content" value="${content}"/>
        <tiles:putAttribute name="footerTop" value="${footerTop}"/>
        <tiles:putAttribute name="rightbar" value="${rightbar}"/>
        <tiles:putAttribute name="toolbox" value="${toolbox}"/>
    </tiles:insertAttribute>
<!-- End: Main -->

<!-- BEGIN: PAGE SCRIPTS -->
    <tiles:insertAttribute name="footer">
        <tiles:putAttribute name="datePlugin" value="${datePlugin}"/>
        <tiles:putAttribute name="holderPlugin" value="${holderPlugin}"/>
        <tiles:putAttribute name="tagsPlugin" value="${tagsPlugin}"/>
        <tiles:putAttribute name="fileUploadPlugin" value="${fileUploadPlugin}"/>
        <tiles:putAttribute name="isMainBoard" value="${isMainBoard}"/>
        <tiles:putAttribute name="hasTask" value="${hasTask}"/>
        <tiles:putAttribute name="hasChart" value="${hasChart}"/>
        <tiles:putAttribute name="hasCalendar" value="${hasCalendar}"/>
        <tiles:putAttribute name="hasReportMap" value="${hasReportMap}"/>
        <tiles:putAttribute name="magnificPopup" value="${magnificPopup}"/>
        <tiles:putAttribute name="summernote" value="${summernote}"/>
        <tiles:putAttribute name="messageDocker" value="${messageDocker}"/>
        <tiles:putAttribute name="canvasBG" value="${canvasBG}"/>
    </tiles:insertAttribute>
<!-- END: PAGE SCRIPTS -->
</body>

</html>