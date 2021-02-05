<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!-- Page Head-->
<tiles:importAttribute name="tab"/>
<header class="page-header header_mod_1">
    <div class="page-header__body text-center">
        <div class="row row-xs-center">
            <div class="col-sm-6">
                <ul class="inline-list">
                    <li><a href="#"><span class="inner_name">twitter</span><span class="fa fa-twitter"></span> </a>
                    </li>
                    <li><a href="#"><span class="inner_name">facebook</span> <span
                            class="fa  fa-facebook"></span></a>
                    </li>
                    <li><a href="#"> <span class="inner_name">pinterest</span><span class="fa  fa-pinterest"></span></a>
                    </li>
                    <li><a href="#"><span class="inner_name">youtube</span><span class="fa fa-youtube"></span></a>
                    </li>
                    <li><a href="#"><span class="inner_name">instagram</span><span class="fa  fa-instagram"></span></a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="brand text-center">
            <span class="icon-xl material-icons-cloud_queue icon__position"></span>
            <span class="divider"></span>
            <h1><a href="${pageContext.request.contextPath}/controller/aktv">AKTV</a></h1>
        </div>
    </div>
    <!-- Swiper -->
    <div class="swiper-container swiper-slider swiper-slider-1" data-height="" data-min-height="600px"
         data-slide-effect="slide">
        <div class="swiper-wrapper text-center">
            <div class="swiper-slide" data-slide-bg="${pageContext.request.contextPath}/images/aktv/swiper_1.jpg">
                <div class="swiper-slide-caption">
                    <div class="container">
                        <h1 data-caption-animate="fadeInRight" data-caption-delay="300">
                            Applying ultra-modern technologies
                        </h1>

                        <p data-caption-delay="200">Make your business a booming one</p>
                    </div>
                </div>
            </div>
            <div class="swiper-slide" data-slide-bg="${pageContext.request.contextPath}/images/aktv/swiper_2.jpg">
                <div class="swiper-slide-caption">
                    <div class="container">
                        <h1 data-caption-animate="fadeInRight" data-caption-delay="300">
                            Crafting custom website designs
                        </h1>

                        <p data-caption-delay="200">High quality work for customer satisfaction</p>
                    </div>

                </div>
            </div>
            <div class="swiper-slide" data-slide-bg="${pageContext.request.contextPath}/images/aktv/swiper_3.jpg">
                <div class="swiper-slide-caption">
                    <div class="container">
                        <h1 data-caption-animate="fadeInRight" data-caption-delay="300">
                            Creative imagination is our power
                        </h1>

                        <p data-caption-delay="200">Professional designs that will capture your attention</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Swiper Pagination -->
        <div class="swiper-pagination"></div>
    </div>
    <!-- END Swiper -->
    <!-- RD Navbar -->
    <div class="rd-navbar-wrap">
        <nav class="rd-navbar" data-rd-navbar-lg="rd-navbar-static">
            <div class="rd-navbar-inner">
                <!-- RD Navbar Panel -->
                <div class="rd-navbar-panel">

                    <!-- RD Navbar Toggle -->
                    <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar"><span></span>
                    </button>
                    <!-- END RD Navbar Toggle -->

                    <!-- RD Navbar Brand -->
                    <div class="rd-navbar-brand">
                        <h1><a href="/" class="brand-name">
                            AKTV
                        </a>
                        </h1>
                    </div>
                    <!-- END RD Navbar Brand -->
                </div>
                <!-- END RD Navbar Panel -->

                <div class="rd-navbar-nav-wrap">

                    <!-- RD Navbar Nav -->
                    <ul class="rd-navbar-nav">
                        <li class="${tab == 'Home' ? 'active' : ''}">
                            <a href="${pageContext.request.contextPath}/controller/aktv">Home</a>

                        </li>
                        <li class="${tab == 'Aboutus' ? 'active' : ''}">
                            <a href="${pageContext.request.contextPath}/controller/aktv/aboutus">About us</a>
                        </li>
                    </ul>
                    <!-- END RD Navbar Nav -->
                </div>
            </div>
        </nav>
    </div>
    <!-- END RD Navbar -->
</header>