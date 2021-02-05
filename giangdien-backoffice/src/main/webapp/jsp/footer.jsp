<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:importAttribute name="page"/>
<!-- Default footer-->
<!-- Global Mailform Output-->
<div id="form-output-global" class="snackbars"></div>
<!-- Java script-->
<script src="${pageContext.request.contextPath}/js/core.min.js"></script>
<script src="${pageContext.request.contextPath}/js/script.js"></script>
<c:if test="${page == 'product'}">
    <script src="${pageContext.request.contextPath}/js/product.js"></script>
</c:if>