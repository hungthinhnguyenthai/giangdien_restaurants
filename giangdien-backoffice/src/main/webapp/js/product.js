jQuery(function (e) {
    e(document).ready(function () {
        e("#quantity_form").on("focusout", function () {
            var i = e(this).val();
            e(this).val(isNaN(parseFloat(i)) && !isFinite(i) || 0 == parseInt(i) || "" == i ? 1 : parseInt(i) < 0 ? parseInt(i) - 2 * parseInt(i) : parseInt(i))
        }), e("#quantity_up").on("click", function () {
            var i = e("#quantity_form").val();
            e("#quantity_form").val(!isNaN(parseFloat(i)) && isFinite(i) ? parseInt(i) + 1 : 1)
        }), e("#quantity_down").on("click", function () {
            var i = e("#quantity_form").val();
            e("#quantity_form").val(!isNaN(parseFloat(i)) && isFinite(i) && i > 1 ? parseInt(i) - 1 : 1)
        });
    });
    $(window).load(function(){
        var quickViewGallery = new Swiper('#elevatezoom_gallery', {
            // width: 302,
            loop: true,
            speed: 500,
            slidesPerView: 4,
            spaceBetween: 10,
            prevButton: '#elevatezoom_gallery__prev',
            nextButton: '#elevatezoom_gallery__next',
            breakpoints: {
                1199: {
                    slidesPerView: 3
                }
            }
        });
    });
});
// CHOOSE OPTIONS BUTTON
/*
$(document.body).on('click', '.btn_options', function (e) {
    if ($(window).width() >= 768) {
        $(this).parent().parent().find('.quick_view_btn').trigger('click');
        e.preventDefault();
    }
    ;
});


// PRODUCT QUICK VIEW MINI
jQuery(function (e) {
    e(document.body).on("click", ".quick_view_btn", function (i) {
        i.preventDefault(), e(document.body).append('<div id="product_quick_view" style="display: none;"><div class="product_quick_wrapper"><div class="quick_view__left"><div id="img_big"></div><div class="product_images"><div id="img_gallery" class="swiper-container"><div class="swiper-wrapper"></div><div id="img_gallery__prev" class="swiper_btn btn_prev"></div><div id="img_gallery__next" class="swiper_btn btn_next"></div></div></div></div><div class="quick_view__right"><form action="/cart/add" method="post" enctype="multipart/form-data" id="product-actions" class="quick_view_form"><p id="quick_view__name" class="product_name"></p><p id="quick_view__type"><label for="">Product type:</label> <span></span></p><p id="quick_view__vendor"><label for="">Vendor:</label> <span></span></p><p id="quick_view__variants"><label for="">Options:</label><select id="product-select" name="id" class="hidden"></select></p><p id="quick_view__price" class="product_price"></p><p id="quick_view__availability"><label for="">Availability:</label> <span></span></p><div id="quick_view__form"><label for="quantity">Choose quantity:</label><div class="quantity_box"><input min="1" type="text" name="quantity" value="1" class="quantity_input" /><span class="quantity_modifier quantity_down"><i class="fa fa-minus"></i></span><span class="quantity_modifier quantity_up"><i class="fa fa-plus"></i></span></div><button class="btn btn-cart" type="submit" id="quick_view__add">Add to cart</button></div></form></div></div></div>'), e.fancybox.showLoading(), e.fancybox.helpers.overlay.open({parent: e("body")}), e.getJSON(e(this).attr("href") + ".js", function (i) {
            if (e(document).on("click", "#img_gallery a", function (i) {
                    i.preventDefault();
                    var a = e(this).attr("href");
                    e("#product_quick_view #img_big img").attr("src", a)
                }), i.title.length < 60)var a = i.title; else var a = e.trim(i.title).substring(0, 75) + "...";
            e("#quick_view__name").html('<a href="' + i.url + '">' + a + "</a>"), e("#quick_view__type span").html(i.type), e("#quick_view__vendor span").html(i.vendor), e.each(i.variants, function (i, a) {
                e("#product-select").append('<option value="' + a.id + '">' + a.title + " - " + a.price + "</option>")
            }), e("#quantity").on("focusout", function () {
                var i = e(this).val();
                e(this).val(isNaN(parseFloat(i)) && !isFinite(i) || 0 == parseInt(i) || "" == i ? 1 : parseInt(i) < 0 ? parseInt(i) - 2 * parseInt(i) : parseInt(i))
            }), e("#quantity_up").on("click", function () {
                var i = e("#quantity").val();
                e("#quantity").val(!isNaN(parseFloat(i)) && isFinite(i) ? parseInt(i) + 1 : 1)
            }), e("#quantity_down").on("click", function () {
                var i = e("#quantity").val();
                e("#quantity").val(!isNaN(parseFloat(i)) && isFinite(i) && i > 1 ? parseInt(i) - 1 : 1)
            }), e.getScript("//cdn.shopify.com/s/assets/themes_support/option_selection-f3dd7ba25bddfb6b0fe9addc0cae11dc709eeb6a469ec7f66f49e3abc4ce8c81.js", function () {
                function a(i, a) {
                    var t = i.length;
                    0 === t && a();
                    var n = 0;
                    e(i).each(function () {
                        e("<img>").attr("src", this).load(function () {
                            n++, n === t && a()
                        })
                    })
                }

                a(i.images, function () {
                    e("#product_quick_view #img_big").append('<img src="' + i.images[0] + '" alt="" />'), e.each(i.images, function (i, a) {
                        e("#img_gallery .swiper-wrapper").append('<a class="swiper-slide" href="' + a + '"><img src="' + a + '" alt="" /></a>')
                    });
                    var a = (new Swiper("#img_gallery", {
                        width: 302,
                        loop: !0,
                        speed: 500,
                        slidesPerView: 3,
                        spaceBetween: 10,
                        prevButton: "#img_gallery__prev",
                        nextButton: "#img_gallery__next"
                    }), function (i, a) {
                        if (i && i.available ? (jQuery("#quick_view__add").removeAttr("disabled").removeClass("disabled"), i.price < i.compare_at_price ? jQuery("#quick_view__price").html('<span class="money">' + Shopify.formatMoney(i.price, "${{amount}}") + '</span><span class="money compare-at-price money_sale">' + Shopify.formatMoney(i.compare_at_price, "${{amount}}") + '</span><span class="money_sale_percent">– ' + parseInt(100 - 100 * i.price / i.compare_at_price) + "%</span>") : jQuery("#quick_view__price").html('<span class="money">' + Shopify.formatMoney(i.price, "${{amount}}") + "</span>"), null != i.inventory_management ? jQuery("#quick_view__availability span").removeClass("notify_danger").addClass("notify_success").html("<b>" + i.inventory_quantity + "</b> item(s)") : jQuery("#quick_view__availability span").removeClass("notify_danger").addClass("notify_success").html("Available")) : (jQuery("#quick_view__add").addClass("disabled").attr("disabled", "disabled"), jQuery("#quick_view__availability span").removeClass("notify_success").addClass("notify_danger").html("Unavailable"), jQuery("#quick_view__price").html('<span class="money">' + Shopify.formatMoney(i.price, "${{amount}}") + "</span>")), i && i.featured_image) {
                            var t = e("#img_big img"), n = i.featured_image, s = t[0];
                            Shopify.Image.switchImage(n, s, function (i, a, t) {
                                e("#img_big img").attr("src", i)
                            })
                        }
                        currencyToggle("#quick_view__price .money")
                    });
                    new Shopify.OptionSelectors("product-select", {
                        product: i,
                        onVariantSelected: a,
                        enableHistoryState: !1
                    }), e.each(e("#quick_view__variants select option"), function () {
                        "Default Title" == e(this).val() && e("#quick_view__variants").hide()
                    }), e.fancybox(e("#product_quick_view"), {
                        openSpeed: 500,
                        closeSpeed: 500,
                        tpl: {
                            wrap: '<div id="quick_view__wrap" class="fancybox-wrap" tabIndex="-1"><div class="fancybox-skin"><div class="fancybox-outer"><div class="fancybox-inner"></div></div></div></div>',
                            closeBtn: '<a title="Close" id="quick_view__close" class="fancybox-item fancybox-close" href="javascript:;"></a>'
                        },
                        afterClose: function () {
                            e("#product_quick_view").remove()
                        }
                    })
                })
            }), e("#quick_view__add").on("click", function () {
                e.fancybox.close()
            })
        })
    })
});







// JQUERY.API.JS FULL
function floatToString(t, o) {
    var r = t.toFixed(o).toString();
    return r.match(/^\.\d+/) ? "0" + r : r
}

function attributeToString(t) {
    return "string" != typeof t && (t += "", "undefined" === t && (t = "")), jQuery.trim(t)
}
"undefined" == typeof Shopify && (Shopify = {}), Shopify.money_format = "$ {{amount}}", Shopify.onError = function(XMLHttpRequest, textStatus) {
    var data = eval("(" + XMLHttpRequest.responseText + ")");
    alert(data.message + "(" + data.status + "): " + data.description)
}, Shopify.onCartUpdate = function(t) {
    alert("There are now " + t.item_count + " items in the cart.")
}, Shopify.onItemAdded = function(t) {
    alert(t.title + " was added to your shopping cart.")
}, Shopify.onProduct = function(t) {
    alert("Received everything we ever wanted to know about " + t.title)
}, Shopify.formatMoney = function(t, o) {
    var r = "",
        e = /\{\{\s*(\w+)\s*\}\}/,
        a = o || this.money_format;
    switch (a.match(e)[1]) {
        case "amount":
            r = floatToString(t / 100, 2).replace(/(\d+)(\d{3}[\.,]?)/, "$1 $2");
            break;
        case "amount_no_decimals":
            r = floatToString(t / 100, 0).replace(/(\d+)(\d{3}[\.,]?)/, "$1 $2");
            break;
        case "amount_with_comma_separator":
            r = floatToString(t / 100, 2).replace(/\./, ",").replace(/(\d+)(\d{3}[\.,]?)/, "$1.$2")
    }
    return a.replace(e, r)
}, Shopify.resizeImage = function(t, o) {
    try {
        if ("original" == o) return t;
        var r = t.match(/(.*\/[\w\-\_\.]+)\.(\w{2,4})/);
        return r[1] + "_" + o + "." + r[2]
    } catch (e) {
        return t
    }
}, Shopify.addItem = function(t, o, r) {
    o = o || 1;
    var e = {
        type: "POST",
        url: "/cart/add.js",
        data: "quantity=" + o + "&id=" + t,
        dataType: "json",
        success: function(t) {
            "function" == typeof r ? r(t) : Shopify.onItemAdded(t)
        },
        error: function(t, o) {
            Shopify.onError(t, o)
        }
    };
    jQuery.ajax(e)
}, Shopify.addItemFromForm = function(t, o) {
    var r = {
        type: "POST",
        url: "/cart/add.js",
        data: jQuery(t).serialize(),
        dataType: "json",
        success: function(r) {
            "function" == typeof o ? o(r, t) : Shopify.onItemAdded(r, t);

            $('body').append('<div id="cart_added"><h4>Product added to cart</h4><div class="cart_added__row"><div class="cart_added__1" id="cart_added__img"><img src="" alt="" /></div><div class="cart_added__2"><span id="cart_added__name" class="product_name"></span><p id="cart_added__quantity">Quantity: <span></span></p><a class="btn" href="/cart">Go to cart</a><a class="btn btn-alt" id="cart_added__close" href="#">Continue shopping</a></div></div></div>');

            if ( r.title.length < 60 ) {
                var productTitle = r.title;
            }
            else {
                var productTitle = $.trim( r.title ).substring(0, 60) + '...';
            };

            $('#cart_added__name').html( productTitle );
            $('#cart_added__quantity span').html( r.quantity );
            $('#cart_added__close').on( 'click', function(e) {
                e.preventDefault();

                $('.fancybox-close').trigger('click');
            });

            if ( r.image ) {
                $('#cart_added__img img').attr( 'src', r.image ).load( function() {
                    $.fancybox.open( $('#cart_added'),
                        {
                            'openSpeed': 500,
                            'closeSpeed': 300,
                            'afterClose': function() {
                                $('#cart_added').remove();
                            }
                        }
                    );
                });
            }
            else {
                $('#cart_added__img').hide();
                $.fancybox.open( $('#cart_added'),
                    {
                        'openSpeed': 500,
                        'closeSpeed': 300,
                        'afterClose': function() {
                            $('#cart_added').remove();
                        }
                    }
                );
            };

        },
        error: function(t, o) {
            Shopify.onError(t, o);

            var errorData = eval('(' + t.responseText + ')');

            $('body').append('<div id="cart_added" class="cart_error"><h4></h4><p class="alert alert-error"></p></div>');
            $('#cart_added h4').html( errorData.message );
            $('#cart_added p').html( errorData.description );

            $.fancybox.open( $('#cart_added'),
                {
                    'openSpeed': 500,
                    'closeSpeed': 300,
                    'afterClose': function() {
                        $('#cart_added').remove();
                    }
                }
            );

        }
    };
    jQuery.ajax(r)
}, Shopify.getCart = function(t) {
    jQuery.getJSON("/cart.js", function(o) {
        "function" == typeof t ? t(o) : Shopify.onCartUpdate(o)
    })
}, Shopify.getProduct = function(t, o) {
    jQuery.getJSON("/products/" + t + ".js", function(t) {
        "function" == typeof o ? o(t) : Shopify.onProduct(t)
    })
}, Shopify.changeItem = function(t, o, r) {
    var e = {
        type: "POST",
        url: "/cart/change.js",
        data: "quantity=" + o + "&id=" + t,
        dataType: "json",
        success: function(t) {
            "function" == typeof r ? r(t) : Shopify.onCartUpdate(t)
        },
        error: function(t, o) {
            Shopify.onError(t, o)
        }
    };
    jQuery.ajax(e)
}, Shopify.removeItem = function(t, o) {
    var r = {
        type: "POST",
        url: "/cart/change.js",
        data: "quantity=0&id=" + t,
        dataType: "json",
        success: function(t) {
            "function" == typeof o ? o(t) : Shopify.onCartUpdate(t)
        },
        error: function(t, o) {
            Shopify.onError(t, o)
        }
    };
    jQuery.ajax(r)
}, Shopify.clear = function(t) {
    var o = {
        type: "POST",
        url: "/cart/clear.js",
        data: "",
        dataType: "json",
        success: function(o) {
            "function" == typeof t ? t(o) : Shopify.onCartUpdate(o)
        },
        error: function(t, o) {
            Shopify.onError(t, o)
        }
    };
    jQuery.ajax(o)
}, Shopify.updateCartFromForm = function(t, o) {
    var r = {
        type: "POST",
        url: "/cart/update.js",
        data: jQuery(t).serialize(),
        dataType: "json",
        success: function(r) {
            "function" == typeof o ? o(r, t) : Shopify.onCartUpdate(r, t)
        },
        error: function(t, o) {
            Shopify.onError(t, o)
        }
    };
    jQuery.ajax(r)
}, Shopify.updateCartAttributes = function(t, o) {
    var r = "";
    jQuery.isArray(t) ? jQuery.each(t, function(t, o) {
        var e = attributeToString(o.key);
        "" !== e && (r += "attributes[" + e + "]=" + attributeToString(o.value) + "&")
    }) : "object" == typeof t && null !== t && jQuery.each(t, function(t, o) {
        r += "attributes[" + attributeToString(t) + "]=" + attributeToString(o) + "&"
    });
    var e = {
        type: "POST",
        url: "/cart/update.js",
        data: r,
        dataType: "json",
        success: function(t) {
            "function" == typeof o ? o(t) : Shopify.onCartUpdate(t)
        },
        error: function(t, o) {
            Shopify.onError(t, o)
        }
    };
    jQuery.ajax(e)
}, Shopify.updateCartNote = function(t, o) {
    var r = {
        type: "POST",
        url: "/cart/update.js",
        data: "note=" + attributeToString(t),
        dataType: "json",
        success: function(t) {
            "function" == typeof o ? o(t) : Shopify.onCartUpdate(t)
        },
        error: function(t, o) {
            Shopify.onError(t, o)
        }
    };
    jQuery.ajax(r)
};


// JQUERY.AJAX-CART.JS MINI
jQuery(document).ready(function (t) {
    var e = {
        TOTAL_ITEMS: ".cart-total-items",
        TOTAL_PRICE: ".cart-total-price",
        SUBMIT_ADD_TO_CART: "input[type=image], input.submit-add-to-cart",
        FORM_UPDATE_CART: "form[name=cartform]",
        FORM_UPDATE_CART_BUTTON: "form[name=cartform] input[name=update]",
        FORM_UPDATE_CART_BUTTONS: "input[type=image], input.button-update-cart",
        LINE_ITEM_ROW: ".cart-line-item",
        LINE_ITEM_QUANTITY_PREFIX: "input#updates_",
        LINE_ITEM_PRICE_PREFIX: ".cart-line-item-price-",
        LINE_ITEM_REMOVE: ".remove a",
        EMPTY_CART_MESSAGE: "#empty"
    }, a = function (t) {
        return Shopify.formatMoney(t, "${{ amount }}")
    };
    t(document).on("submit", 'form[action*="/cart/add"]', function (e) {
        e.preventDefault(), t(e.target).find(".btn-cart").attr("disabled", !0).addClass("disabled"), Shopify.addItemFromForm(e.target)
    }), t(document).on("click", ".btn-cart", function () {
        t.fancybox.showLoading(), t.fancybox.helpers.overlay.open({parent: t("body")})
    }), t(e.FORM_UPDATE_CART_BUTTON).click(function (a) {
        a.preventDefault(), t(a.target.form).find(e.FORM_UPDATE_CART_BUTTONS).attr("disabled", !0).addClass("disabled"), Shopify.updateCartFromForm(a.target.form)
    }), t(e.FORM_UPDATE_CART).delegate(e.LINE_ITEM_REMOVE, "click", function (a) {
        a.preventDefault();
        var i = this.href.split("/").pop().split("?").shift();
        Shopify.removeItem(i), t(this).parents(e.LINE_ITEM_ROW).remove()
    }), Shopify.onItemAdded = function (e, a) {
        t(a).find(".btn-cart").attr("disabled", !1).removeClass("disabled"), Shopify.getCart()
    }, Shopify.onCartUpdate = function (i, n) {
        t("#cart_items").html(i.item_count);
        var r = a(i.total_price);
        t(e.TOTAL_PRICE).html(r), t(e.EMPTY_CART_MESSAGE).length > 0 && 0 == i.item_count && (t(e.FORM_UPDATE_CART).hide(), t(e.EMPTY_CART_MESSAGE).show()), n = n || !1, n && i.item_count > 0 && (t.each(i.items, function (i, n) {
            t(e.LINE_ITEM_PRICE_PREFIX + n.id).html(a(n.line_price)), t(e.LINE_ITEM_QUANTITY_PREFIX + n.id).val(n.quantity)
        }), t(n).find("input[value=0]").parents(e.LINE_ITEM_ROW).remove(), t(n).find(e.FORM_UPDATE_CART_BUTTONS).attr("disabled", !1).removeClass("disabled"))
    }, Shopify.onError = function () {
        t("form").find(".btn-cart").attr("disabled", !1).removeClass("disabled")
    }
});
*/
