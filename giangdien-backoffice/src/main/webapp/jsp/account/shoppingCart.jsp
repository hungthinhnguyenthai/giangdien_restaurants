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
                            <li><a href="${pageContext.request.contextPath}/controller/coffee">Account</a></li>
                            <li>Shopping Cart</li>
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

                    <div class="cart_page">
                        <div id="cart_loader" class="loader_off">
                            <div class="global_loader"></div>
                        </div>

                        <h1 class="page_heading">Shopping Cart</h1>

                        <div id="cart_content">


                            <form action="/cart" method="post" class="">
                                <table class="cart_list">
                                    <thead>
                                    <tr>
                                        <th>Product</th>
                                        <th>Price</th>
                                        <th>Quantity</th>
                                        <th>Subtotal</th>
                                        <th></th>
                                    </tr>
                                    </thead>

                                    <tbody>

                                    <tr class="cart_item" data-id="21381299651">
                                        <td class="cell_1">
                                            <div class="cart_item__img">
                                                <a href="/products/grosche-hand-made-premium-12-blooming-tea-variety-pack-green">
                                                    <img src="//cdn.shopify.com/s/files/1/1328/6421/products/grosche-hand-made-premium-12-blooming-tea-variety-pack-green_01_medium.png?v=1465129299" alt="GROSCHE Hand made premium 12 blooming tea variety pack Green - Black / XL / Ground">
                                                </a>
                                            </div>

                                            <div class="cart_item__info">
                                                <h3 class="cart_item__name product_name">
                                                    <a href="/products/grosche-hand-made-premium-12-blooming-tea-variety-pack-green">
                                                        GROSCHE Hand made premium 12 blooming tea variety pack Green
                                                    </a>
                                                </h3>


                                                <p class="cart_item__variant">Black / XL / Ground</p>


                                                <div class="cart_item__details">
                                                    <p class="item_type"><span>Product type:</span> Sale</p>
                                                    <p class="item_vendor"><span>Vendor:</span> Tea store</p>
                                                    <p class="item_weight"><span>Weight:</span> 2.65 lb</p>
                                                </div>


                                            </div>
                                        </td>

                                        <td class="cell_2 cart_price">
                                            <span class="money" data-currency-usd="$15.00">$15.00</span>
                                        </td>

                                        <td class="cell_3">
                                            <div class="quantity_box">
                                                <input class="quantity_input" id="updates_21381299651" name="updates[]" value="1" type="text">
                                                <span class="quantity_modifier quantity_down"><i class="fa fa-minus"></i></span>
                                                <span class="quantity_modifier quantity_up"><i class="fa fa-plus"></i></span>
                                            </div>

                                            <div>
                                                <button class="btn cart_update">Update</button>
                                            </div>
                                        </td>

                                        <td class="cell_4 cart_price">
                                            <span class="money" data-currency-usd="$15.00">$15.00</span>
                                        </td>

                                        <td class="cell_5">
                                            <a class="cart_item__remove" title="1" href="#"><i class="fa fa-trash"></i></a>
                                        </td>
                                    </tr>

                                    </tbody>

                                    <tfoot>
                                    <tr class="cart_buttons">
                                        <td colspan="5">
                                            <a class="btn btn-alt cart_continue" href="/collections">Continue shopping</a>
                                            <button class="btn cart_update">Update cart</button>
                                            <a class="btn" id="cart_clear" href="#">Clear cart</a>


                                        </td>
                                    </tr>

                                    <tr class="cart_summary">
                                        <td colspan="5">
                                            <p class="cart_summary__row">Total weight <span>2.64 lb</span></p>
                                            <p class="cart_summary__row">Total price <span class="money" data-currency-usd="$15.00">$15.00</span></p>
                                            <p class="alert alert-warning cart_summary__notification">
                                                Computers process all orders in USD. While the content of your cart is currently displayed in USD, you will checkout using USD at the most current exchange rate.
                                            </p>
                                            <p class="cart_summary__instructions">
                                                <label>Special instructions for seller</label>
                                                <textarea class="form-control" name="note"></textarea>
                                            </p>
                                            <div class="cart_summary__checkout">
                                                <ul class="cart_summary__methods">
                                                    <li><img src="//cdn.shopify.com/s/files/1/1328/6421/t/2/assets/cc-amex.png?13500979549034043619" alt=""></li>
                                                    <li><img src="//cdn.shopify.com/s/files/1/1328/6421/t/2/assets/cc-discover.png?13500979549034043619" alt=""></li>
                                                    <li><img src="//cdn.shopify.com/s/files/1/1328/6421/t/2/assets/cc-visa.png?13500979549034043619" alt=""></li>
                                                    <li><img src="//cdn.shopify.com/s/files/1/1328/6421/t/2/assets/cc-mastercard.png?13500979549034043619" alt=""></li>
                                                    <li><img src="//cdn.shopify.com/s/files/1/1328/6421/t/2/assets/cc-maestro.png?13500979549034043619" alt=""></li>
                                                    <li><img src="//cdn.shopify.com/s/files/1/1328/6421/t/2/assets/cc-cirrus.png?13500979549034043619" alt=""></li>
                                                    <li><img src="//cdn.shopify.com/s/files/1/1328/6421/t/2/assets/cc-paypal.png?13500979549034043619" alt=""></li>
                                                    <li><img src="//cdn.shopify.com/s/files/1/1328/6421/t/2/assets/cc-google.png?13500979549034043619" alt=""></li>
                                                </ul>
                                                <button type="submit" name="checkout" class="btn">Proceed to checkout</button>
                                            </div>
                                        </td>
                                    </tr>
                                    </tfoot>
                                </table>
                            </form>


                        </div>
                    </div>


                </div>


            </div>
        </div>
    </div>
</section>