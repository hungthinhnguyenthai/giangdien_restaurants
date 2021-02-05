<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!--Section Gallery-->
<section>
    <div id="section_2_wrapper">
        <div class="region region-section-2">
            <div id="block-views-portfolio-block-1" class="block-views-portfolio-block-1 block block-views align-center block-odd">
                <!-- RD Parallax-->
                <div data-on="false" data-md-on="true" class="rd-parallax context-dark">
                        <div data-speed="0.35" data-type="media" data-url="${pageContext.request.contextPath}/images/home/image-02-1920x935.jpg" class="rd-parallax-layer"></div>
                        <div class="rd-parallax-layer-holder">
                            <div class="shell section-98 section-sm-110">
                                <div>
                                    <h1 class="font-accent"><span class="big">Our Gallery</span></h1>
                                </div>
                                <div class="h3 text-uppercase text-light offset-top-4">Checkout our space</div>
                                <hr class="divider bg-mantis offset-top-30">
                            </div>
                        </div>
                    </div>
                <div class="section-98 section-110 isotope-wrap content block-content clearfix">
                    <!-- Isotope Filters-->
                    <div class="col-lg-3">
                        <div class="isotope-filters isotope-filters-vertical">
                            <ul class="list-inline list-inline-sm">
                                <li class="veil-md">
                                    <p>Choose your category:</p>
                                </li>
                                <li class="section-relative">
                                    <button data-custom-toggle="isotope-2" data-custom-toggle-disable-on-blur="true" class="isotope-filters-toggle btn btn-sm btn-default">Filter<span class="caret"></span></button>
                                    <ul id="isotope-2" class="list-sm-inline isotope-filters-list">
                                        <c:if test="${fn:length(services) gt 0}">
                                            <c:set var="hasImages" value="false"/>
                                            <c:forEach var="business" items="${services}">
                                                <c:if test="${fn:length(business.areas) gt 0}">
                                                    <c:forEach var="area" items="${business.areas}">
                                                        <c:if test="${fn:length(area.galleries) gt 0}">
                                                            <c:set var="hasImages" value="true"/>
                                                        </c:if>
                                                    </c:forEach>
                                                </c:if>
                                            </c:forEach>
                                            <c:if test="${hasImages eq 'true'}">
                                                <li><a data-isotope-filter="*" data-isotope-group="gallery" href="#" class="text-sbold active">All</a></li>
                                            </c:if>
                                        </c:if>
                                        <c:forEach var="business" items="${services}">
                                            <li><a data-isotope-filter="${business.name}" data-isotope-group="gallery" href="#" class="text-sbold">${business.title}</a></li>
                                        </c:forEach>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <%--Keep--%>
                    <div class="col-lg-9 offset-lg-top-0 offset-top-34">
                        <div data-isotope-layout="masonry" data-isotope-group="gallery" data-lightbox="gallery" class="isotope isotope--loaded">
                            <div class="row">
                                <c:forEach var="business" items="${services}">
                                    <c:forEach var="area" items="${business.areas}">
                                        <c:forEach var="gallery" items="${area.galleries}">
                                            <div data-filter="${business.name}" class="col-xs-12 col-sm-6 col-md-4 isotope-item" >
                                                <a href="${pageContext.request.contextPath}/${gallery.imageUrl}" data-lightbox="image" class="thumbnail-classic">
                                                    <figure>
                                                        <img src="${pageContext.request.contextPath}/${gallery.imageUrl}" alt=""/>
                                                    </figure>
                                                </a>
                                            </div>
                                        </c:forEach>
                                    </c:forEach>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <%--End--%>
                </div>
            </div>
        </div>
    </div>
</section>