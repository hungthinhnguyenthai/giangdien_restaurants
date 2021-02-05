<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!--Section Intro-->
<section class="context-dark">
    <div data-on="false" data-md-on="true" class="rd-parallax">
        <div data-speed="0.45" data-type="media" data-url="${pageContext.request.contextPath}/images/home/intro-01-1920x955.jpg" class="rd-parallax-layer"></div>
        <div data-speed="0.3" data-type="html" data-fade="true" class="rd-parallax-layer">
            <div class="shell">
                <div class="section-110 range range-xs-center range-xs-middle">
                    <div class="cell-md-8"><img src="${pageContext.request.contextPath}/images/home/intro-logo-175x173.png" alt="" width="175" height="173">
                        <h1 class="font-accent"><span class="big">Coffee</span></h1>
                        <ul class="list-inline list-inline-dashed p">
                            <li><a href="${pageContext.request.contextPath}/controller/home">Home</a></li>
                            <li><a href="${pageContext.request.contextPath}/controller/coffee">Coffee</a></li>
                            <li>Order</li>
                        </ul>
                        <span class="reveal-block offset-top-4 h3 text-light text-uppercase">Pick up your table</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Section Menu-->
<section id="content" class="pn posr">
    <!-- Map Container -->
    <div class="map-container">
        <div id="mapplic" class="mapplic-element">
            <div class="mapplic-container">
                <%--Table details will show up here!--%>
            </div>
            <div class="mapplic-sidebar">
                <form class="mapplic-search-form">
                    <input type="text" spellcheck="false" placeholder="Search for location..." class="mapplic-search-input">
                    <button class="mapplic-search-clear"></button>
                </form>
                <div class="mapplic-list-container">
                    <ul class="mapplic-list" role="tablist">
                        <c:forEach var="area" items="${areas}">
                            <li class="mapplic-list-category 01 mapplic-list-shown" style="display: list-item;">
                                <a href="#" class="category-item" title="Area 1" style="background-color: ${area.color};">
                                    <span class="mapplic-list-count">${area.seats}</span>
                                    ${area.name}
                                </a>
                                    <ul style="border-color: ${area.color}; display: none;">
                                        <c:forEach var="location" items="${area.tables}">
                                            <li class="mapplic-list-location mapplic-list-shown" style="display: list-item;">
                                                <a href="#" data-table-id="${location.id}" data-controller="${pageContext.request.contextPath}/controller/coffee/table/" role="tab" data-toggle="tab" aria-expanded="false">
                                                    <h4>${location.name}</h4>
                                                    <span>${location.status.title}</span>
                                                </a>
                                            </li>
                                        </c:forEach>
                                    </ul>
                            </li>
                        </c:forEach>
                    </ul>
                    <p class="mapplic-not-found" style="display: none;">Nothing found. Please try a different search.</p>
                    <div class="mapplic-contact mapplic-sidebar-add mt50 well p10"></div>
                </div>
            </div>
        </div>
    </div>
</section>