/**
 * Global variables
 */
"use strict";

var userAgent = navigator.userAgent.toLowerCase(),
  initialDate = new Date(),

  $document = $(document),
  $window = $(window),
  $html = $("html"),

  isDesktop = $html.hasClass("desktop"),
  isIE = userAgent.indexOf("msie") != -1 ? parseInt(userAgent.split("msie")[1]) : userAgent.indexOf("trident") != -1 ? 11 : userAgent.indexOf("edge") != -1 ? 12 : false,
  isMobile = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent),
  isTouch = "ontouchstart" in window,

  plugins = {
    pointerEvents: isIE < 11 ? "js/pointer-events.min.js" : false,
    smoothScroll: $html.hasClass("use--smoothscroll") ? "js/smoothscroll.min.js" : false,
    bootstrapTabs: $(".tabs"),
    rdParallax: $(".rd-parallax"),
    rdAudioPlayer: $(".rd-audio"),
    rdVideoPlayer: $(".rd-video-player"),
    responsiveTabs: $(".responsive-tabs"),
    rdGoogleMaps: $("#rd-google-map"),
    rdInputLabel: $(".form-label"),
    mfp: $('[data-lightbox]').not('[data-lightbox="gallery"] [data-lightbox]'),
    mfpGallery: $('[data-lightbox^="gallery"]'),
    rdNavbar: $(".rd-navbar"),
    rdVideoBG: $(".rd-video"),
    regula: $("[data-constraints]"),
    stepper: $("input[type='number']"),
    radio: $("input[type='radio']"),
    checkbox: $("input[type='checkbox']"),
    owl: $(".owl-carousel"),
    photoSwipeGallery: $("[data-photo-swipe-item]"),
    flickrfeed: $(".flickr"),
    isotope: $(".isotope"),
    customToggle: $("[data-custom-toggle]"),
    customWaypoints: $('[data-custom-scroll-to]'),
    selectFilter: $("select"),
    calendar: $(".rd-calendar"),
    searchResults: $(".rd-navbar-search-results"),
    rdMailForm: $(".rd-mailform"),
    iframeEmbed: $("iframe.embed-responsive-item")
  };
/**
 * Initialize All Scripts
 */
