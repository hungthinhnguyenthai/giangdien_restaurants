<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<tiles:importAttribute name="title"/>
<section class="context-dark">
    <div data-on="false" data-md-on="true" class="rd-parallax">
        <div data-speed="0.45" data-type="media" data-url="${pageContext.request.contextPath}/images/home/intro-01-1920x955.jpg" class="rd-parallax-layer"></div>
        <div data-speed="0.3" data-type="html" data-fade="true" class="rd-parallax-layer">
            <div class="shell">
                <div class="section-110 range range-xs-center range-xs-middle">
                    <div class="cell-md-8"><img src="${pageContext.request.contextPath}/images/home/intro-logo-175x173.png" alt="" width="175" height="173">
                        <h1 class="font-accent"><span class="big"><tiles:getAsString name="title"/></span></h1>
                        <ul class="list-inline list-inline-dashed p">
                            <li><a href="${pageContext.request.contextPath}/controller/home">Home</a></li>
                            <li><tiles:getAsString name="title"/></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

