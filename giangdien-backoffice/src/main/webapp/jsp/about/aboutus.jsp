<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="text-center">
    <!-- Section Intro-->
    <tiles:insertAttribute name="header" defaultValue="/jsp/section/navigate.jsp">
        <tiles:putAttribute name="title" value="About Us"/>
    </tiles:insertAttribute>
    <!-- Section About us-->
    <section class="section-98 section-sm-110">
        <div class="shell">
            <div class="range range-lg-center">
                <div class="cell-lg-10">
                    <h1><span class="reveal-block font-accent big"><spring:message code="label.who.we.are"/>/span></h1>
                    <hr class="divider bg-mantis offset-top-30"><img src="${pageContext.request.contextPath}/images/home/portfolio/done.jpg" alt="" <%--width="570" height="321"--%> class="img-responsive center-block shadow-drop-xl offset-top-66">
                    <p class="offset-top-50">At our restaurant, you can find representatives of the most popular cuisines on a worldwide scale. Whether you want a usual or exotic dish, don’t hesitate to leaf through our diverse menu and order what you like. We use only healthy ingredients, thus making our meals suitable for people who keep an eye on their ration or follow a diet. Are you a diner with special dietary needs? Then, you must pay a visit to our top-notch restaurant and try our wholesome food.</p>
                </div>
            </div>
        </div>
    </section>
    <!-- Section Our Awards-->
    <section class="context-dark">
        <div data-on="false" data-md-on="true" class="rd-parallax">
            <div data-speed="0.35" data-type="media" data-url="${pageContext.request.contextPath}/images/home/area/image-05-1920x575.jpg" class="rd-parallax-layer"></div>
            <div data-speed="0" data-type="html" class="rd-parallax-layer">
                <div class="shell section-98 section-sm-110">
                    <div class="range">
                        <div class="cell-md-4 text-md-left">
                            <h1><span class="reveal-block font-accent big"><spring:message code="label.awards"/></span><span class="reveal-block offset-top-4 h3 text-light text-uppercase">We are Proud of</span></h1>
                            <hr class="divider hr-md-left-0 bg-mantis offset-top-30">
                            <p>We are extremely happy and proud of be a partner of NhaAnLon and SONADEZI.</p>
                            <p></p>
                        </div>
                        <div class="cell-md-8 offset-top-66 offset-md-top-0">
                            <div class="row">
                                <%--<div class="col-xs-4"><img src="assets/images/placeholder/aboutus/image-06-170x326.png" alt="" width="170" height="326" class="img-responsive center-block"></div>
                                <div class="col-xs-4"><img src="assets/images/placeholder/aboutus/image-07-170x326.png" alt="" width="170" height="326" class="img-responsive center-block"></div>
                                <div class="col-xs-4"><img src="assets/images/placeholder/aboutus/image-08-170x326.png" alt="" width="170" height="326" class="img-responsive center-block"></div>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Section Best Goods-->
    <section style="url(${pageContext.request.contextPath}/images/home/area/image-11-1920x675.png) no-repeat center center">
        <div class="shell section-top-98 section-md-bottom-0 section-md-top-66">
            <div class="range range-md-reverse">
                <div class="cell-md-5 text-md-left section-md-top-50">
                    <h1><span class="reveal-block font-accent big">Best Food</span><span class="reveal-block offset-top-4 h3 text-light text-uppercase">From our chief cook</span></h1>
                    <hr class="divider hr-md-left-0 bg-mantis offset-top-30">
                    <p>The work is always in a full swing in our kitchen! Everyone here is on fire when it comes to cooking. The best cooks all over the world are gathered here together to create something really special to impress you deeply.</p>
                    <p>The latest in cooking fashion, best recipes and fresh goods, this is the formula of our success.</p>
                    <img src="${pageContext.request.contextPath}/images/home/area/image-10-229x82.png" alt="" width="229" height="82" class="img-responsive offset-to-30">
                </div>
                <div class="cell-md-7 cell-md-bottom veil reveal-sm-flex">
                    <%--<img src="images/image-09-669x610.png" alt="" width="669" height="610" class="img-responsive">--%>
                </div>
            </div>
        </div>
    </section>
    <section class="bg-gray-darkest section-98 section-110 context-dark">
        <div class="shell">
            <h1><span class="reveal-block font-accent big"><spring:message code="label.testimonials"/></span><span class="reveal-block offset-top-4 h3 text-light text-uppercase">What people say</span></h1>
            <hr class="divider bg-mantis offset-top-30">
            <div data-items="1" data-nav="true" data-nav-class='["owl-prev mdi mdi-chevron-left","owl-next mdi mdi-chevron-right"]' data-dots="true" class="owl-carousel owl-carousel-default owl offset-top-50 veil-owl-nav veil-md-owl-dots reveal-md-owl-nav">
                <div>
                    <blockquote class="quote inset-left-7p inset-right-7p">
                        <div class="icon mdi mdi-comment-text-outline"></div>
                        <p class="offset-top-30">
                            <q>I had my wedding party here this weekend. I have heard so many good reviews of this restaurant. It did not disappoint. The food was spectacular. Fresh and delicious. Everyone was very pleased.</q>
                        </p>
                        <h6 class="text-uppercase">
                            <cite class="text-normal text-light">- Huu Duc, Visitor</cite>
                        </h6>
                    </blockquote>
                </div>
                <div>
                    <blockquote class="quote inset-left-7p inset-right-7p">
                        <div class="icon mdi mdi-comment-text-outline"></div>
                        <p class="offset-top-30">
                            <q>I will never stop visiting this place. It is just a hideaway for me. I enjoy my meals and think of my global plans. Everything is perfect here.</q>
                        </p>
                        <h6 class="text-uppercase">
                            <cite class="text-normal text-light">- Thinh Nguyen, Visitor</cite>
                        </h6>
                    </blockquote>
                </div>
                <div>
                    <blockquote class="quote inset-left-7p inset-right-7p">
                        <div class="icon mdi mdi-comment-text-outline"></div>
                        <p class="offset-top-30">
                            <q>This place was fun and the food was good. The diversity of your menu impressed so much. All the dishes tasted great. Thank you! Would definitely recommend to all my friends.</q>
                        </p>
                        <h6 class="text-uppercase">
                            <cite class="text-normal text-light">- Thao Ly, Visitor</cite>
                        </h6>
                    </blockquote>
                </div>
            </div>
        </div>
    </section>
</div>