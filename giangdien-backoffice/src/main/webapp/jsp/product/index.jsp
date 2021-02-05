<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!--Section Intro-->
<section class="context-dark text-center">
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
                            <li>Product</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="product section-98">
    <div id="main" role="main">
        <div class="container">
            <div class="row">
                <div class="main_content  col-sm-12">
                    <div itemscope="" class="product-scope">
                        <div class="product_wrap">
                            <div class="row">
                                <c:if test="${not empty product.galleries}">
                                    <div class="col-sm-5 col-md-4 product_images product_left">
                                        <div class="elevatezoom_big_wrapper">
                                            <div class="zoomWrapper">
                                                <img id="elevatezoom_big" src="${pageContext.request.contextPath}/${product.galleries.get(0).imageUrl}" alt="" >
                                            </div>
                                        </div>
                                        <%--<div id="elevatezoom_gallery" class="swiper-container swiper-container-horizontal">
                                            <div class="swiper-wrapper">
                                                <c:forEach var="gallery" items="${product.galleries}">
                                                    <a class="swiper-slide swiper-slide-duplicate" href="#">
                                                        <img src="${pageContext.request.contextPath}/${gallery.imageUrl}" alt="">
                                                    </a>
                                                </c:forEach>
                                            </div>
                                            <div id="elevatezoom_gallery__prev" class="swiper_btn btn_prev"></div>
                                            <div id="elevatezoom_gallery__next" class="swiper_btn btn_next"></div>
                                        </div>--%>
                                    </div>
                                </c:if>
                                <div class="col-sm-7 col-md-8">
                                    <form action="#" method="post" enctype="multipart/form-data" id="product-actions">
                                        <div class="product_info__wrapper">
                                            <div class="product_info__left">
                                                <h1 class="product_name">${product.name}</h1>
                                                <%--<div class="options clearfix">
                                                    <div class="variants-wrapper ">
                                                        <div class="selector-wrapper">
                                                            <label for="product-select-option-0">Color</label>
                                                            <select class="single-option-selector" data-option="option1" id="product-select-option-0">
                                                                <option value="Black">Black</option>
                                                                <option value="Green">Green</option>
                                                                <option value="White">White</option>
                                                            </select>
                                                        </div>
                                                        <div class="selector-wrapper">
                                                            <label for="product-select-option-1">Size</label>
                                                            <select class="single-option-selector" data-option="option2" id="product-select-option-1">
                                                                <option value="XL">XL</option><option value="XXL">XXL</option>
                                                            </select>
                                                        </div>
                                                        <div class="selector-wrapper">
                                                            <label for="product-select-option-2">Type</label>
                                                            <select class="single-option-selector" data-option="option3" id="product-select-option-2">
                                                                <option value="Ground">Ground</option><option value="Instant">Instant</option>
                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>--%>

                                               <%-- <div class="product_details">
                                                    <p class="product_details__item product_weight"><b>Weight:</b> <span id="product_weight">2.65 lb</span></p>
                                                    <p class="product_details__item product_sku"><b>SKU:</b> <span id="product_sku">—</span></p>
                                                    <p class="product_details__item product_barcode"><b>Barcode:</b> <span id="product_barcode">—</span></p>
                                                </div>--%>

                                                <div class="product_details">
                                                    <%--<p class="product_details__item product_collections">
                                                        <b>Collections:</b>
                                                        <a href="#">Green Tea</a>, <a href="#">Organic Matcha</a>, <a href="#">Pu-Erh Tea</a>, <a href="#">Rooibos Tea</a>, <a href="#">Wellness Tea</a>
                                                    </p>
                                                    <p class="product_details__item product_type">
                                                        <b>Product type:</b>
                                                        <a href="#" title="Sale">Sale</a>
                                                    </p>
                                                    <p class="product_details__item product_vendor"><b>Vendor:</b> <a href="#" title="Tea store">Tea store</a></p>
                                                    <p class="product_details__item product_tags"><b>Tags:</b> <span>Herbal Tea</span>, <span>Organic Matcha</span></p>
                                                    <p class="product_details__item product_nutrition"> <b>Nutrition Facts</b>  <span>Calories: 650</span></p>--%>
                                                </div>
                                            </div>

                                            <div class="product_info__right">
                                                <div id="product_price">
                                                    <p class="price product-price">
                                                        <span class="money" data-currency-usd="${product.price}">${product.priceAndCurrency} VND</span>
                                                        <%--<span class="money compare-at-price money_sale" data-currency-usd="$16.00">$16.00</span>
                                                        <span class="money_sale_percent">– 6%</span>--%>
                                                    </p>
                                                </div>

                                                <p class="product_details__item" id="product_quantity">
                                                    <b class="aval_label">Availability:</b>
                                                    <span class="notify_success"> <b>Available</b></span>
                                                    <%--<span class="notify_success"><b>100</b> item(s)</span>--%>
                                                </p>

                                                <div id="purchase">
                                                    <label for="quantity_form">Choose quantity:</label>

                                                    <div class="quantity_box">
                                                        <input id="quantity_form" type="text" name="quantity" value="1" class="quantity_input">
                                                        <span class="quantity_modifier quantity_down" id="quantity_down"><i class="fa fa-minus"></i></span>
                                                        <span class="quantity_modifier quantity_up" id="quantity_up"><i class="fa fa-plus"></i></span>
                                                    </div>

                                                    <button class="btn btn-cart" type="submit" id="add-to-cart">Add to cart</button>
                                                </div>

                                                <%--<div class="addthis_sharing_toolbox">
                                                    <div class="mprm-ingredients ">
                                                        <b class="mprm-title">Ingredients</b>
                                                        <ul class="mprm-list">
                                                            <li class="mprm-ingredient">200g of Black Angus steak</li>
                                                            <li class="mprm-ingredients-delimiter">/</li>
                                                            <li class="mprm-ingredient">Eggs</li>
                                                            <li class="mprm-ingredients-delimiter">/</li>
                                                            <li class="mprm-ingredient">Lemon</li>
                                                            <li class="mprm-ingredients-delimiter">/</li>
                                                            <li class="mprm-ingredient">Rice</li>
                                                            <li class="mprm-ingredients-delimiter">/</li>
                                                            <li class="mprm-ingredient">Salmon</li>
                                                            <li class="mprm-ingredients-delimiter">/</li>
                                                            <li class="mprm-ingredient">Salt</li>
                                                            <li class="mprm-ingredients-delimiter">/</li>
                                                            <li class="mprm-ingredient">Thyme</li>
                                                            <li class="mprm-ingredients-delimiter">/</li>
                                                            <li class="mprm-ingredient">Water</li>
                                                            <li class="mprm-ingredients-delimiter">/</li>
                                                        </ul>
                                                        <div class="mprm-clear"></div>
                                                    </div>
                                                </div>--%>
                                            </div>
                                        </div>
                                    </form>

                                </div>
                            </div><!-- /.row -->

                            <div class="product_description">
                                <h3 class="product_description__title">Description</h3>

                                <div class="rte" itemprop="description">
                                    <%--<h2>Make a pause and have a cup of tea</h2>
                                    We have a wide range of fresh teas and the products to serve them! Our gourmet tea assortments will suit any occasion and any taste. Green tea, black tea, white tea, flavored tea and many others to surprise and astonish you!<br><br>We are experts in tea and we will teach you this art with pleasure! If you are already a tea lover, you will find a real paradise of tea aromas and tastes visiting our Tea store. Our goal is to fill your cup with joy you can share with guests and friends leaving far away boring fuss.<br><br>
                                    <h2>Our gourmet tea assortments will suit any occasion and any taste</h2>
                                    <p>Green tea, black tea, white tea, flavored tea and many others to surprise and astonish you!</p>
                                    <p>We are experts in tea and we will teach you this art with pleasure! If you are already a tea lover, you will find a real paradise of tea aromas and tastes visiting our Tea store.</p>
                                    <ul>
                                        <li>You can order tea samples to taste any tea from our collection and make your opinion what you like most of all</li>
                                        <li>Our Tea store will be a small island of pleasure you are welcome to discover among everyday routine</li>
                                        <li>We have tea blends for any situation and mood: taste our teas to wake up, relax, rejuvenate</li>
                                    </ul>
                                    <h3>Do you want some exotic tea?&nbsp;</h3>
                                    <p>We are ready to please tea beginners and tea gurus.</p>
                                    <p>Our Tea store will be a small island of pleasure you are welcome to discover among everyday routine.&nbsp;Let us show you the way you can enjoy your life with just several swallows.</p>--%>
                                </div>
                            </div>



                            <%--<p class="product_pagination">

                                <a href="/collections/green-tea/products/celestial-seasonings-tea-sampler" class="btn product_prev">← Previous Product</a>


                                <a href="/collections/green-tea/products/harney-and-sons-earl-grey-tea-4-ounce-tin" class="btn product_next">Next Product →</a>

                            </p>--%>


                        </div>
                        <!-- /.product_wrap -->
                    </div>

                    <div class="widget_related_products">
                        <h3>Related products</h3>

                        <%--<div class="widget_content">
                            <ul class="row product_listing_main product_listing_related">
                                <li class="col-sm-3 product_related product__1">
                                    <div class="product_wrapper">
                                        <div class="product_img">
                                            <a href="/collections/green-tea/products/celestial-seasonings-tea-sampler" title="Celestial Seasonings Tea Sampler"><img src="//cdn.shopify.com/s/files/1/1328/6421/products/celestial-seasonings-tea-sampler_01_medium.png?v=1465129250" alt="Celestial Seasonings Tea Sampler"></a>
                                        </div>

                                        <div class="product_info">
                                            <div class="product_name"><a href="/products/celestial-seasonings-tea-sampler" title="Celestial Seasonings Tea Sampler">Celestial Seasonings Tea Sampler</a></div>
                                            <div class="product_price"><span class="money" data-currency-usd="$13.00">$13.00</span></div>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3 product_related product__2">
                                    <div class="product_wrapper">
                                        <div class="product_img">
                                            <a href="/collections/green-tea/products/harney-and-sons-earl-grey-tea-4-ounce-tin" title="Harney and Sons Earl Grey Tea 4 Ounce Tin"><img src="//cdn.shopify.com/s/files/1/1328/6421/products/harney-and-sons-earl-grey-tea-4-ounce-tin_01_medium.png?v=1465129313" alt="Harney and Sons Earl Grey Tea 4 Ounce Tin"></a>
                                        </div>

                                        <div class="product_info">
                                            <div class="product_name"><a href="/products/harney-and-sons-earl-grey-tea-4-ounce-tin" title="Harney and Sons Earl Grey Tea 4 Ounce Tin">Harney and Sons Earl Grey Tea 4 Ounce Tin</a></div>
                                            <div class="product_price"><span class="money" data-currency-usd="$9.00">$9.00</span></div>
                                        </div>
                                    </div>
                                </li>

                                <li class="col-sm-3 product_related product__3">
                                    <div class="product_wrapper">
                                        <div class="product_img">
                                            <a href="/collections/green-tea/products/organic-cranberry-black-tea-loose-leaf-bag" title="Organic Cranberry Black Tea Loose Leaf Bag"><img src="//cdn.shopify.com/s/files/1/1328/6421/products/organic-cranberry-black-tea-loose-leaf-bag_01_medium.png?v=1465129345" alt="Organic Cranberry Black Tea Loose Leaf Bag"></a>
                                        </div>

                                        <div class="product_info">
                                            <div class="product_name"><a href="/products/organic-cranberry-black-tea-loose-leaf-bag" title="Organic Cranberry Black Tea Loose Leaf Bag">Organic Cranberry Black Tea Loose Leaf Bag</a></div>
                                            <div class="product_price"><span class="money" data-currency-usd="$22.00">$22.00</span></div>
                                        </div>
                                    </div>
                                </li>
                                <li class="col-sm-3 product_related product__4">
                                    <div class="product_wrapper">
                                        <div class="product_img">
                                            <a href="/collections/green-tea/products/positively-tea" title="Positively Tea"><img src="//cdn.shopify.com/s/files/1/1328/6421/products/positively-tea_01_medium.png?v=1465129376" alt="Positively Tea"></a>
                                        </div>

                                        <div class="product_info">
                                            <div class="product_name"><a href="/products/positively-tea" title="Positively Tea">Positively Tea</a></div>
                                            <div class="product_price"><span class="money" data-currency-usd="$9.00">$9.00</span></div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>--%>
                    </div>


                </div>


            </div>
        </div>
    </div>
</section>