$document.ready(function () {

  /**
   * isScrolledIntoView
   * @description  check the element whas been scrolled into the view
   */
  function isScrolledIntoView(elem) {
    var $window = $(window);
    return elem.offset().top + elem.outerHeight() >= $window.scrollTop() && elem.offset().top <= $window.scrollTop() + $window.height();
  }

  /**
   * initOnView
   * @description  calls a function when element has been scrolled into the view
   */
  function lazyInit(element, func) {
    var $win = jQuery(window);
    $win.on('load scroll', function () {
      if ((!element.hasClass('lazy-loaded') && (isScrolledIntoView(element)))) {
        func.call(element);
        element.addClass('lazy-loaded');
      }
    });
  }

  /**
   * resizeOnImageLoad
   * @description  calls a resize event when imageloaded
   */
  function resizeOnImageLoad(image) {
    image.onload = function () {
      $window.trigger("resize");
    }
  }

  /**
   * attachFormValidator
   * @description  attach form validation to elements
   */
  function attachFormValidator(elements) {
    for (var i = 0; i < elements.length; i++) {
      var o = $(elements[i]), v;
      o.addClass("form-control-has-validation").after("<span class='form-validation'></span>");
      v = o.parent().find(".form-validation");
      if (v.is(":last-child")) {
        o.addClass("form-control-last-child");
      }
    }

    elements
      .on('input change propertychange blur', function (e) {
        var $this = $(this), results;

        if (e.type != "blur") {
          if (!$this.parent().hasClass("has-error")) {
            return;
          }
        }

        if ($this.parents('.rd-mailform').hasClass('success')){
          return;
        }

        if ((results = $this.regula('validate')).length) {
          for (i = 0; i < results.length; i++) {
            $this.siblings(".form-validation").text(results[i].message).parent().addClass("has-error")
          }
        } else {
          $this.siblings(".form-validation").text("").parent().removeClass("has-error")
        }
      })
      .regula('bind');
  }

  /**
   * isValidated
   * @description  check if all elemnts pass validation
   */
  function isValidated(elements) {
    var results, errors = 0;
    if (elements.length) {
      for (j = 0; j < elements.length; j++) {

        var $input = $(elements[j]);

        if ((results = $input.regula('validate')).length) {
          for (k = 0; k < results.length; k++) {
            errors++;
            $input.siblings(".form-validation").text(results[k].message).parent().addClass("has-error");
          }
        } else {
          $input.siblings(".form-validation").text("").parent().removeClass("has-error")
        }
      }

      return errors == 0;
    }
    return true;
  }

  /**
   * IE Polyfills
   * @description  Adds some loosing functionality to IE browsers
   */
  if (isIE) {
    if (isIE < 10) {
      $html.addClass("lt-ie-10");
    }

    if (isIE < 11) {
      if (plugins.pointerEvents) {
        $.getScript(plugins.pointerEvents)
          .done(function () {
            $html.addClass("ie-10");
            PointerEventsPolyfill.initialize({});
          });
      }
    }

    if (isIE === 11) {
      $("html").addClass("ie-11");
    }

    if (isIE === 12) {
      $("html").addClass("ie-edge");
    }
  }

  /**
   * Copyright Year
   * @description  Evaluates correct copyright year
   */
  var o = $("#copyright-year");
  if (o.length) {
    o.text(initialDate.getFullYear());
  }

  /**
   * Smooth scrolling
   * @description  Enables a smooth scrolling for Google Chrome (Windows)
   */
  if (plugins.smoothScroll) {
    $.getScript(plugins.smoothScroll);
  }

  /**
   * Bootstrap tabs
   * @description Activate Bootstrap Tabs
   */
  if (plugins.bootstrapTabs.length) {
    var i;
    for (i = 0; i < plugins.bootstrapTabs.length; i++) {
      var bootstrapTab = $(plugins.bootstrapTabs[i]);

      bootstrapTab.on("click", "a", function (event) {
        event.preventDefault();
        $(this).tab('show');
      });
    }
  }

  /**
   * RD Audio player
   * @description Enables RD Audio player plugin
   */
  if (plugins.rdAudioPlayer.length) {
    var i;
    for (i = 0; i < plugins.rdAudioPlayer.length; i++) {
      $(plugins.rdAudioPlayer[i]).RDAudio();
    }
    var playlistButton = $('.rd-audio-playlist-button');
    var playlist = plugins.rdAudioPlayer.find('.rd-audio-playlist-wrap');
    if (playlistButton.length) {
      playlistButton.on('click', function (e) {
        e.preventDefault();
        plugins.rdAudioPlayer.toggleClass('playlist-show');
        if (playlist.is(':hidden')) {
          playlist.slideDown(300);
        } else {
          playlist.slideUp(300);
        }
      });
      $document.on('click', function (e) {
        if (!$(e.target).is(playlist) && playlist.find($(e.target)).length == 0 && !$(e.target).is(playlistButton)) {
          playlist.slideUp(300);
        }
      });


    }
  }

  /**
   * RD Video Player
   * @description Enables RD Video player plugin
   */
  function hidePlaylist() {
    $(".rd-video-player").removeClass("playlist-show");
  }

  function showPlaylist() {
    $(".rd-video-player").addClass("playlist-show");
  }

  if (plugins.rdVideoPlayer.length) {
    var i;
    for (i = 0; i < plugins.rdVideoPlayer.length; i++) {
      var videoItem = $(plugins.rdVideoPlayer[i]);

      $window.on("scroll", $.proxy(function () {
        var video = $(this);
        if (isDesktop && !video.hasClass("played") && video.hasClass('play-on-scroll') && isScrolledIntoView(video)) {
          video.find("video")[0].play();
          video.addClass("played");
        }
      }, videoItem));

      videoItem.RDVideoPlayer({
        callbacks: {
          onPlay: hidePlaylist,
          onPaused: showPlaylist,
          onEnded: showPlaylist
        }
      });
      $window.on('load', showPlaylist);

      var volumeWrap = $(".rd-video-volume-wrap");

      volumeWrap.on("mouseenter", function () {
        $(this).addClass("hover")
      });

      volumeWrap.on("mouseleave", function () {
        $(this).removeClass("hover")
      });

      if (isTouch) {
        volumeWrap.find(".rd-video-volume").on("click", function () {
          $(this).toggleClass("hover")
        });
        $document.on("click", function (e) {
          if (!$(e.target).is(volumeWrap) && $(e.target).parents(volumeWrap).length == 0) {
            volumeWrap.find(".rd-video-volume").removeClass("hover")
          }
        })
      }
    }
  }

  /**
   * Responsive Tabs
   * @description Enables Responsive Tabs plugin
   */
  if (plugins.responsiveTabs.length) {
    var i = 0;
    for (i = 0; i < plugins.responsiveTabs.length; i++) {
      var $this = $(plugins.responsiveTabs[i]);
      $this.easyResponsiveTabs({
        type: $this.attr("data-type"),
        tabidentify: $this.find(".resp-tabs-list").attr("data-group") || "tab"
      });
    }
  }

  /**
   * RD Google Maps
   * @description Enables RD Google Maps plugin
   */
  if (plugins.rdGoogleMaps.length) {
    $.getScript("https://maps.googleapis.com/maps/api/js?key=AIzaSyBdUmypK6OIOSiaeWD4cWbYRb2TZz5jwD0&sensor=false&libraries=geometry&v=3.7", function () {
      var head = document.getElementsByTagName('head')[0],
        insertBefore = head.insertBefore;

      head.insertBefore = function (newElement, referenceElement) {
        if (newElement.href && newElement.href.indexOf('//fonts.googleapis.com/css?family=Roboto') != -1 || newElement.innerHTML.indexOf('gm-style') != -1) {
          return;
        }
        insertBefore.call(head, newElement, referenceElement);
      };

      lazyInit(plugins.rdGoogleMaps, function () {
        var styles = plugins.rdGoogleMaps.attr("data-styles");

        plugins.rdGoogleMaps.googleMap({
          styles: styles ? JSON.parse(styles) : {}
        })
      });
    });
  }

  /**
   * RD Flickr Feed
   * @description Enables RD Flickr Feed plugin
   */
  if (plugins.flickrfeed.length > 0) {
    var i;
    for (i = 0; i < plugins.flickrfeed.length; i++) {
      var flickrfeedItem = $(plugins.flickrfeed[i]);
      flickrfeedItem.RDFlickr({
        callback: function () {
          var items = flickrfeedItem.find("[data-photo-swipe-item]");

          if (items.length) {
            for (var j = 0; j < items.length; j++) {
              var image = new Image();
              image.setAttribute('data-index', j);
              image.onload = function () {
                items[this.getAttribute('data-index')].setAttribute('data-size', this.naturalWidth + 'x' + this.naturalHeight);
              };
              image.src = items[j].getAttribute('href');
            }
          }
        }
      });
    }
  }

  /**
   * RD Input Label
   * @description Enables RD Input Label Plugin
   */
  if (plugins.rdInputLabel.length) {
    plugins.rdInputLabel.RDInputLabel();
  }

  /**
   * Stepper
   * @description Enables Stepper Plugin
   */
  if (plugins.stepper.length) {
    plugins.stepper.stepper({
      labels: {
        up: "",
        down: ""
      }
    });
  }

  /**
   * Radio
   * @description Add custom styling options for input[type="radio"]
   */
  if (plugins.radio.length) {
    var i;
    for (i = 0; i < plugins.radio.length; i++) {
      var $this = $(plugins.radio[i]);
      $this.addClass("radio-custom").after("<span class='radio-custom-dummy'></span>")
    }
  }

  /**
   * Checkbox
   * @description Add custom styling options for input[type="checkbox"]
   */
  if (plugins.checkbox.length) {
    var i;
    for (i = 0; i < plugins.checkbox.length; i++) {
      var $this = $(plugins.checkbox[i]);
      $this.addClass("checkbox-custom").after("<span class='checkbox-custom-dummy'></span>")
    }
  }

  /**
   * Regula
   * @description Enables Regula plugin
   */
  if (plugins.regula.length) {
    attachFormValidator(plugins.regula);
  }

  /**
   * WOW
   * @description Enables Wow animation plugin
   */
  if ($html.hasClass('desktop') && $html.hasClass("wow-animation") && $(".wow").length) {
    new WOW().init();
  }

  /**
  * @module       Owl carousel
  * @version      2.0.0
  * @author       Bartosz Wojciechowski
  * @license      The MIT License (MIT)
  */
  if (plugins.owl.length) {
    for (i = 0; i < plugins.owl.length; i++) {
      var c = $(plugins.owl[i]),
          responsive = {};

      var aliaces = ["-", "-xs-", "-sm-", "-md-", "-lg-"],
          values = [0, 480, 768, 992, 1200],
          j, k;

      for (j = 0; j < values.length; j++) {
        responsive[values[j]] = {};
        for (k = j; k >= -1; k--) {
          if (!responsive[values[j]]["items"] && c.attr("data" + aliaces[k] + "items")) {
            responsive[values[j]]["items"] = k < 0 ? 1 : parseInt(c.attr("data" + aliaces[k] + "items"));
          }
          if (!responsive[values[j]]["stagePadding"] && responsive[values[j]]["stagePadding"] !== 0 && c.attr("data" + aliaces[k] + "stage-padding")) {
            responsive[values[j]]["stagePadding"] = k < 0 ? 0 : parseInt(c.attr("data" + aliaces[k] + "stage-padding"));
          }
          if (!responsive[values[j]]["margin"] && responsive[values[j]]["margin"] !== 0 && c.attr("data" + aliaces[k] + "margin")) {
            responsive[values[j]]["margin"] = k < 0 ? 30 : parseInt(c.attr("data" + aliaces[k] + "margin"));
          }
        }
      }

      c.owlCarousel({
        autoplay: c.attr("data-autoplay") === "true",
        loop: c.attr("data-loop") !== "false",
        items: 1,
        dotsContainer: c.attr("data-pagination-class") || false,
        navContainer: c.attr("data-navigation-class") || false,
        mouseDrag: c.attr("data-mouse-drag") !== "false",
        nav: c.attr("data-nav") === "true",
        dots: c.attr("data-dots") === "true",
        dotsEach: c.attr("data-dots-each") ? parseInt(c.attr("data-dots-each")) : false,
        responsive: responsive,
        navText: $.parseJSON(c.attr("data-nav-text")) || [],
        navClass: $.parseJSON(c.attr("data-nav-class")) || ['owl-prev', 'owl-next'],
        onInitialized: function () {
          if ($.fn.magnificPopup) {
            var o = this.$element.attr('data-lightbox') !== undefined && this.$element.attr("data-lightbox") !== "gallery",
                g = this.$element.attr('data-lightbox') === "gallery";
            if (o) {
              for (var m = 0; m < (this.$element).length; m++) {
                var $this = $(this.$element[m]);
                $this.magnificPopup({
                  type: $this.attr("data-lightbox"),
                  callbacks: {
                    open: function () {
                      if (isTouch) {
                        $document.on("touchmove", preventScroll);
                        $document.swipe({
                          swipeDown: function () {
                            $.magnificPopup.close();
                          }
                        });
                      }
                    },
                    close: function () {
                      if (isTouch) {
                        $document.off("touchmove", preventScroll);
                        $document.swipe("destroy");
                      }
                    }
                  }
                });
              }
            }
            if (g) {
              for (var k = 0; k < (this.$element).length; k++) {
                var $gallery = $(this.$element[k]).find('[data-lightbox]');
                for (var j = 0; j < $gallery.length; j++) {
                  var $item = $gallery[j];
                  $item.addClass("mfp-" + $item.attr("data-lightbox"));
                }
                $gallery.end()
                    .magnificPopup({
                      delegate: '.owl-item [data-lightbox]',
                      type: "image",
                      gallery: {
                        enabled: true
                      },
                      callbacks: {
                        open: function () {
                          if (isTouch) {
                            $document.on("touchmove", preventScroll);
                            $document.swipe({
                              swipeDown: function () {
                                $.magnificPopup.close();
                              }
                            });
                          }
                        },
                        close: function () {
                          if (isTouch) {
                            $document.off("touchmove", preventScroll);
                            $document.swipe("destroy");
                          }
                        }
                      }
                    });
              }
            }
          }
          if (c.attr("data-active")) {
            c.trigger("to.owl.carousel", c.attr("data-active") - 1);
          }
        }
      });
    }
  }

  /**
   * Isotope
   * @description Enables Isotope plugin
   */
  if (plugins.isotope.length) {
    var i, isogroup = [];
    for (i = 0; i < plugins.isotope.length; i++) {
      var isotopeItem = plugins.isotope[i]
        , iso = new Isotope(isotopeItem, {
        itemSelector: '.isotope-item',
        layoutMode: isotopeItem.getAttribute('data-isotope-layout') ? isotopeItem.getAttribute('data-isotope-layout') : 'masonry',
        filter: '*'
      });

      isogroup.push(iso);
    }

    $(window).on('load', function () {
      setTimeout(function () {
        var i;
        for (i = 0; i < isogroup.length; i++) {
          isogroup[i].element.className += " isotope--loaded";
          isogroup[i].layout();
        }
        $window.trigger("resize");
      }, 600);
    });

    $('.isotope').magnificPopup({
      delegate: ' > :visible .mfp-image',
      type: "image",
      gallery: {
        enabled: true
      }
    });

    var resizeTimout;

    $("[data-isotope-filter]").on("click", function (e) {
      e.preventDefault();
      var filter = $(this);
      clearTimeout(resizeTimout);
      filter.parents(".isotope-filters").find('.active').removeClass("active");
      filter.addClass("active");
      var iso = $('.isotope[data-isotope-group="' + this.getAttribute("data-isotope-group") + '"]');
      iso.isotope({
        itemSelector: '.isotope-item',
        layoutMode: iso.attr('data-isotope-layout') ? iso.attr('data-isotope-layout') : 'masonry',
        filter: this.getAttribute("data-isotope-filter") == '*' ? '*' : '[data-filter*="' + this.getAttribute("data-isotope-filter") + '"]'
      });
      resizeTimout = setTimeout(function () {
        $window.trigger('resize');
      }, 300);
    }).eq(0).trigger("click")
  }

  /**
   * @module       Magnific Popup
   * @author       Dmitry Semenov
   * @see          http://dimsemenov.com/plugins/magnific-popup/
   * @version      v1.0.0
   */
  if (plugins.mfp.length > 0 || plugins.mfpGallery.length > 0) {
    if (plugins.mfp.length) {
      for (i = 0; i < plugins.mfp.length; i++) {
        var mfpItem = plugins.mfp[i];

        $(mfpItem).magnificPopup({
          type: mfpItem.getAttribute("data-lightbox")
        });
      }
    }
    if (plugins.mfpGallery.length) {
      for (i = 0; i < plugins.mfpGallery.length; i++) {
        var mfpGalleryItem = $(plugins.mfpGallery[i]).find('[data-lightbox]');

        for (var c = 0; c < mfpGalleryItem.length; c++) {
          $(mfpGalleryItem).addClass("mfp-" + $(mfpGalleryItem).attr("data-lightbox"));
        }

        mfpGalleryItem.end()
            .magnificPopup({
              delegate: '[data-lightbox]',
              type: "image",
              gallery: {
                enabled: true
              }
            });
      }
    }
  }

  /**
   * RD Video
   * @description Enables RD Video plugin
   */
  if (plugins.rdVideoBG.length) {
    for (i = 0; i < plugins.rdVideoBG.length; i++) {
      var videoItem = $(plugins.rdVideoBG[i]);
      videoItem.RDVideo({});
    }
  }

  /**
   * RD Navbar
   * @description Enables RD Navbar plugin
   */
  if (plugins.rdNavbar.length) {
    plugins.rdNavbar.RDNavbar({
      stickUpClone: (plugins.rdNavbar.attr("data-stick-up-clone")) ? plugins.rdNavbar.attr("data-stick-up-clone") === 'true' : false,
      stickUpOffset: (plugins.rdNavbar.attr("data-stick-up-offset")) ? plugins.rdNavbar.attr("data-stick-up-offset") : 1
    });
  }

  /**
   * PhotoSwipe Gallery
   * @description Enables PhotoSwipe Gallery plugin
   */
  if (plugins.photoSwipeGallery.length) {

    // init image click event
    $document.delegate("[data-photo-swipe-item]", "click", function (event) {
      event.preventDefault();

      var $el = $(this),
        $galleryItems = $el.parents("[data-photo-swipe-gallery]").find("a[data-photo-swipe-item]"),
        pswpElement = document.querySelectorAll('.pswp')[0],
        encounteredItems = {},
        pswpItems = [],
        options,
        pswpIndex = 0,
        pswp;

      if ($galleryItems.length == 0) {
        $galleryItems = $el;
      }

      // loop over the gallery to build up the photoswipe items
      $galleryItems.each(function () {
        var $item = $(this),
          src = $item.attr('href'),
          size = $item.attr('data-size').split('x'),
          pswdItem;

        if ($item.is(':visible')) {

          // if we have this image the first time
          if (!encounteredItems[src]) {
            // build the photoswipe item
            pswdItem = {
              src: src,
              w: parseInt(size[0], 10),
              h: parseInt(size[1], 10),
              el: $item // save link to element for getThumbBoundsFn
            };

            // store that we already had this item
            encounteredItems[src] = {
              item: pswdItem,
              index: pswpIndex
            };

            // push the item to the photoswipe list
            pswpItems.push(pswdItem);
            pswpIndex++;
          }
        }
      });

      options = {
        index: encounteredItems[$el.attr('href')].index,

        getThumbBoundsFn: function (index) {
          var $el = pswpItems[index].el,
            offset = $el.offset();

          return {
            x: offset.left,
            y: offset.top,
            w: $el.width()
          };
        }
      };

      // open the photoswipe gallery
      pswp = new PhotoSwipe(pswpElement, PhotoSwipeUI_Default, pswpItems, options);
      pswp.init();
    });
  }

  /**
   * Select2
   * @description Enables select2 plugin
   */
  if (plugins.selectFilter.length) {
    var i;
    for (i = 0; i < plugins.selectFilter.length; i++) {
      var select = $(plugins.selectFilter[i]);

      select.select2({
        theme: "bootstrap"
      }).next().addClass(select.attr("class").match(/(input-sm)|(input-lg)|($)/i).toString().replace(new RegExp(",", 'g'), " "));
    }
  }

  /**
   * RD Calendar
   * @description Enables RD Calendar plugin
   */
  if (plugins.calendar.length) {
    for (i = 0; i < plugins.calendar.length; i++) {
      var calendarItem = $(plugins.calendar[i]);

      calendarItem.rdCalendar({
        days: calendarItem.attr("data-days") ? c.attr("data-days").split(/\s?,\s?/i) : ['S', 'M', 'T', 'W', 'T', 'F', 'S'],
        month: calendarItem.attr("data-months") ? c.attr("data-months").split(/\s?,\s?/i) : ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
      });
    }
  }

  /**
   * Search Results
   * @description Enables Search results page
   */
  if (plugins.searchResults.length > 0) {
    var handler = "bat/rd-search.html";

    var term = location.search.replace(/^\?.*s=([^&]+)/, "$1");
    $.get(handler, {s: decodeURI(term), liveSearch: "false", dataType: "html"}, function (data) {
      plugins.searchResults.html(data);
    })
  }

  /**
   * UI To Top
   * @description Enables ToTop Button
   */
  if (isDesktop) {
    $().UItoTop({
      easingType: 'easeOutQuart',
      containerClass: 'ui-to-top icon icon-xs icon-circle icon-darker-filled mdi mdi-chevron-up'
    });
  }

  /**
   * RD Mailform
   */
  if (plugins.rdMailForm.length) {
    var i, j, k,
      msg = {
        'MF000': 'Successfully sent!',
        'MF001': 'Recipients are not set!',
        'MF002': 'Form will not work locally!',
        'MF003': 'Please, define email field in your form!',
        'MF004': 'Please, define type of your form!',
        'MF254': 'Something went wrong with PHPMailer!',
        'MF255': 'Aw, snap! Something went wrong.'
      };
    for (i = 0; i < plugins.rdMailForm.length; i++) {
      var $form = $(plugins.rdMailForm[i]);

      $form.attr('novalidate', 'novalidate').ajaxForm({
        data: {
          "form-type": $form.attr("data-form-type") || "contact",
          "counter": i
        },
        beforeSubmit: function () {
          var form = $(plugins.rdMailForm[this.extraData.counter]);
          var inputs = form.find("[data-constraints]");
          if (isValidated(inputs)){
            var output = $("#" + form.attr("data-form-output"));

            if (output.hasClass("snackbars")) {
              output.html('<p><span class="icon text-middle fa fa-circle-o-notch fa-spin icon-xxs"></span><span>Sending</span></p>');
              output.addClass("active");
            }
          } else{
            return false;
          }
        },
        error: function (result) {
          var output = $("#" + $(plugins.rdMailForm[this.extraData.counter]).attr("data-form-output"));
          output.text(msg[result]);
        },
        success: function (result) {
          var form = $(plugins.rdMailForm[this.extraData.counter]);
          var output = $("#" + form.attr("data-form-output"));
          form.addClass('success');
          result = result.length == 5 ? result : 'MF255';
          output.text(msg[result]);
          if (result === "MF000") {
            if (output.hasClass("snackbars")) {
              output.html('<p><span class="icon text-middle mdi mdi-check icon-xxs"></span><span>' + msg[result] + '</span></p>');
            } else {
              output.addClass("success");
              output.addClass("active");
            }
          } else {
            if (output.hasClass("snackbars")) {
              output.html(' <p class="snackbars-left"><span class="icon icon-xxs mdi mdi-alert-outline text-middle"></span><span>' + msg[result] + '</span></p>');
            } else {
              output.addClass("error");
              output.addClass("active");
            }
          }
          form.clearForm();
          form.find('input, textarea').blur();

          setTimeout(function () {
            output.removeClass("active");
            form.removeClass('success');
          }, 5000);
        }
      });
    }
  }

  /**
   * Custom Toggles
   */
  if (plugins.customToggle.length) {
    var i;
    for (i = 0; i < plugins.customToggle.length; i++) {
      var $this = $(plugins.customToggle[i]);
      $this.on('click', function (e) {
        e.preventDefault();
        $("#" + $(this).attr('data-custom-toggle')).add(this).toggleClass('active');
      });

      if ($this.attr("data-custom-toggle-disable-on-blur") === "true") {
        $("body").on("click", $this, function (e) {
          if (e.target !== e.data[0] && $("#" + e.data.attr('data-custom-toggle')).find($(e.target)).length == 0 && e.data.find($(e.target)).length == 0) {
            $("#" + e.data.attr('data-custom-toggle')).add(e.data[0]).removeClass('active');
          }
        })
      }
    }
  }

  /**
   * Custom Waypoints
   */
  if (plugins.customWaypoints.length) {
    var i;
    $document.delegate("[data-custom-scroll-to]","click", function (e) {
      e.preventDefault();
      $("body, html").stop().animate({
        scrollTop: $("#" + $(this).attr('data-custom-scroll-to')).offset().top
      }, 1000, function () {
        $(window).trigger("resize");
      });
    });
  }

  /**
   * RD Parallax
   * @description Enables RD Parallax plugin
   */
  if (plugins.rdParallax.length) {
    var i;
    $.RDParallax();
    if (!isIE && !isMobile) {
      $(window).on("scroll", function () {
        for (i = 0; i < plugins.rdParallax.length; i++) {
          var parallax = $(plugins.rdParallax[i]);
          if (isScrolledIntoView(parallax)) {
            parallax.find(".rd-parallax-inner").css("position", "fixed");
          } else {
            parallax.find(".rd-parallax-inner").css("position", "absolute");
          }
        }
      });
    }

    $("a[href='#']").on("click", function (e) {
      setTimeout(function () {
        $(window).trigger("resize");
      }, 300);
    });
  }

  $.fn.formValidation=function(){this.find("input, textarea").after('<p class="alert-form-info"></p>'),this.on("submit",function(t){if($(this).find("input, textarea").each(function(){""==$(this).val()&&($(this).addClass("alert-form").next().html("Field can&#39;t be blank").slideDown(),$(this).on("focus",function(){$(this).removeClass("alert-form").next().slideUp()}),t.preventDefault())}),$(this).find("input[type=email]").length){var e=$(this).find("input[type=email]");e.val().length>0&&(e.val().length<6||-1==e.val().indexOf("@")||-1==e.val().indexOf("."))&&(e.addClass("alert-form").next().html("Incorrect email").slideDown(),e.on("focus",function(){$(this).removeClass("alert-form").next().slideUp()}),t.preventDefault())}if(2==$(this).find("input[type=password]").length){var n=$(this).find("input[type=password]:eq(0)"),i=$(this).find("input[type=password]:eq(1)");n.val()!=i.val()&&(i.addClass("alert-form").next().html("Passwords do not match").slideDown(),i.on("focus",function(){i.removeClass("alert-form").next().slideUp()}),t.preventDefault())}})};

  jQuery(function (e) {
    e(document).ready(function () {
      e("#account_register").find(".alert").length ? e("#account_login, #account_reset").hide() : e("#account_reset").find(".alert").length ? (e("#account_reset").show(), e("#account_register").hide()) : e("#account_register, #account_reset").hide(), e("#account_reset__link").on("click", function (c) {
        c.preventDefault(), e("#account_reset").slideDown()
      }), e(".account_reset__cancel").on("click", function (c) {
        c.preventDefault(), e("#account_reset").slideUp()
      }), e("#account_register__link").on("click", function (c) {
        c.preventDefault(), e("#account_reset:visible") && e("#account_reset").slideUp(), e("#account_login").delay(0).slideUp(), e("#account_register").delay(0).slideDown()
      }), e(".account_register__cancel").on("click", function (c) {
        c.preventDefault(), e("#account_register").slideUp(), e("#account_login").slideDown()
      }), "#recover" == window.location.hash && e("#account_reset").show(), e('#account_register a[href*="recover"]').on("click", function () {
        e("#account_register").slideUp(), e("#account_login").slideDown(), e("#account_reset").slideDown()
      }), e("#account_login form, #account_register form, #account_reset form").formValidation()
    })
  });
});