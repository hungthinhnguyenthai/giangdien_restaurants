<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section id="content" class="table-layout animated fadeIn">

    <div class="tray tray-center">

        <div class="mh15 pv15 br-b br-light">
            <div class="row">
                <div class="col-xs-7">
                    <div class="mix-controls ib">
                        <form class="controls" id="select-filters">
                            <!-- We can add an unlimited number of "filter groups" using the following format: -->
                            <div class="btn-group ib mr10">
                                <button type="button" class="btn btn-default hidden-xs">
                                    <span class="fa fa-folder"></span>
                                </button>
                                <div class="btn-group">
                                    <fieldset>
                                        <select id="filter1">
                                            <option value="">All Folders</option>
                                            <c:forEach var="business" items="${services}">
                                                <option value=".${business.name}">${business.title}</option>
                                            </c:forEach>
                                        </select>
                                    </fieldset>
                                </div>
                            </div>
                            <div class="btn-group ib mr10">
                                <button type="button" class="btn btn-default hidden-xs">
                                    <span class="fa fa-tag"></span>
                                </button>
                                <div class="btn-group">
                                    <fieldset>
                                        <select id="filter2">
                                            <option value="">All Labels</option>
                                            <option value=".space">Space</option>
                                            <option value=".product">Product</option>
                                        </select>
                                    </fieldset>
                                </div>
                            </div>
                        </form>
                    </div>

                </div>
                <div class="col-xs-5 text-right">
                    <button type="button" id="mix-reset" class="btn btn-default mr5">Clear Filters</button>
                    <div class="btn-group">
                        <button type="button" class="btn btn-default to-grid">
                            <span class="fa fa-th"></span>
                        </button>
                        <button type="button" class="btn btn-default to-list">
                            <span class="fa fa-navicon"></span>
                        </button>
                    </div>
                </div>
            </div>
            <div class="mix-controls hidden">
                <form class="controls admin-form" id="checkbox-filters">
                    <!-- We can add an unlimited number of "filter groups" using the following format: -->

                    <fieldset class="">
                        <h4>Cars</h4>

                        <label class="option block mt10">
                            <input type="checkbox" value=".circle">
                            <span class="checkbox"></span>Circle
                        </label>

                    </fieldset>

                    <button id="mix-reset2">Clear All</button>
                </form>

            </div>
        </div>

        <div id="mix-container">

            <div class="fail-message">
                <span>No items were found matching the selected filters</span>
            </div>

            <c:forEach var="business" items="${services}">
                <c:set var="label" value="${business.name}"/>
                <c:forEach var="category" items="${business.categories}">
                    <c:forEach var="subcategory" items="${category.subCategories}">
                        <c:forEach var="gallery" items="${subcategory.galleries}">
                            <div class="mix product ${label}">
                                <div class="panel p6 pbn">
                                    <div class="of-h">
                                        <img src="${pageContext.request.contextPath}/${gallery.imageUrl}" class="img-responsive" <c:if test="${not empty gallery.name}">
                                             title="${gallery.name}"
                                             </c:if>>
                                        <div class="row table-layout">
                                            <div class="col-xs-8 va-m pln">
                                                <h6>
                                                    <c:if test="${not empty gallery.name}">
                                                        <h6>${gallery.name}</h6>
                                                    </c:if>
                                                </h6>
                                            </div>
                                            <div class="col-xs-4 text-right va-m prn">
                                                <span class="fa fa-eye-slash fs12 text-muted"></span>
                                                <span class="fa fa-circle fs10 text-info ml10"></span>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </c:forEach>
                    </c:forEach>
                </c:forEach>
                <c:forEach var="area" items="${business.areas}">
                    <c:forEach var="gallery" items="${area.galleries}">
                        <div class="mix space ${label}">
                            <div class="panel p6 pbn">
                                <div class="of-h">
                                    <img src="${pageContext.request.contextPath}/${gallery.imageUrl}" class="img-responsive" <c:if test="${not empty gallery.name}">
                                         title="${gallery.name}"
                                    </c:if>>>
                                    <div class="row table-layout">
                                        <div class="col-xs-8 va-m pln">
                                            <c:if test="${not empty gallery.name}">
                                                <h6>${gallery.name}</h6>
                                            </c:if>
                                        </div>
                                        <div class="col-xs-4 text-right va-m prn">
                                            <span class="fa fa-eye fs12 text-muted"></span>
                                            <span class="fa fa-circle fs10 text-info ml10"></span>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </c:forEach>
                    <c:forEach var="table" items="${area.tables}">
                        <c:forEach var="gallery" items="${table.galleries}">
                            <div class="mix space ${label}">
                                <div class="panel p6 pbn">
                                    <div class="of-h">
                                        <img src="${pageContext.request.contextPath}/${gallery.imageUrl}" class="img-responsive" <c:if test="${not empty gallery.name}">
                                             title="${gallery.name}"
                                        </c:if>>">
                                        <div class="row table-layout">
                                            <div class="col-xs-8 va-m pln">
                                                <c:if test="${not empty gallery.name}">
                                                    <h6>${gallery.name}</h6>
                                                </c:if>
                                            </div>
                                            <div class="col-xs-4 text-right va-m prn">
                                                <span class="fa fa-eye fs12 text-muted"></span>
                                                <span class="fa fa-circle fs10 text-info ml10"></span>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </c:forEach>
                    </c:forEach>
                </c:forEach>
            </c:forEach>
        </div>

    </div>

    <aside class="tray tray-right tray320" data-tray-height="match">m

        <h4 class="tray-title"> Upload New Image </h4>

        <!-- Image Upload Field -->
        <div class="fileupload fileupload-new admin-form mt20" data-provides="fileupload">
            <div class="section mb10">
                <label for="name1" class="field prepend-icon">
                    <input type="text" name="name2" id="name1" class="event-name gui-input br-light light" placeholder="Title">
                    <label for="name1" class="field-icon">
                        <i class="fa fa-pencil"></i>
                    </label>
                </label>
            </div>
            <div class="section mb10">
                <label class="field prepend-icon">
                    <textarea class="gui-textarea br-light h-80 bg-light" id="comment" name="comment" placeholder="Description"></textarea>
                    <label for="comment" class="field-icon">
                        <i class="fa fa-comments"></i>
                    </label>
                    <span class="input-footer hidden">
                  <strong>Hint:</strong>Don't be negative or off topic! just be awesome...</span>
                </label>
            </div>
            <div class="row flex-center">
                <div class="col-xs-4">
                <span class="button btn-system btn-file btn-block ph5">
                  <span class="fileupload-new">Select image</span>
                  <span class="fileupload-exists">Change File</span>
                  <input type="file">
                </span>
                </div>
                <div class="col-xs-8 pln">
                    <label for="name2" class="field prepend-icon">
                        <input type="text" name="name2" id="name2" class="event-name gui-input br-light bg-light" placeholder="Tags">
                        <label for="name2" class="field-icon">
                            <i class="fa fa-pencil"></i>
                        </label>
                    </label>
                </div>
            </div>

            <div class="fileupload-preview thumbnail m5 mt20 mb30">
                <img data-src="#" alt="holder">
            </div>

        </div>

        <!-- Labels Menu -->
        <div class="list-group list-group-links">
            <div class="list-group-header"> Labels </div>
            <a href="#" class="list-group-item">
                Clients
                <span class="badge badge-info">6</span>
            </a>
            <a href="#" class="list-group-item">
                Contractors
                <span class="badge badge-success">8</span>
            </a>
            <a href="#" class="list-group-item">
                Employees
                <span class="badge badge-primary">11</span>
            </a>
            <a href="#" class="list-group-item">
                Suppliers
                <span class="badge badge-system">13</span>
            </a>
        </div>

    </aside>

</section>