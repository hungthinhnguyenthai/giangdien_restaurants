<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:importAttribute name="hasForm"/>
<tiles:importAttribute name="hasTask"/>
<tiles:importAttribute name="hasChart"/>
<tiles:importAttribute name="hasCalendar"/>
<tiles:importAttribute name="hasReportMap"/>
<tiles:importAttribute name="magnificPopup"/>
<tiles:importAttribute name="summernote"/>

<link href='http://fonts.googleapis.com/css?family=Fira+Sans:700,400,500,300' rel='stylesheet' type='text/css'>
<c:if test="${hasCalendar == 'true'}">
    <!-- FullCalendar Plugin CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin/fullcalendar.min.css">
</c:if>

<c:if test="${hasForm == 'true'}">
    <!-- Admin Forms CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin/admin-forms.min.css">
</c:if>

<c:if test="${magnificPopup == 'true'}">
    <!-- Plugin CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin/magnific-popup.css">
</c:if>

<c:if test="${summernote == 'true'}">
    <!-- Summernote CSS  -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin/summernote.css">
</c:if>

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/theme.css">

<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/icon/favicon.ico">