<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="text-center">
    <!--Section Intro-->
    <section class="context-dark">
        <div data-on="false" data-md-on="true" class="rd-parallax">
            <div data-speed="0.45" data-type="media" data-url="https://cdn.shutterstock.com/shutterstock/videos/22269184/thumb/1.jpg" class="rd-parallax-layer"></div>
            <div data-speed="0.3" data-type="html" data-fade="true" class="rd-parallax-layer">
                <div class="shell">
                    <div class="section-110 range range-xs-center range-xs-middle">
                        <div class="cell-md-8"><img src="${pageContext.request.contextPath}/images/home/intro-logo-175x173.png" alt="" width="175" height="173">
                            <h1 class="font-accent"><span class="big">Coffee</span></h1>
                            <ul class="list-inline list-inline-dashed p">
                                <li><a href="${pageContext.request.contextPath}/controller/home">Home</a></li>
                                <li>Coffee</li>
                            </ul>
                            <div class="group offset-top-50">
                                <a href="${pageContext.request.contextPath}/controller/coffee/area" class="btn btn-lg btn-primary">
                                    Pick up your table now!
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Section Menu-->
    <section class="section-98 section-110">
        <div class="shell">
            <div class="isotope-wrap">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="isotope-filters isotope-filters-vertical">
                            <h4 class="text-uppercase text-bold isotope-filters-title offset-top-34">Categories</h4>
                            <ul class="list-inline list-inline-sm">
                                <li class="veil-md">
                                    <p>Choose your category:</p>
                                </li>
                                <li class="section-relative">
                                    <button data-custom-toggle="isotope-3" data-custom-toggle-disable-on-blur="true" class="isotope-filters-toggle btn btn-sm btn-default">Filter<span class="caret"></span></button>
                                    <ul id="isotope-3" class="list-sm-inline isotope-filters-list">
                                        <li><a data-isotope-filter="*" data-isotope-group="gallery" href="#" class="text-sbold active">All</a></li>
                                        <c:forEach var="menuItem" items="${categoriesMenu}">
                                            <li>
                                                <a data-isotope-filter="${menuItem.id}" data-isotope-group="gallery" href="#" class="text-sbold">${menuItem.name}</a>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- Isotope Content-->
                    <div class="col-lg-9 offset-lg-top-0 offset-top-34">
                        <div data-isotope-layout="masonry" data-isotope-group="gallery" class="isotope">
                            <c:forEach var="menuItem" items="${categoriesMenu}">
                                <c:forEach var="subCategory" items="${menuItem.subCategories}" varStatus="loop">
                                    <c:set var="odd_even_class" value="col-lg-7"/>
                                    <c:set var="even_odd_class" value="col-lg-5"/>
                                    <c:if test="${loop.index % 2 == 0}">
                                        <c:set var="even_odd_class" value="col-lg-5 col-lg-push-7"/>
                                        <c:set var="odd_even_class" value="col-lg-7 col-lg-pull-5"/>
                                    </c:if>
                                    <div data-filter="${menuItem.id}" class="isotope-item element-fullwidth offset-top-34">
                                        <div class="row">
                                            <div class="col-sm-8 col-sm-offset-2 col-lg-offset-0 ${even_odd_class}">
                                                <img src="${pageContext.request.contextPath}/${subCategory.randomlyGallery}" alt="" width="370" height="370" class="img-responsive element-fullwidth">
                                            </div>
                                            <div class="col-sm-8 col-sm-offset-2 col-lg-offset-0 ${odd_even_class}">
                                                <!-- Pricing Box type 1-->
                                                <ul class="box-pricing box-pricing-type-1 list-unstyled">
                                                    <c:forEach var="product" items="${subCategory.products}">
                                                        <li class="box-pricing-item">
                                                            <div class="box-pricing-title big text-uppercase text-spacing-120">
                                                                <div class="box-pricing-name text-darker text-bold">${product.name}</div>
                                                                <div class="box-pricing-dots"></div>
                                                                <div class="box-pricing-price h5 text-bold">${product.priceAndCurrency}</div>
                                                            </div>
                                                            <div class="box-pricing-desc text-dark offset-top-10">${product.description}</div>
                                                        </li>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <jsp:include page="../section/reserveLite.jsp"/>
</div>