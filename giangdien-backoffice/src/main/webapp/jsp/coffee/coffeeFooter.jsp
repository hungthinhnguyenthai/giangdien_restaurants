<!-- Default footer-->
<!-- Global Mailform Output-->
<div id="form-output-global" class="snackbars"></div>
<!-- Java script-->
<!-- BEGIN: PAGE SCRIPTS -->
<script src="${pageContext.request.contextPath}/js/core.min.js"></script>
<script src="${pageContext.request.contextPath}/js/script.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
<!-- Mappelic Plugin -->
<script src="${pageContext.request.contextPath}/js/mapplic.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.mousewheel.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery.easing.js"></script>

<!-- Theme Javascript -->
<script src="${pageContext.request.contextPath}/js/utility.js"></script>
<script src="${pageContext.request.contextPath}/js/demo.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {

        "use strict";

        // Init Theme Core
        Core.init();

        // Init Demo JS
        Demo.init();

        var winHeight = $(window).height();
        var navHeight = $('.navbar').height();
        var topbarHeight = $('#topbar').height();

        // Calculate height of map
        var mapHeight = winHeight - (navHeight + topbarHeight + 21);

        $('#mapplic').mapplic({
            sidebar: true,
            minimap: true,
            fullscreen: true,
            height: mapHeight,
            maxscale: 3
        });
    })
</script>
<!-- END: PAGE SCRIPTS -->