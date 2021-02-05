<!-- Begin: Content -->
<section id="content" class="animated fadeIn">

    <div class="row">

        <!-- message tray -->
        <div class="col-md-3 message-tray animated fadeIn">

            <!-- quick compose button -->
            <button type="button" id="quick-compose" class="btn btn-danger light btn-block compose-btn">Quick Compose</button>

            <!-- message tray panel -->
            <div class="panel">
                <div class="panel-body p10">

                    <!-- Message Menu -->
                    <div class="list-group list-group-links mt20">
                        <div class="list-group-header"> Menu </div>
                        <a href="#" class="list-group-item">
                            <i class="fa fa-gear"></i>
                            Email Settings
                        </a>
                        <a href="#" class="list-group-item">
                            <i class="fa fa-envelope"></i>
                            Messages
                            <span class="label badge-circle badge-danger">0</span>
                        </a>
                        <a href="#" class="list-group-item">
                            <i class="fa fa-user"></i>
                            Friends
                            <span class="label badge-circle badge-warning">0</span>
                        </a>
                    </div>

                    <!-- Tags Menu -->
                    <div class="list-group list-group-links">
                        <div class="list-group-header"> Tags </div>
                        <a href="#" class="list-group-item">
                            Clients
                            <span class="fa fa-circle text-warning"></span>
                        </a>
                        <a href="#" class="list-group-item">
                            Contractors
                            <span class="fa fa-circle text-system"></span>
                        </a>
                        <a href="#" class="list-group-item">
                            Employees
                            <span class="fa fa-circle text-primary"></span>
                        </a>
                        <a href="#" class="list-group-item">
                            Suppliers
                            <span class="fa fa-circle text-alert"></span>
                        </a>
                    </div>

                    <!-- Labels Menu -->
                    <div class="list-group list-group-links">
                        <div class="list-group-header"> Labels </div>
                        <a href="#" class="list-group-item">
                            Clients
                            <span class="label badge-circle badge-danger">0</span>
                        </a>
                        <a href="#" class="list-group-item">
                            Contractors
                            <span class="label badge-circle badge-info">0</span>
                        </a>
                        <a href="#" class="list-group-item">
                            Employees
                            <span class="label badge-circle badge-primary">0</span>
                        </a>
                        <a href="#" class="list-group-item">
                            Suppliers
                            <span class="label badge-circle badge-success">0</span>
                        </a>
                    </div>


                </div>
            </div>
        </div>

        <!-- message listing panel -->
        <div class="col-md-9 animated fadeIn">

            <div class="panel">

                <!-- message toolbar header -->
                <div class="panel-menu">
                    <div class="row pt5 pl25 pr25">
                        <div class="hidden-xs hidden-sm col-md-3">
                            <div class="btn-group">
                                <button type="button" class="btn btn-round-1 mr10">
                                    <i class="fa fa-retweet"></i>
                                </button>
                                <button type="button" class="btn btn-round-1">
                                    <i class="fa fa-pencil"></i>
                                </button>
                            </div>
                        </div>
                        <div class="col-xs-12 col-md-9 text-right">
                            <button type="button" class="btn btn-danger light visible-xs-inline-block mr10">Compose</button>

                            <div class="btn-group mr10">
                                <button type="button" class="btn btn-round-1 mr10 hidden-xs">
                                    <i class="fa fa-star"></i>
                                </button>
                                <button type="button" class="btn btn-round-1 mr10 hidden-xs">
                                    <i class="fa fa-bitbucket"></i>
                                </button>
                                <button type="button" class="btn btn-round-1 mr15">
                                    <i class="fa fa-bullhorn"></i>
                                </button>
                            </div>
                            <div class="btn-group mr10">
                                <div class="btn-group">
                                    <button type="button" class="btn dropdown-toggle dropdown-toggle--mod-1 mr10 ph8" data-toggle="dropdown">
                                        <span class="fa fa-tags"></span>
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu pull-right" role="menu">
                                        <li>
                                            <a href="#">Work</a>
                                        </li>
                                        <li>
                                            <a href="#">Important</a>
                                        </li>
                                        <li>
                                            <a href="#">Favorites</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">
                                                <span class="fa fa-plus pr5"></span> Create New</a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="btn-group">
                                    <button type="button" class="btn dropdown-toggle dropdown-toggle--mod-1 ph8 br-tp-left" data-toggle="dropdown">
                                        <span class="fa fa-inbox"></span>
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu pull-right" role="menu">
                                        <li>
                                            <a href="#">Work</a>
                                        </li>
                                        <li>
                                            <a href="#">Important</a>
                                        </li>
                                        <li>
                                            <a href="#">Favorites</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">
                                                <span class="fa fa-plus pr5"></span> Create New</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="btn-group">
                                <button type="button" class="btn btn-round-1 mr10 ml15 fs20">
                                    <i class="fa fa-angle-left"></i>
                                </button>
                                <button type="button" class="btn btn-round-1 fs20">
                                    <i class="fa fa-angle-right"></i>
                                </button>

                            </div>
                        </div>
                    </div>
                </div>

                <!-- message listings table -->
                <div class="panel-body pn">
                    <table id="message-table" class="table admin-form theme-warning tc-checkbox-1">
                        <thead>
                        <tr class="">
                            <th class="text-center hidden-xs">Select</th>
                            <th class="hidden-xs">Star</th>
                            <th>Sender</th>
                            <th class="hidden-xs">Label</th>
                            <th>Subject</th>
                            <th class="hidden-xs"></th>
                            <th class="text-center">Date</th>
                        </tr>
                        </thead>
                        <tbody>
                            <%--                        <tr class="message-unread">
                                                        <td class="hidden-xs">
                                                            <label class="option block mn">
                                                                <input type="checkbox" name="mobileos" value="FR">
                                                                <span class="checkbox mn"></span>
                                                            </label>
                                                        </td>
                                                        <td class="hidden-xs">
                                                            <span class="rating block mn pull-left">
                                                                <input class="rating-input" id="r1" type="radio" name="custom">
                                                                <label class="rating-star" for="r1">
                                                                  <i class="fa fa-star va-m"></i>
                                                                </label>
                                                            </span>
                                                        </td>
                                                        <td class="">Sony Inc</td>
                                                        <td class="hidden-xs">
                                                            <span class="badge badge-md badge-alert mr10"> Work </span>
                                                        </td>
                                                        <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                                                        <td class="hidden-xs">
                                                            <i class="fa fa-paperclip fs15 text-muted va-b"></i>
                                                        </td>
                                                        <td class="text-right fw600">March 11</td>
                                                    </tr>
                                                    <tr class="message-unread">
                                                        <td class="hidden-xs">
                                                            <label class="option block mn">
                                                                <input type="checkbox" name="mobileos" value="FR">
                                                                <span class="checkbox mn"></span>
                                                            </label>
                                                        </td>
                                                        <td class="hidden-xs">
                                                            <span class="rating block mn pull-left">
                                                                <input class="rating-input" id="r2" type="radio" name="custom">
                                                                <label class="rating-star" for="r2">
                                                                  <i class="fa fa-star va-m"></i>
                                                                </label>
                                                            </span>
                                                        </td>
                                                        <td class="">Disney</td>
                                                        <td class="hidden-xs"></td>
                                                        <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                                                        <td class="hidden-xs">
                                                            <i class="fa fa-paperclip fs15 text-muted va-b"></i>
                                                        </td>
                                                        <td class="text-right fw600">March 11</td>
                                                    </tr>
                                                    <tr class="message-unread">
                                                        <td class="hidden-xs">
                                                            <label class="option block mn">
                                                                <input type="checkbox" name="mobileos" value="FR">
                                                                <span class="checkbox mn"></span>
                                                            </label>
                                                        </td>
                                                        <td class="hidden-xs">
                                                  <span class="rating block mn pull-left">
                                                    <input class="rating-input" id="r1" type="radio" name="custom">
                                                    <label class="rating-star" for="r1">
                                                      <i class="fa fa-star va-m"></i>
                                                    </label>
                                                  </span>
                                                        </td>
                                                        <td class="">Marvel</td>
                                                        <td class="hidden-xs">
                                                            <span class="badge badge-md badge-system mr10"> Meeting </span>
                                                        </td>
                                                        <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                                                        <td class="hidden-xs"></td>
                                                        <td class="text-right fw600">March 11</td>
                                                    </tr>
                                                    <tr class="message-unread">
                                                        <td class="hidden-xs">
                                                            <label class="option block mn">
                                                                <input type="checkbox" name="mobileos" value="FR">
                                                                <span class="checkbox mn"></span>
                                                            </label>
                                                        </td>
                                                        <td class="hidden-xs">
                                                  <span class="rating block mn pull-left">
                                                    <input class="rating-input" id="r1" type="radio" name="custom">
                                                    <label class="rating-star" for="r1">
                                                      <i class="fa fa-star va-m"></i>
                                                    </label>
                                                  </span>
                                                        </td>
                                                        <td class="">Microsoft</td>
                                                        <td class="hidden-xs"></td>
                                                        <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                                                        <td class="hidden-xs"></td>
                                                        <td class="text-right fw600">March 11</td>
                                                    </tr>
                                                    <tr class="message-read">
                                                        <td class="hidden-xs">
                                                            <label class="option block mn">
                                                                <input type="checkbox" name="mobileos" value="FR">
                                                                <span class="checkbox mn"></span>
                                                            </label>
                                                        </td>
                                                        <td class="hidden-xs">
                                                  <span class="rating block mn pull-left">
                                                    <input class="rating-input" id="r1" type="radio" name="custom">
                                                    <label class="rating-star" for="r1">
                                                      <i class="fa fa-star va-m"></i>
                                                    </label>
                                                  </span>
                                                        </td>
                                                        <td class="">Facebook</td>
                                                        <td class="hidden-xs">
                                                            <span class="badge badge-md badge-primary mr10"> Social </span>
                                                        </td>
                                                        <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                                                        <td class="hidden-xs"></td>
                                                        <td class="text-right">March 11</td>
                                                    </tr>
                                                    <tr class="message-read">
                                                        <td class="hidden-xs">
                                                            <label class="option block mn">
                                                                <input type="checkbox" name="mobileos" value="FR">
                                                                <span class="checkbox mn"></span>
                                                            </label>
                                                        </td>
                                                        <td class="hidden-xs">
                                                  <span class="rating block mn pull-left">
                                                    <input class="rating-input" id="r1" type="radio" name="custom">
                                                    <label class="rating-star" for="r1">
                                                      <i class="fa fa-star va-m"></i>
                                                    </label>
                                                  </span>
                                                        </td>
                                                        <td class="">Facebook</td>
                                                        <td class="hidden-xs">
                                                            <span class="badge badge-md badge-primary mr10"> Social </span>
                                                        </td>
                                                        <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                                                        <td class="hidden-xs"></td>
                                                        <td class="text-right">March 11</td>
                                                    </tr>
                                                    <tr class="message-read">
                                                        <td class="hidden-xs">
                                                            <label class="option block mn">
                                                                <input type="checkbox" name="mobileos" value="FR">
                                                                <span class="checkbox mn"></span>
                                                            </label>
                                                        </td>
                                                        <td class="hidden-xs">
                                                  <span class="rating block mn pull-left">
                                                    <input class="rating-input" id="r1" type="radio" name="custom">
                                                    <label class="rating-star" for="r1">
                                                      <i class="fa fa-star va-m"></i>
                                                    </label>
                                                  </span>
                                                        </td>
                                                        <td class="">Facebook</td>
                                                        <td class="hidden-xs">
                                                            <span class="badge badge-md badge-primary mr10"> Social </span>
                                                        </td>
                                                        <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                                                        <td class="hidden-xs"></td>
                                                        <td class="text-right">March 11</td>
                                                    </tr>
                                                    <tr class="message-read">
                                                        <td class="hidden-xs">
                                                            <label class="option block mn">
                                                                <input type="checkbox" name="mobileos" value="FR">
                                                                <span class="checkbox mn"></span>
                                                            </label>
                                                        </td>
                                                        <td class="hidden-xs">
                                                  <span class="rating block mn pull-left">
                                                    <input class="rating-input" id="r1" type="radio" name="custom">
                                                    <label class="rating-star" for="r1">
                                                      <i class="fa fa-star va-m"></i>
                                                    </label>
                                                  </span>
                                                        </td>
                                                        <td class="">Facebook</td>
                                                        <td class="hidden-xs">
                                                            <span class="badge badge-md badge-primary mr10"> Social </span>
                                                        </td>
                                                        <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                                                        <td class="hidden-xs"></td>
                                                        <td class="text-right">March 11</td>
                                                    </tr>
                                                    <tr class="message-read">
                                                        <td class="hidden-xs">
                                                            <label class="option block mn">
                                                                <input type="checkbox" name="mobileos" value="FR">
                                                                <span class="checkbox mn"></span>
                                                            </label>
                                                        </td>
                                                        <td class="hidden-xs">
                                                  <span class="rating block mn pull-left">
                                                    <input class="rating-input" id="r1" type="radio" name="custom">
                                                    <label class="rating-star" for="r1">
                                                      <i class="fa fa-star va-m"></i>
                                                    </label>
                                                  </span>
                                                        </td>
                                                        <td class="">Facebook</td>
                                                        <td class="hidden-xs">
                                                            <span class="badge badge-md badge-primary mr10"> Social </span>
                                                        </td>
                                                        <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                                                        <td class="hidden-xs"></td>
                                                        <td class="text-right">March 11</td>
                                                    </tr>
                                                    <tr class="message-read">
                                                        <td class="hidden-xs">
                                                            <label class="option block mn">
                                                                <input type="checkbox" name="mobileos" value="FR">
                                                                <span class="checkbox mn"></span>
                                                            </label>
                                                        </td>
                                                        <td class="hidden-xs">
                                                  <span class="rating block mn pull-left">
                                                    <input class="rating-input" id="r1" type="radio" name="custom">
                                                    <label class="rating-star" for="r1">
                                                      <i class="fa fa-star va-m"></i>
                                                    </label>
                                                  </span>
                                                        </td>
                                                        <td class="">Facebook</td>
                                                        <td class="hidden-xs">
                                                            <span class="badge badge-md badge-primary mr10"> Social </span>
                                                        </td>
                                                        <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                                                        <td class="hidden-xs"></td>
                                                        <td class="text-right">March 11</td>
                                                    </tr>
                                                    <tr class="message-read">
                                                        <td class="hidden-xs">
                                                            <label class="option block mn">
                                                                <input type="checkbox" name="mobileos" value="FR">
                                                                <span class="checkbox mn"></span>
                                                            </label>
                                                        </td>
                                                        <td class="hidden-xs">
                                                  <span class="rating block mn pull-left">
                                                    <input class="rating-input" id="r1" type="radio" name="custom">
                                                    <label class="rating-star" for="r1">
                                                      <i class="fa fa-star va-m"></i>
                                                    </label>
                                                  </span>
                                                        </td>
                                                        <td class="">Facebook</td>
                                                        <td class="hidden-xs">
                                                            <span class="badge badge-md badge-primary mr10"> Social </span>
                                                        </td>
                                                        <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                                                        <td class="hidden-xs"></td>
                                                        <td class="text-right">March 11</td>
                                                    </tr>
                                                    <tr class="message-read">
                                                        <td class="hidden-xs">
                                                            <label class="option block mn">
                                                                <input type="checkbox" name="mobileos" value="FR">
                                                                <span class="checkbox mn"></span>
                                                            </label>
                                                        </td>
                                                        <td class="hidden-xs">
                                                  <span class="rating block mn pull-left">
                                                    <input class="rating-input" id="r1" type="radio" name="custom">
                                                    <label class="rating-star" for="r1">
                                                      <i class="fa fa-star va-m"></i>
                                                    </label>
                                                  </span>
                                                        </td>
                                                        <td class="">Facebook</td>
                                                        <td class="hidden-xs">
                                                            <span class="badge badge-md badge-primary mr10"> Social </span>
                                                        </td>
                                                        <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                                                        <td class="hidden-xs"></td>
                                                        <td class="text-right">March 11</td>
                                                    </tr>
                                                    <tr class="message-read">
                                                        <td class="hidden-xs">
                                                            <label class="option block mn">
                                                                <input type="checkbox" name="mobileos" value="FR">
                                                                <span class="checkbox mn"></span>
                                                            </label>
                                                        </td>
                                                        <td class="hidden-xs">
                                                  <span class="rating block mn pull-left">
                                                    <input class="rating-input" id="r1" type="radio" name="custom">
                                                    <label class="rating-star" for="r1">
                                                      <i class="fa fa-star va-m"></i>
                                                    </label>
                                                  </span>
                                                        </td>
                                                        <td class="">Facebook</td>
                                                        <td class="hidden-xs">
                                                            <span class="badge badge-md badge-primary mr10"> Social </span>
                                                        </td>
                                                        <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                                                        <td class="hidden-xs"></td>
                                                        <td class="text-right">March 11</td>
                                                    </tr>
                                                    <tr class="message-read">
                                                        <td class="hidden-xs">
                                                            <label class="option block mn">
                                                                <input type="checkbox" name="mobileos" value="FR">
                                                                <span class="checkbox mn"></span>
                                                            </label>
                                                        </td>
                                                        <td class="hidden-xs">
                                                  <span class="rating block mn pull-left">
                                                    <input class="rating-input" id="r1" type="radio" name="custom">
                                                    <label class="rating-star" for="r1">
                                                      <i class="fa fa-star va-m"></i>
                                                    </label>
                                                  </span>
                                                        </td>
                                                        <td class="">Facebook</td>
                                                        <td class="hidden-xs">
                                                            <span class="badge badge-md badge-primary mr10"> Social </span>
                                                        </td>
                                                        <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                                                        <td class="hidden-xs"></td>
                                                        <td class="text-right">March 11</td>
                                                    </tr>--%>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
    </div>

</section>
<!-- End: Content -->