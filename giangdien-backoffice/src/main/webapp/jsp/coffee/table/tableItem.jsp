<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="status_class" value="dark"/>
<c:choose>
    <c:when test="${table.status.code == 0}">
        <c:set var="status_class" value="success"/>
    </c:when>
    <c:when test="${table.status.code == 1}">
        <c:set var="status_class" value="warning"/>
    </c:when>
    <c:when test="${table.status.code == 2}">
        <c:set var="status_class" value="primary"/>
    </c:when>
    <c:when test="${table.status.code == 3}">
        <c:set var="status_class" value="danger"/>
    </c:when>
    <c:otherwise>
        <c:set var="status_class" value="dark"/>
    </c:otherwise>
</c:choose>
<div class="tab-content mw900 center-block center-children">
    <div class="admin-form theme-${status_class} tab-pane active" id="${table.id}" role="tabpanel">
        <div class="panel panel-${status_class} heading-border">
            <div class="panel-heading">
                <span class="panel-title">
                    <i class="fa fa-sign-in"/>
                    Table ${table.id}
                </span>
            </div>
            <form method="post" action="/">
                <div class="panel-body p25 pt10">
                    <div class="section row">
                        <div class="admin-form col-md">
                            <div class="section-divider mv40">${table.status.title}</div>
                            <div class="section">
                                <c:choose>
                                    <c:when test="${logged}">
                                        <a href="#" class="admin-form button btn-social ordernow span-left btn-block">
                                            <span><i class="fa"></i></span>
                                            Order Now!
                                        </a>
                                    </c:when>
                                    <c:otherwise>
                                        <a href="${pageContext.request.contextPath}/controller/account/login" class="admin-form button btn-social login span-left btn-block">
                                            <span><i class="fa"></i></span>
                                            Login and Order Now!
                                        </a>
                                    </c:otherwise>
                                </c:choose>
                                <a href="#" class="admin-form button btn-social tableinfo span-left btn-block">
                                    <span><i class="fa"></i></span>
                                    Table Information
                                </a>
                                <a href="#" class="admin-form button btn-social callwaitress span-left btn-block">
                                    <span><i class="fa"></i></span>
                                    Call our waitress!
                                </a>

                                </div>
                            </div>
                        </div>
                </div>
            </form>
    </div>
</div></div>