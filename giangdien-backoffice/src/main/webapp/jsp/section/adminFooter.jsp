<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:importAttribute name="isMainBoard"/>
<tiles:importAttribute name="tagsPlugin"/>
<tiles:importAttribute name="holderPlugin"/>
<tiles:importAttribute name="fileUploadPlugin"/>
<tiles:importAttribute name="hasTask"/>
<tiles:importAttribute name="hasChart"/>
<tiles:importAttribute name="hasCalendar"/>
<tiles:importAttribute name="hasReportMap"/>
<tiles:importAttribute name="datePlugin"/>
<tiles:importAttribute name="magnificPopup"/>
<tiles:importAttribute name="summernote"/>
<tiles:importAttribute name="messageDocker"/>
<tiles:importAttribute name="canvasBG"/>
<c:if test="${messageDocker == 'true'}">
    <!-- Admin Dock Quick Compose Message -->
    <div class="quick-compose-form">
        <form id="">
            <input type="email" class="form-control" id="inputEmail" placeholder="Email">
            <input type="text" class="form-control" id="inputSubject" placeholder="Subject">
            <div class="summernote-quick">Compose your message here...</div>
        </form>
    </div>
</c:if>
<!-- jQuery -->
<script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>

<c:if test="${canvasBG == 'true'}">
    <script src="${pageContext.request.contextPath}/js/admin/canvasbg.js"></script>
</c:if>

<c:if test="${summernote == 'true'}">
    <!-- Summernote Plugin -->
    <script src="${pageContext.request.contextPath}/js/admin/summernote.min.js"></script>
</c:if>
<c:if test="${hasChart == 'true'}">
    <!-- HighCharts Plugin -->
    <script src="${pageContext.request.contextPath}/js/admin/highcharts.js"></script>
    <script src="${pageContext.request.contextPath}/js/admin/highcharts-more.js"></script>
</c:if>
<c:if test="${hasReportMap == 'true'}">
    <!-- JvectorMap Plugin + US Map (more maps in plugin/assets folder) -->
    <script src="${pageContext.request.contextPath}/js/admin/jquery.jvectormap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/admin/jquery-jvectormap-us-lcc-en.js"></script>
</c:if>
<c:if test="${tagsPlugin == 'true'}">
    <!-- Bootstrap Tabdrop Plugin -->
    <script src="${pageContext.request.contextPath}/js/admin/bootstrap-tabdrop.js"></script>
</c:if>
<c:if test="${hasCalendar == 'true'}">
    <!-- FullCalendar Plugin + moment Dependency -->
    <script src="${pageContext.request.contextPath}/js/admin/moment.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/admin/fullcalendar.min.js"></script>
</c:if>

<c:if test="${magnificPopup == 'true'}">
    <!-- Mixitup Plugin -->
    <script src="${pageContext.request.contextPath}/js/admin/jquery.mixitup.min.js"></script>
    <!-- Page Plugins -->
    <script src="${pageContext.request.contextPath}/js/admin/jquery.magnific-popup.js"></script>
</c:if>

<c:if test="${fileUploadPlugin == 'true'}">
    <script src="${pageContext.request.contextPath}/js/admin/fileupload.js"></script>
    <script src="${pageContext.request.contextPath}/js/admin/holder.min.js"></script>
</c:if>
<c:if test="${holderPlugin == 'true'}">

</c:if>
<c:if test="${datePlugin == 'true'}">
    <script src="${pageContext.request.contextPath}/js/admin/jquery-ui-datepicker.min.js"></script>
</c:if>


<c:if test="${tagsPlugin == 'true'}">
    <script src="${pageContext.request.contextPath}/js/admin/tagsinput.min.js"></script>
</c:if>

<!-- Theme Javascript -->
<script src="${pageContext.request.contextPath}/js/utility.js"></script>
<script src="${pageContext.request.contextPath}/js/admin/demo.js"></script>
<script src="${pageContext.request.contextPath}/js/admin/main.js"></script>

