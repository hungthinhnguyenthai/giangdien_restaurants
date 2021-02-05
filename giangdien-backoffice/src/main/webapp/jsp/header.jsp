<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:importAttribute name="page"/>
<meta charset="utf-8">
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="keywords" content="Da Khuc Coffee & Restaurant">
<meta name="date" content="Apr 25">
<link rel="icon" href="${pageContext.request.contextPath}/images/icon/favicon.ico" type="image/x-icon">
<!-- Stylesheets-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/fonts/dancingScriptFont.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<!--Homepage Stylesheets-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/intergate.css">
<c:if test="${page == 'account'}">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
</c:if>
<c:if test="${page == 'product' || page == 'shoppingCart'}">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/product.css">
</c:if>
<!--[if lt IE 10]>
<div style="background: #212121; padding: 10px 0; box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3); clear: both; text-align:center; position: relative; z-index:1;"><a href="http://windows.microsoft.com/en-US/internet-explorer/"><img src="assets/images/coffee/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
<script src="${pageContext.request.contextPath}/js/html5shiv.min.js"></script>
<![endif]-->