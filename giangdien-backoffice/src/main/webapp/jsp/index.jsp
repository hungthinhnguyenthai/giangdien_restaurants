<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class=" text-center">
        <!--Section Intro-->
        <section class="context-dark">
            <div data-on="false" data-md-on="true" class="rd-parallax">
                <div data-speed="0.45" data-type="media" data-url="${pageContext.request.contextPath}/images/home/intro-01-1920x955.jpg" class="rd-parallax-layer"></div>
                <div data-speed="0.3" data-type="html" data-fade="true" class="rd-parallax-layer">
                    <div class="shell">
                        <div class="section-110 section-cover range range-xs-center range-xs-middle">
                            <div class="cell-md-8"><img src="${pageContext.request.contextPath}/images/home/intro-logo-175x173.png" alt="" width="175" height="173">
                                <h1 class="font-accent">
                                    <c:if test="${not empty baseInfo.storeName}">
                                        <span class="big">${baseInfo.storeName}</span>
                                    </c:if>
                                    <c:if test="${not empty baseInfo.businessSector}">
                                        </br><span>${baseInfo.businessSector}</span>
                                    </c:if>
                                </h1>
                                <div class="group">
                                    <c:if test="${(not empty baseInfo.addrStreet) && (not empty baseInfo.addrCity) && (not empty baseInfo.addrProvince) && (not empty baseInfo.addrCountry)}">
                                        <div class="group-item reveal-block"><span class="icon icon-xxs mdi mdi-navigation text-middle"></span> <span class="text-middle">${baseInfo.addrStreet}, ${baseInfo.addrCity}, ${baseInfo.addrProvince}, ${baseInfo.addrCountry}</span></div>
                                    </c:if>
                                    <c:if test="${(not empty baseInfo.openTime) && (not empty baseInfo.closeTime)}">
                                        <div class="group-item"><span class="icon icon-xxs mdi mdi-clock text-middle"></span> <span class="text-middle">${baseInfo.openTime} - ${baseInfo.closeTime}</span></div>
                                    </c:if>
                                    <c:if test="${not empty baseInfo.businessPhone}">
                                        <div class="group-item"><span class="icon icon-xxs mdi mdi-phone text-middle"></span> <span class="text-middle">${baseInfo.businessPhone}</span></div>
                                    </c:if>
                                </div>
                                <c:if test="${not empty baseInfo.businessDesc}">
                                    <p class="offset-top-24 big veil reveal-sm-block">${baseInfo.businessDesc}</p>
                                </c:if>
                                <div class="group offset-top-50"><a href="#" data-custom-scroll-to="reserve-now" class="btn btn-lg btn-primary">Make a reservation</a></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Section Welcome-->
        <section class="main-wrapper">
            <div id="content_top_wrapper" class="content_top_wrapper img-bg parallax-box image-parallax-box">
                <div data-on="false" data-md-on="true" class="rd-parallax">
                    <div data-speed="0.5" data-responsive="true" data-type="media" data-url="${pageContext.request.contextPath}/images/home/bg01.jpg" class="rd-parallax-layer rd-parallax-layer-fix"></div>
                    <div data-speed="0" data-type="html" class="rd-parallax-layer">
                        <div class="container-12">
                            <div class="grid-12">
                                <div class="region region-content-top">
                                    <div class="shell">
                                        <div class="range text-lg-left">
                                            <div class="cell-sm-preffix-2 cell-sm-8 cell-lg-preffix-0 cell-lg-6 cell-lg-pull-6 offset-top-30 offset-lg-top-0">
                                                <div class="inset-lg-right-20">
                                                    <h1><span class="reveal-block font-accent big">Welcome</span><span class="reveal-block offset-top-4 h3 text-light text-uppercase">To Our Restaurant</span></h1>
                                                    <hr class="divider hr-lg-left-0 bg-mantis offset-top-30">
                                                    <p>Would you like to savor the exquisite cuisine and bring the art of dining to a new level? We obtain the freshest products from reputable purveyors and incorporate them into our exclusive dishes. Our menus are influenced by culinary traditions of Vietnamese, Far East and other parts of the world. We are open to experiments and often add new dishes to our menu. Our courteous and attentive waiters will bring you anything you wish.</p>
                                                    <div class="group text-right offset-top-30"><a href="events.html" class="btn btn-sm btn-primary">see all events</a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <jsp:include page="section/gallery.jsp"/>

        <!-- Section Business-->
        <section class="aktv">
            <div class="container-12">
                <div class="grid-12">
                    <div id="main" class="main clearfix">
                        <div id="content" class="content content-main ">
                            <div class="region region-content">
                                <div id="block-views-services-block"
                                     class="block-views-services-block block block-views align-center block-odd">
                                    <h1>
                                        <span class="reveal-block font-accent big">What we offer</span>
                                    </h1>

                                    <div class="content block-content clearfix">
                                        <div class="view view-services view-id-services view-display-id-block">
                                            <div class="view-header">
                                                <h5>Enjoying great food and wine is two of life’s great pleasures and we
                                                    sincerely hope that you experience both <br/>during your time with
                                                    us . . . today and always! </h5>
                                            </div>
                                            <div class="view-content">
                                                <c:forEach var="business" items="${services}" varStatus="loop">
                                                    <c:set var="odd_even_class" value="odd"/>
                                                    <c:set var="pos_class" value=""/>
                                                    <c:if test="${loop.index % 2 == 0}">
                                                        <c:set var="odd_even_class" value="even"/>
                                                    </c:if>
                                                    <c:if test="${loop.first}">
                                                        <c:set var="pos_class" value="alpha"/>
                                                    </c:if>
                                                    <c:if test="${loop.last}">
                                                        <c:set var="pos_class" value="omega"/>
                                                    </c:if>
                                                    <div class="views-row grid-3 ${pos_class} ${odd_even_class}">
                                                        <div class="views-field views-field-field-business-image">
                                                            <div class="field-content">
                                                                <img src="${pageContext.request.contextPath}/${business.logo}" width="75" height="67"/>
                                                            </div>
                                                        </div>
                                                        <h4 class="views-field views-field-title">
                                                            <span class="field-content">
                                                                <a href="#">${business.title}</a>
                                                            </span>
                                                        </h4>
                                                        <div class="views-field views-field-body">
                                                            <div class="field-content">
                                                                ${business.description}
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <jsp:include page="section/reserveNow.jsp"/>
        <jsp:include page="section/maps.jsp"/>
</div>