<!-- Widget Javascript -->
<script src="${pageContext.request.contextPath}/js/admin/widgets.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function () {

        "use strict";

        // Init Demo JS
        Demo.init();


        // Init Theme Core
        Core.init();
        <c:if test="${datePlugin == 'true'}">
            /* @time picker
             ------------------------------------------------------------------ */
            $('.inline-tp').timepicker();

            $('.timePicker').timepicker({
                beforeShow: function (input, inst) {
                    var newclass = 'admin-form';
                    var themeClass = $(this).parents('.admin-form').attr('class');
                    var smartpikr = inst.dpDiv.parent();
                    if (!smartpikr.hasClass(themeClass)) {
                        inst.dpDiv.wrap('<div class="' + themeClass + '"></div>');
                    }
                }
            });
        </c:if>
        <c:if test="${canvasBG == 'true'}">
            // Init CanvasBG and pass target starting location
            CanvasBG.init({
                Loc: {
                    x: window.innerWidth / 2,
                    y: window.innerHeight / 3.3
                },
            });
        </c:if>
        <c:if test="${summernote == 'true'}">


        var msgListing = $('#message-table > tbody > tr > td');
        var msgCheckbox = $('#message-table > tbody > tr input[type=checkbox]');

        // on message table checkbox click, toggle highlighted class
        msgCheckbox.on('click', function () {
            $(this).parents('tr').toggleClass('highlight');
        });

        // on message table row click, redirect page. Unless target was a checkbox
        msgListing.not(":first-child").on('click', function (e) {

            // stop event bubble if clicked item is not a checkbox
            e.stopPropagation();
            e.preventDefault();

            // Redirect to message compose page if clicked item is not a checkbox
            window.location = "pages_compose(alt).html";
        });

        // On button click display quick compose message form
        $('#quick-compose').on('click', function () {

            // Admin Dock Plugin
            $('.quick-compose-form').dockmodal({
                minimizedWidth: 260,
                width: 470,
                height: 480,
                title: 'Compose Message',
                initialState: "docked",
                buttons: [{
                    html: "Send",
                    buttonClass: "btn btn-primary btn-sm",
                    click: function (e, dialog) {
                        // do something when the button is clicked
                        dialog.dockmodal("close");

                        // after dialog closes fire a success notification
                        setTimeout(function () {
                            msgCallback();
                        }, 500);
                    }
                }]
            });
        });

        // example email compose success notification
        function msgCallback() {
            (new PNotify({
                title: 'Message Success!',
                text: 'Your message has been <b>Sent.</b>',
                hide: false,
                type: 'success',
                addclass: "mt50",
                buttons: {
                    closer: false,
                    sticker: false
                },
                history: {
                    history: false
                }
            }));
        };
        // Init Summernote
        $('.summernote-quick').summernote({
            height: 275, //set editable area's height
            focus: false, //set focus editable area after Initialize summernote
            toolbar: [
                ['style', ['bold', 'italic', 'underline',]],
                ['para', ['ul', 'ol', 'paragraph']],
                ['height', ['height']],
            ]
        });
        </c:if>
        <c:if test="${magnificPopup == 'true'}">
        var dropdownFilter = {

            // Declare any variables we will need as properties of the object
            $filters: null,
            $reset: null,
            groups: [],
            outputArray: [],
            outputString: '',

            // The "init" method will run on document ready and cache any jQuery objects we will need.
            init: function () {
                var self = this; // As a best practice, in each method we will asign "this" to the variable "self" so that it remains scope-agnostic. We will use it to refer to the parent "dropdownFilter" object so that we can share methods and properties between all parts of the object.

                self.$filters = $('#select-filters');
                self.$reset = $('#mix-reset');
                self.$container = $('#mix-container');

                self.$filters.find('fieldset').each(function () {
                    self.groups.push({
                        $dropdown: $(this).find('select'),
                        active: ''
                    });
                });

                self.bindHandlers();
            },

            // The "bindHandlers" method will listen for whenever a select is changed.
            bindHandlers: function () {
                var self = this;

                // Handle select change
                self.$filters.on('change', 'select', function (e) {
                    e.preventDefault();

                    self.parseFilters();
                });

                // Handle reset click
                self.$reset.on('click', function (e) {
                    e.preventDefault();

                    self.$filters.find('select').val('');

                    self.parseFilters();
                });
            },

            // The parseFilters method pulls the value of each active select option
            parseFilters: function () {
                var self = this;

                // loop through each filter group and grap the value from each one.
                for (var i = 0, group; group = self.groups[i]; i++) {
                    group.active = group.$dropdown.val();
                }

                self.concatenate();
            },

            // The "concatenate" method will crawl through each group, concatenating filters as desired:
            concatenate: function () {
                var self = this;

                self.outputString = ''; // Reset output string

                for (var i = 0, group; group = self.groups[i]; i++) {
                    self.outputString += group.active;
                }

                // If the output string is empty, show all rather than none:
                !self.outputString.length && (self.outputString = 'all');

                //console.log(self.outputString);
                // ^ we can check the console here to take a look at the filter string that is produced

                // Send the output string to MixItUp via the 'filter' method:
                if (self.$container.mixItUp('isLoaded')) {
                    self.$container.mixItUp('filter', self.outputString);
                }
            }
        };

        // To keep our code clean and modular, all custom functionality will be contained inside a single object literal called "checkboxFilter".
        var checkboxFilter = {

            // Declare any variables we will need as properties of the object
            $filters: null,
            $reset: null,
            groups: [],
            outputArray: [],
            outputString: '',

            // The "init" method will run on document ready and cache any jQuery objects we will need.
            init: function () {
                var self = this; // As a best practice, in each method we will asign "this" to the variable "self" so that it remains scope-agnostic. We will use it to refer to the parent "checkboxFilter" object so that we can share methods and properties between all parts of the object.

                self.$filters = $('#checkbox-filters');
                self.$reset = $('#mix-reset2');
                self.$container = $('#mix-container');

                self.$filters.find('fieldset').each(function () {
                    self.groups.push({
                        $inputs: $(this).find('input'),
                        active: [],
                        tracker: false
                    });
                });

                self.bindHandlers();
            },

            // The "bindHandlers" method will listen for whenever a form value changes.
            bindHandlers: function () {
                var self = this;

                self.$filters.on('change', function () {
                    self.parseFilters();
                });

                self.$reset.on('click', function (e) {
                    e.preventDefault();
                    self.$filters[0].reset();
                    self.parseFilters();
                });
            },

            // The parseFilters method checks which filters are active in each group:
            parseFilters: function () {
                var self = this;

                // loop through each filter group and add active filters to arrays
                for (var i = 0, group; group = self.groups[i]; i++) {
                    group.active = []; // reset arrays
                    group.$inputs.each(function () {
                        $(this).is(':checked') && group.active.push(this.value);
                    });
                    group.active.length && (group.tracker = 0);
                }

                self.concatenate();
            },

            // The "concatenate" method will crawl through each group, concatenating filters as desired:
            concatenate: function () {
                var self = this,
                    cache = '',
                    crawled = false,
                    checkTrackers = function () {
                        var done = 0;

                        for (var i = 0, group; group = self.groups[i]; i++) {
                            (group.tracker === false) && done++;
                        }

                        return (done < self.groups.length);
                    },
                    crawl = function () {
                        for (var i = 0, group; group = self.groups[i]; i++) {
                            group.active[group.tracker] && (cache += group.active[group.tracker]);

                            if (i === self.groups.length - 1) {
                                self.outputArray.push(cache);
                                cache = '';
                                updateTrackers();
                            }
                        }
                    },
                    updateTrackers = function () {
                        for (var i = self.groups.length - 1; i > -1; i--) {
                            var group = self.groups[i];

                            if (group.active[group.tracker + 1]) {
                                group.tracker++;
                                break;
                            } else if (i > 0) {
                                group.tracker && (group.tracker = 0);
                            } else {
                                crawled = true;
                            }
                        }
                    };

                self.outputArray = []; // reset output array

                do {
                    crawl();
                }
                while (!crawled && checkTrackers());

                self.outputString = self.outputArray.join();

                // If the output string is empty, show all rather than none:
                !self.outputString.length && (self.outputString = 'all');

                //console.log(self.outputString);
                // ^ we can check the console here to take a look at the filter string that is produced

                // Send the output string to MixItUp via the 'filter' method:
                if (self.$container.mixItUp('isLoaded')) {
                    self.$container.mixItUp('filter', self.outputString);
                }
            }
        };

        // Init multiselect plugin on filter dropdowns
        $('#filter1').multiselect({
            buttonClass: 'btn btn-default',
        });
        $('#filter2').multiselect({
            buttonClass: 'btn btn-default',
        });

        // Init checkboxFilter code
        checkboxFilter.init();

        // Init dropdownFilter code
        dropdownFilter.init();

        var $container = $('#mix-container'), // mixitup container
            $toList = $('.to-list'), // list view button
            $toGrid = $('.to-grid'); // list view button

        // Instantiate MixItUp
        $container.mixItUp({
            controls: {
                enable: false // we won't be needing these
            },
            animation: {
                duration: 400,
                effects: 'fade translateZ(-360px) stagger(45ms)',
                easing: 'ease'
            },
            callbacks: {
                onMixFail: function () {
                }
            }
        });

        $toList.on('click', function () {
            if ($container.hasClass('list')) {
                return
            }
            $container.mixItUp('changeLayout', {
                display: 'block',
                containerClass: 'list'
            }, function (state) {
                // callback function
            });
        });
        $toGrid.on('click', function () {
            if ($container.hasClass('grid')) {
                return
            }
            $container.mixItUp('changeLayout', {
                display: 'inline-block',
                containerClass: 'grid'
            }, function (state) {
                // callback function
            });
        });

        // Add Gallery Item to Lightbox
        $('.mix img').magnificPopup({
            type: 'image',
            callbacks: {
                beforeOpen: function (e) {
                    // we add a class to body to indicate overlay is active
                    // We can use this to alter any elements such as form popups
                    // that need a higher z-index to properly display in overlays
                    $('body').addClass('mfp-bg-open');

                    // Set Magnific Animation
                    this.st.mainClass = 'mfp-zoomIn';

                    // Inform content container there is an animation
                    this.contentContainer.addClass('mfp-with-anim');
                },
                afterClose: function (e) {

                    setTimeout(function () {
                        $('body').removeClass('mfp-bg-open');
                        $(window).trigger('resize');
                    }, 1000)

                },
                elementParse: function (item) {
                    // Function will fire for each target element
                    // "item.el" is a target DOM element (if present)
                    // "item.src" is a source that you may modify
                    item.src = item.el.attr('src');
                },
            },
            overflowY: 'scroll',
            removalDelay: 200, //delay removal by X to allow out-animation
            prependTo: $('#content_wrapper')
        });
        </c:if>
        <c:if test="${holderPlugin == 'true'}">
        // select list dropdowns - placeholder like creation
        var selectList = $('.admin-form select');
        selectList.each(function (i, e) {
            $(e).on('change', function () {
                if ($(e).val() == "0") $(e).addClass("empty");
                else $(e).removeClass("empty")
            });
        });
        selectList.each(function (i, e) {
            $(e).change();
        });
        </c:if>
        <c:if test="${tagsPlugin == 'true'}">
        // Init TagsInput plugin
        $("input#tagsinput").tagsinput({
            tagClass: function (item) {
                return 'label bg-primary light';
            }
        });
        </c:if>

        <c:if test="${isMainBoard == 'true'}">
        // Init Widget Demo JS
        // demoHighCharts.init();

        // Because we are using Admin Panels we use the OnFinish
        // callback to activate the demoWidgets. It's smoother if
        // we let the panels be moved and organized before
        // filling them with content from various plugins

        // Init plugins used on this page
        // HighCharts, JvectorMap, Admin Panels

        // Init Admin Panels on widgets inside the ".admin-panels" container
        $('.admin-panels').adminpanel({
            grid: '.admin-grid',
            draggable: true,
            preserveGrid: true,
            // mobile: true,
            onStart: function () {
                // Do something before AdminPanels runs
            },
            onFinish: function () {
                $('.admin-panels').addClass('animated fadeIn').removeClass('fade-onload');

                // Init the rest of the plugins now that the panels
                // have had a chance to be moved and organized.
                // It's less taxing to organize empty panels
                <c:if test="${hasChart == 'true'}">
                demoHighCharts.init();
                </c:if>
                <c:if test="${hasReportMap == 'true'}">
                runVectorMaps(); // function below
                </c:if>
            },
            onSave: function () {
                $(window).trigger('resize');
            }
        });
        </c:if>
        <c:if test="${hasCalendar == 'true'}">
        // Init plugins for ".calendar-widget"
        // plugins: FullCalendar
        //
        $('#calendar-widget').fullCalendar({
            // contentHeight: 397,
            header: {
                left: 'prev',
                center: 'title, today',
                right: 'next'
            },
            editable: true,
            events: [{
                title: 'Sony Meeting',
                start: '2015-12-12',
                end: '2015-12-12',
                className: 'fc-event-success',
            }, {
                title: 'Conference',
                start: '2015-12-08',
                end: '2015-05-13',
                className: 'fc-event-warning'
            }, {
                title: 'Lunch Testing',
                start: '2015-12-21',
                end: '2015-12-23',
                className: 'fc-event-info'
            }, {
                title: 'Meeting',
                start: '2016-01-12',
                className: 'fc-event-info',
            }, {
                title: 'My Meeting',
                start: '2016-02-18',
                className: 'fc-event-alert',
            }
            ],
            eventRender: function (event, element) {
                // create event tooltip using bootstrap tooltips
                $(element).attr("data-original-title", event.title);
                $(element).tooltip({
                    container: 'body',
                    delay: {
                        "show": 100,
                        "hide": 200
                    }
                });
                // create a tooltip auto close timer
                $(element).on('show.bs.tooltip', function () {
                    var autoClose = setTimeout(function () {
                        $('.tooltip').fadeOut();
                    }, 3500);
                });
            }
        });
        </c:if>


        <c:if test="${hasTask == 'true'}">
        // Init plugins for ".task-widget"
        // plugins: Custom Functions + jQuery Sortable
        //
        var taskWidget = $('div.task-widget');
        var taskItems = taskWidget.find('li.task-item');
        var currentItems = taskWidget.find('ul.task-current');
        var completedItems = taskWidget.find('ul.task-completed');

        // Init jQuery Sortable on Task Widget
        taskWidget.sortable({
            items: taskItems, // only init sortable on list items (not labels)
            handle: '.task-menu',
            axis: 'y',
            connectWith: ".task-list",
            update: function (event, ui) {
                var Item = ui.item;
                var ParentList = Item.parent();

                // If item is already checked move it to "current items list"
                if (ParentList.hasClass('task-current')) {
                    Item.removeClass('item-checked').find('input[type="checkbox"]').prop('checked', false);
                }
                if (ParentList.hasClass('task-completed')) {
                    Item.addClass('item-checked').find('input[type="checkbox"]').prop('checked', true);
                }

            }
        });

        // Custom Functions to handle/assign list filter behavior
        taskItems.on('click', function (e) {
            e.preventDefault();
            var This = $(this);
            var Target = $(e.target);

            if (Target.is('.task-menu') && Target.parents('.task-completed').length) {
                This.remove();
                return;
            }

            if (Target.parents('.task-handle').length) {
                // If item is already checked move it to "current items list"
                if (This.hasClass('item-checked')) {
                    This.removeClass('item-checked').find('input[type="checkbox"]').prop('checked', false);
                }
                // Otherwise move it to the "completed items list"
                else {
                    This.addClass('item-checked').find('input[type="checkbox"]').prop('checked', true);
                }
            }

        });
        </c:if>

        var highColors = [bgSystem, bgSuccess, bgWarning, bgPrimary];

        <c:if test="${hasChart == 'true'}">
        // Chart data
        var seriesData = [{
            name: 'Coffee',
            data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            color: '#40d67e',
            lineWidth: 1,
            shadow: {
                enabled: true,
                color: '#40d67e',
                width: 7,
                opacity: 0.1
            }
        }, {
            name: 'Restaurant',
            data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            color: '#0288d1',
            lineWidth: 1,
            shadow: {
                enabled: true,
                color: '#0288d1',
                width: 7,
                opacity: 0.1
            }
        }, {
            name: 'Store',
            data: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
            color: '#f16360',
            lineWidth: 1,
            shadow: {
                enabled: true,
                color: '#f16360',
                width: 7,
                opacity: 0.1
            }
        }

        ];

        var ecomChart = $('#ecommerce_chart1');
        if (ecomChart.length) {
            ecomChart.highcharts({
                credits: false,

                chart: {
                    backgroundColor: 'transparent',
                    className: '',
                    type: 'line',
                    zoomType: 'x',
                    panning: false,
                    panKey: 'shift',
                    marginTop: 85,
                    marginRight: 0,
                    spacingRight: 0,
                },
                title: {
                    text: null
                },
                xAxis: {
                    gridLineColor: '#eceff1',
                    lineColor: '#eceff1',
                    tickColor: '#eceff1',
                    categories: ['Jan', 'Feb', 'Mar', 'Apr',
                        'May', 'Jun', 'Jul', 'Aug',
                        'Sep', 'Oct', 'Nov', 'Dec'
                    ],
                    labels: {
                        style: {
                            color: '#546e7a',
                            fontWeight: 'normal',
                            fontFamily: 'Fira Sans',
                            fontSize: '12px'
                        }
                    }
                },
                yAxis: {
                    min: 0,
                    tickInterval: 5,
                    gridLineColor: '#eceff1',
                    title: {
                        text: null,
                    },
                    labels: {
                        style: {
                            color: '#546e7a',
                            fontWeight: 'normal',
                            fontFamily: 'Fira Sans',
                            fontSize: '12px'
                        }
                    }
                },
                plotOptions: {
                    spline: {
                        lineWidth: 3,
                    },
                    area: {
                        fillOpacity: 0.2
                    },
                    series: {
                        marker: {
                            enabled: false,
                            symbol: 'circle',
                            radius: 4,
                            lineColor: "#FFFFFF",
                            lineWidth: 3
                        }
                    }
                },
                legend: {
                    enabled: true,
                    floating: true,
                    symbol: 'circle',
                    align: 'left',
                    verticalAlign: 'top',
                    padding: 10,
                    x: -6,
                    y: 10,
                    itemStyle: {
                        color: '#273339',
                        fontWeight: 'normal',
                        fontFamily: 'Fira Sans',
                        fontSize: '14px'
                    }
                },
                series: seriesData
            });
        }
        </c:if>
        <c:if test="${hasReportMap == 'true'}">
        // Widget VectorMap
        function runVectorMaps() {

            // Jvector Map Plugin
            var runJvectorMap = function () {
                // Data set
                var mapData = [900, 700, 350, 500, 200];
                // Init Jvector Map
                $('#WidgetMap').vectorMap({
                    map: 'us_lcc_en',
                    zoomAnimate: true,
                    zoomOnScroll: false,
                    backgroundColor: 'transparent',
                    series: {
                        markers: [{
                            attribute: 'r',
                            scale: [3, 7],
                            values: mapData
                        }]
                    },
                    regionStyle: {
                        initial: {
                            fill: '#cfd8dc'
                        },
                        hover: {
                            "fill-opacity": 0.3
                        }
                    },
                    markers: [{
                        latLng: [37.78, -122.41],
                        name: 'San Francisco,CA'
                    }, {
                        latLng: [36.73, -103.98],
                        name: 'Texas,TX'
                    }, {
                        latLng: [38.62, -90.19],
                        name: 'St. Louis,MO'
                    }, {
                        latLng: [40.67, -73.94],
                        name: 'New York City,NY'
                    }],
                    markerStyle: {
                        initial: {
                            fill: '#a288d5',
                            stroke: '#b49ae0',
                            "fill-opacity": 1,
                            "stroke-width": 10,
                            "stroke-opacity": 1,
                            r: 3
                        },
                        hover: {
                            stroke: 'white',
                            "stroke-width": 2
                        },
                        selected: {
                            fill: 'blue'
                        },
                        selectedHover: {}
                    },
                    onRegionTipShow: function (event, label, code) {
                        label.html(
                            '<b>' + label.html() + '</b></br>' +
                            '<b>Unemployment rate: </b>' + data.states[val][code] + '%'
                        );
                    },
                });
                // Manual code to alter the Vector map plugin to
                // allow for individual coloring of countries
                var states = ['US-CA', 'US-TX', 'US-MO',
                    'US-NY'
                ];
                var colors = [bgDangerLr, bgSuccessLr, bgInfoLr, bgWarningLr];
                var colors2 = [bgDanger, bgSuccess, bgInfo, bgWarning];
                $.each(states, function (i, e) {
                    $("#WidgetMap path[data-code=" + e + "]").css({
                        fill: colors[i]
                    });
                });
                $('#WidgetMap').find('.jvectormap-marker')
                    .each(function (i, e) {
                        $(e).css({
                            fill: colors2[i],
                            stroke: colors2[i]
                        });
                    });
            }

            if ($('#WidgetMap').length) {
                runJvectorMap();
            }
        }

        </c:if>

    });
</script>