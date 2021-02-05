<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles-extras" prefix="tilesx" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<tiles:importAttribute name="tab"/>
<tiles:importAttribute name="page"/>
<!DOCTYPE html>
<html lang="en" class="wide wow-animation smoothscroll scrollTo">
    <head>
        <c:choose>
            <c:when test="${not empty title}">
                <title><tiles:getAsString name="title"/></title>
            </c:when>
            <c:otherwise>
                <title>${baseInfo.businessName}</title>
            </c:otherwise>
        </c:choose>

        <tiles:insertAttribute name="header" defaultValue="/jsp/header.jsp">
            <tiles:putAttribute name="page" value="${page}"/>
        </tiles:insertAttribute>
    </head>
    <body>
        <div class="page">
            <tiles:insertAttribute name="headerTop" defaultValue="/jsp/section/headerTop.jsp">
                <tiles:putAttribute name="tab" value="${tab}"/>
            </tiles:insertAttribute>
            <!-- Page Contents-->
            <main class="page-content">
                <tiles:insertAttribute name="content"/>
            </main>
            <tiles:insertAttribute name="footerTop" defaultValue="/jsp/section/footerTop.jsp"/>
        </div>
        <tiles:insertAttribute name="footer" defaultValue="/jsp/footer.jsp">
            <tiles:putAttribute name="page" value="${page}"/>
        </tiles:insertAttribute>
    </body>
</html>