<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!-- About Us -->
<section class="well-xl">
    <div class="container text-center">
        <span class="text-default icon-sm material-icons-cloud_queue"></span>
        <span class="divider text-primary"></span>
        <h2>In a Nutshell About Us</h2>
        <div class="row offset-6">
            <div class="col-sm-6">
                <p >A website is a medium that connects a person with the
                    world of digital data. With its help users can access information, make purchases,
                    communicate with each other, and do loads
                    of other things. A website has become an indispensable tool
                    of a professional business presentation. </p>
                <span class="divider text-default"></span>
            </div>
            <div class="col-sm-6 offset-10">
                <p>Due to the clever marketing strategy and professional web
                    designing, corporations can grow their client base with ease. On the modern market the
                    competition is very tough, so in order to be a success, businesses experiment
                    with multiple strategies with the goal of coming up with the perfect one. </p>
                <span class="divider text-default"></span>
            </div>
        </div>
    </div>
</section>
<tiles:insertAttribute name="section_01" defaultValue="/jsp/aktv/section/interfaceDesign.jsp"/>
<tiles:insertAttribute name="section_02" defaultValue="/jsp/aktv/section/ourTeam.jsp"/>
<tiles:insertAttribute name="section_03" defaultValue="/jsp/aktv/section/usefulInfo.jsp"/>
<!-- END About Us-->


