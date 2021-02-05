<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Begin: Content -->
<section id="content" class="table-layout animated fadeIn">
    <!-- begin: .tray-center -->
    <div class="tray tray-center">
        <div class="">
            <!-- Begin: Content Header -->
            <div class="content-header">
                <h2>Store Settings</h2>
                <p class="lead">You can edit all of basic store information at here</p>
            </div>
            <div class="tab-content mw900 center-block center-children">
                <!-- Primary Owner Form-->
                <div class="admin-form theme-success tab-pane mw700" id="primaryOwner" role="tabpanel">
                    <div class="panel panel-success heading-border">
                        <div class="panel-heading">
                            <span class="panel-title">
                                <i class="fa fa-pencil-square"></i>
                                Primary Owner Details
                            </span>
                        </div>
                        <!-- end .form-header section -->
                        <form:form method="post" action="${pageContext.request.contextPath}/controller/administrator/settings/updateBasic" id="primaryOwnerForm">
                            <div class="panel-body p25">
                                <div class="section row">
                                    <div class="col-md-6">
                                        <div class="section">
                                            <label for="ownerName" class="field-label">Name:
                                                <em>*</em>
                                            </label>
                                            <label for="ownerName" class="field prepend-icon">
                                                <c:choose>
                                                    <c:when test="${not empty model.ownerName}">
                                                        <input type="text" name="ownerName" id="ownerName" class="gui-input" value="${model.ownerName}" placeholder="Enter your name...">
                                                    </c:when>
                                                    <c:otherwise>
                                                        <input type="text" name="ownerName" id="ownerName" class="gui-input" placeholder="Enter your name...">
                                                    </c:otherwise>
                                                </c:choose>
                                                <label for="ownerName" class="field-icon">
                                                    <i class="fa fa-user"></i>
                                                </label>
                                            </label>
                                        </div>
                                        <!-- end section -->
                                        <div class="section">
                                            <label for="ownerGender" class="field-label">Gender
                                                <em>*</em>
                                            </label>
                                            <label class="field select">
                                                <select id="ownerGender" name="ownerGender">
                                                    <option value="">I am...</option>
                                                    <option value="male">Male</option>
                                                    <option value="female">Female</option>
                                                    <option value="other">Other</option>
                                                </select>
                                                <i class="arrow double"></i>
                                            </label>
                                        </div>
                                        <!-- end section -->
                                        <div class="section">
                                            <label for="ownerEmail" class="field-label">Your email address
                                                <em>*</em>
                                            </label>
                                            <label for="ownerEmail" class="field prepend-icon">
                                                <c:choose>
                                                    <c:when test="${not empty model.ownerEmail}">
                                                        <input type="email" name="ownerEmail" id="ownerEmail" class="gui-input" value="${model.ownerEmail}" placeholder="Enter Email...">
                                                    </c:when>
                                                    <c:otherwise>
                                                        <input type="email" name="ownerEmail" id="ownerEmail" class="gui-input" placeholder="Enter Email...">
                                                    </c:otherwise>
                                                </c:choose>
                                                <label for="ownerEmail" class="field-icon">
                                                    <i class="fa fa-envelope"></i>
                                                </label>
                                            </label>
                                        </div>
                                        <!-- end section -->
                                    </div>
                                    <!-- end .colm section -->

                                    <div class="col-md-6">
                                        <div class="section">
                                            <label for="ownerPhone" class="field-label">Telephone / mobile
                                                <em>*</em>
                                            </label>
                                            <label for="ownerPhone" class="field prepend-icon">
                                                <c:choose>
                                                    <c:when test="${not empty model.ownerPhone}">
                                                        <input type="tel" name="ownerPhone" id="ownerPhone" class="gui-input" value="${model.ownerPhone}" placeholder="Enter mobile">
                                                    </c:when>
                                                    <c:otherwise>
                                                        <input type="tel" name="ownerPhone" id="ownerPhone" class="gui-input" placeholder="Enter mobile">
                                                    </c:otherwise>
                                                </c:choose>
                                                <label for="ownerPhone" class="field-icon">
                                                    <i class="fa fa-phone-square"></i>
                                                </label>
                                            </label>
                                        </div>
                                        <!-- end section -->
                                    </div>
                                    <!-- end .colm section -->
                                </div>
                                <!-- end .section row section -->
                            </div>
                            <!-- end .form-body section -->
                            <div class="panel-footer">
                                <button type="submit" class="button btn-primary">Submit</button>
                            </div>
                        </form:form>
                        <!-- end .form-footer section -->
                    </div>
                    <!-- end .admin-form section -->
                </div>
                <!-- end: .admin-form -->

                <!-- Secondary Owner Form -->
                <div class="admin-form theme-primary tab-pane mw700" id="secondaryOwner" role="tabpanel">
                    <div class="panel panel-success heading-border">
                        <div class="panel-heading">
                            <span class="panel-title">
                                <i class="fa fa-pencil-square"></i>
                                Secondary Owner Details
                            </span>
                        </div>
                        <!-- end .form-header section -->
                        <form:form method="post" action="${pageContext.request.contextPath}/controller/administrator/settings/updateBasic">
                            <div class="panel-body p25">
                                <div class="section row">
                                    <div class="col-md-6">
                                        <div class="section">
                                            <label for="secondaryOwnerName" class="field-label">Name:
                                                <em>*</em>
                                            </label>
                                            <label for="secondaryOwnerName" class="field prepend-icon">
                                                <c:choose>
                                                    <c:when test="${not empty model.secondaryOwnerName}">
                                                        <input type="text" name="secondaryOwnerName" id="secondaryOwnerName" class="gui-input" value="${model.secondaryOwnerName}" placeholder="Enter your name...">
                                                    </c:when>
                                                    <c:otherwise>
                                                        <input type="text" name="secondaryOwnerName" id="secondaryOwnerName" class="gui-input" placeholder="Enter your name...">
                                                    </c:otherwise>
                                                </c:choose>
                                                <label for="secondaryOwnerName" class="field-icon">
                                                    <i class="fa fa-user"></i>
                                                </label>
                                            </label>
                                        </div>
                                        <!-- end section -->

                                        <div class="section">
                                            <label for="secondaryOwnerGender" class="field-label">Gender
                                                <em>*</em>
                                            </label>
                                            <label class="field select">
                                                <select id="secondaryOwnerGender" name="secondaryOwnerGender">
                                                    <option value="">I am...</option>
                                                    <option value="male">Male</option>
                                                    <option value="female">Female</option>
                                                    <option value="other">Other</option>
                                                </select>
                                                <i class="arrow double"></i>
                                            </label>
                                        </div>
                                        <!-- end section -->

                                        <div class="section">
                                            <label for="secondaryOwnerEmail" class="field-label">Your email address
                                                <em>*</em>
                                            </label>
                                            <label for="secondaryOwnerEmail" class="field prepend-icon">
                                                <c:choose>
                                                    <c:when test="${not empty model.secondaryOwnerEmail}">
                                                        <input type="email" name="secondaryOwnerEmail" id="secondaryOwnerEmail" class="gui-input" value="${model.secondaryOwnerEmail}" placeholder="Enter Email...">
                                                    </c:when>
                                                    <c:otherwise>
                                                        <input type="email" name="secondaryOwnerEmail" id="secondaryOwnerEmail" class="gui-input" placeholder="Enter e-mail...">
                                                    </c:otherwise>
                                                </c:choose>
                                                <label for="secondaryOwnerEmail" class="field-icon">
                                                    <i class="fa fa-envelope"></i>
                                                </label>
                                            </label>
                                        </div>
                                        <!-- end section -->

                                    </div>
                                    <!-- end .colm section -->

                                    <div class="col-md-6">
                                        <div class="section">
                                            <label for="secondaryOwnerBusinessName" class="field-label">Business Name
                                                <em>*</em>
                                            </label>
                                            <label for="secondaryOwnerBusinessName" class="field prepend-icon">
                                                <c:choose>
                                                    <c:when test="${not empty model.secondaryOwnerBusinessName}">
                                                        <input type="tel" name="secondaryOwnerBusinessName" id="secondaryOwnerBusinessName" class="gui-input" value="${model.secondaryOwnerBusinessName}" placeholder="Enter business name">
                                                    </c:when>
                                                    <c:otherwise>
                                                        <input type="tel" name="secondaryOwnerBusinessName" id="secondaryOwnerBusinessName" class="gui-input" placeholder="Enter business name">
                                                    </c:otherwise>
                                                </c:choose>
                                                <label for="secondaryOwnerBusinessName" class="field-icon">
                                                    <i class="fa fa-home"></i>
                                                </label>
                                            </label>
                                        </div>

                                        <div class="section">
                                            <label for="secondaryOwnerPhone" class="field-label">Telephone / mobile
                                                <em>*</em>
                                            </label>
                                            <label for="secondaryOwnerPhone" class="field prepend-icon">
                                                <c:choose>
                                                    <c:when test="${not empty model.secondaryOwnerPhone}">
                                                        <input type="tel" name="secondaryOwnerPhone" id="secondaryOwnerPhone" class="gui-input" value="${model.secondaryOwnerPhone}" placeholder="Enter mobile">
                                                    </c:when>
                                                    <c:otherwise>
                                                        <input type="tel" name="secondaryOwnerPhone" id="secondaryOwnerPhone" class="gui-input" placeholder="Enter mobile">
                                                    </c:otherwise>
                                                </c:choose>
                                                <label for="secondaryOwnerPhone" class="field-icon">
                                                    <i class="fa fa-phone-square"></i>
                                                </label>
                                            </label>
                                        </div>

                                        <div class="section-divider">
                                            <span>Address</span>
                                        </div>

                                        <div class="section">
                                            <label for="secondaryAddrStreet" class="field prepend-icon">
                                                <c:choose>
                                                    <c:when test="${not empty model.secondaryAddrStreet}">
                                                        <input type="text" name="secondaryAddrStreet" id="secondaryAddrStreet" class="gui-input" placeholder="Street" value="${model.secondaryAddrStreet}">
                                                    </c:when>
                                                    <c:otherwise>
                                                        <input type="text" name="secondaryAddrStreet" id="secondaryAddrStreet" class="gui-input" placeholder="Street">
                                                    </c:otherwise>
                                                </c:choose>
                                                <label for="addrStreet" class="field-icon">
                                                    <i class="fa fa-map-marker"></i>
                                                </label>
                                            </label>
                                        </div>
                                        <!-- end section -->

                                        <div class="section">
                                            <label class="field select">
                                                <select id="secondaryAddrCountry" name="secondaryAddrCountry">
                                                    <option value="">Select country...</option>
                                                    <option selected="true" value="VN">Vietnam</option>
                                                </select>
                                                <i class="arrow double"></i>
                                            </label>
                                        </div>
                                        <!-- end section -->

                                        <div class="section row mbn">
                                            <div class="col-md-3">
                                                <label for="secondaryAddrWard" class="field prepend-icon">
                                                    <c:choose>
                                                        <c:when test="${not empty model.secondaryAddrWard}">
                                                            <input type="text" name="secondaryAddrWard" id="secondaryAddrWard" class="gui-input" placeholder="Ward" value="${model.secondaryAddrWard}">
                                                        </c:when>
                                                        <c:otherwise>
                                                            <input type="text" name="secondaryAddrWard" id="secondaryAddrWard" class="gui-input" placeholder="Ward">
                                                        </c:otherwise>
                                                    </c:choose>
                                                    <label for="addrWard" class="field-icon">
                                                        <i class="fa fa-certificate"></i>
                                                    </label>
                                                </label>
                                            </div>
                                            <!-- end section -->

                                            <div class="col-md-4">
                                                <label for="secondaryAddrCity" class="field prepend-icon">
                                                    <c:choose>
                                                        <c:when test="${not empty model.secondaryAddrCity}">
                                                            <input type="text" name="secondaryAddrCity" id="secondaryAddrCity" class="gui-input" placeholder="City" value="${model.secondaryAddrCity}">
                                                        </c:when>
                                                        <c:otherwise>
                                                            <input type="text" name="secondaryAddrCity" id="secondaryAddrCity" class="gui-input" placeholder="City">
                                                        </c:otherwise>
                                                    </c:choose>
                                                    <label for="addrCity" class="field-icon">
                                                        <i class="fa fa-building-o"></i>
                                                    </label>
                                                </label>
                                            </div>
                                            <!-- end section -->

                                            <div class="col-md-5">
                                                <label for="secondaryAddrProvince" class="field select">
                                                    <select id="secondaryAddrProvince" name="secondaryAddrProvince">
                                                        <option value="">Choose province</option>
                                                        <option selected="true" value="DN">Dong Nai</option>
                                                    </select>
                                                    <i class="arrow double"></i>
                                                </label>
                                            </div>
                                            <!-- end section -->
                                            <!-- end section row -->

                                        </div>
                                        <!-- end section -->

                                    </div>
                                    <!-- end .colm section -->

                                </div>
                                <!-- end .section row section -->
                            </div>
                            <!-- end .form-body section -->
                            <div class="panel-footer">
                                <button type="submit" class="button btn-primary">Submit</button>
                            </div>
                        </form:form>
                        <!-- end .form-footer section -->
                    </div>
                    <!-- end: .panel -->
                </div>
                <!-- end: .admin-form -->

                <!-- Social Network Settings Form -->
                <div class="admin-form theme-success tab-pane mw700" id="socialSettings" role="tabpanel">
                    <div class="panel panel-success heading-border">
                        <div class="panel-heading">
                            <span class="panel-title">
                              <i class="fa fa-shopping-cart"></i> Social Network Settings
                            </span>
                        </div>
                        <!-- end .panel-heading section -->

                        <form:form method="post" action="${pageContext.request.contextPath}/controller/administrator/settings/updateBasic">
                            <div class="panel-body p25">
                                <div class="section-divider">
                                    <span>Set up your social network here</span>
                                </div>
                                <!-- .section-divider -->

                                <div class="section">
                                    <label for="businessFbUrl" class="field prepend-icon">
                                        <c:choose>
                                            <c:when test="${not empty model.businessFbUrl}">
                                                <input type="text" name="businessFbUrl" id="businessFbUrl" class="gui-input" value="${model.businessFbUrl}" placeholder="Facebook">
                                            </c:when>
                                            <c:otherwise>
                                                <input type="text" name="businessFbUrl" id="businessFbUrl" class="gui-input" placeholder="Facebook">
                                            </c:otherwise>
                                        </c:choose>
                                        <label for="businessFbUrl" class="field-icon">
                                            <i class="fa fa-facebook"></i>
                                        </label>
                                    </label>
                                </div>
                                <!-- end section -->

                                <div class="section">
                                    <label for="businessTwitterUrl" class="field prepend-icon">
                                        <c:choose>
                                            <c:when test="${not empty model.businessTwitterUrl}">
                                                <input type="text" name="businessTwitterUrl" id="businessTwitterUrl" class="gui-input" value="${model.businessTwitterUrl}" placeholder="Twitter">
                                            </c:when>
                                            <c:otherwise>
                                                <input type="text" name="businessTwitterUrl" id="businessTwitterUrl" class="gui-input" placeholder="Twitter">
                                            </c:otherwise>
                                        </c:choose>
                                        <label for="businessTwitterUrl" class="field-icon">
                                            <i class="fa fa-twitter"></i>
                                        </label>
                                    </label>
                                </div>
                                <!-- end section -->

                                <div class="section">
                                    <label for="businessGooglePlus" class="field prepend-icon">
                                        <c:choose>
                                            <c:when test="${not empty model.businessGooglePlus}">
                                                <input type="email" name="email" id="businessGooglePlus" class="gui-input" value="${model.businessGooglePlus}" placeholder="Google+">
                                            </c:when>
                                            <c:otherwise>
                                                <input type="email" name="email" id="businessGooglePlus" class="gui-input" placeholder="Google+">
                                            </c:otherwise>
                                        </c:choose>
                                        <label for="businessGooglePlus" class="field-icon">
                                            <i class="fa fa-google-plus"></i>
                                        </label>
                                    </label>
                                </div>
                                <!-- end section -->

                                <div class="section">
                                    <label for="businessSkype" class="field prepend-icon">
                                        <c:choose>
                                            <c:when test="${not empty model.businessSkype}">
                                                <input type="tel" name="businessSkype" id="businessSkype" class="gui-input" value="${model.businessSkype}" placeholder="Skype">
                                            </c:when>
                                            <c:otherwise>
                                                <input type="tel" name="businessSkype" id="businessSkype" class="gui-input" placeholder="Skype">
                                            </c:otherwise>
                                        </c:choose>
                                        <label for="businessSkype" class="field-icon">
                                            <i class="fa fa-skype"></i>
                                        </label>
                                    </label>
                                </div>
                                <!-- end section -->
                                <%--
                                                                <div class="section-divider mv40">
                                                                    <span>Payment Details</span>
                                                                </div>
                                                                <!-- .section-divider -->
                                                                <p class="small-text text-muted mb20">Please choose a preferred method of payment below</p>

                                                                <div class="section">
                                                                    <label class="field option">
                                                                        <input type="radio" name="payment" checked>
                                                                        <span class="radio"></span>Credit Card</label>
                                                                    <label class="field option">
                                                                        <input type="radio" name="payment">
                                                                        <span class="radio"></span>Paypal</label>
                                                                    <label class="field option">
                                                                        <input type="radio" name="payment">
                                                                        <span class="radio"></span>Check</label>
                                                                </div>
                                                                <!-- end section -->

                                                                <div class="section">
                                                                    <label for="cardname" class="field prepend-icon">
                                                                        <input type="text" name="cardname" id="cardname" class="gui-input" placeholder="Name on card...">
                                                                        <label for="cardname" class="field-icon">
                                                                            <i class="fa fa-user"></i>
                                                                        </label>
                                                                    </label>
                                                                </div>
                                                                <!-- end section -->

                                                                <div class="section row">
                                                                    <div class="col-md-6">
                                                                        <label for="cardmonth" class="field select">
                                                                            <select id="cardmonth" name="cardmonth">
                                                                                <option value="">Expiryss month...</option>
                                                                                <option value="01">01 - Jan</option>
                                                                                <option value="02">02 - Feb</option>
                                                                                <option value="03">03 - Mar</option>
                                                                                <option value="04">04 - Apr</option>
                                                                                <option value="05">05 - May</option>
                                                                                <option value="06">06 - Jun</option>
                                                                                <option value="07">07 - Jul</option>
                                                                                <option value="08">08 - Aug</option>
                                                                                <option value="09">09 - Sep</option>
                                                                                <option value="10">10 - Oct</option>
                                                                                <option value="11">11 - Nov</option>
                                                                                <option value="12">12 - Dec</option>
                                                                            </select>
                                                                            <i class="arrow double"></i>
                                                                        </label>
                                                                    </div>
                                                                    <!-- end section -->

                                                                    <div class="col-md-6">
                                                                        <label class="field select">
                                                                            <select id="cardyear" name="cardyear">
                                                                                <option value="">Expiry year...</option>
                                                                                <option value="2014">2014</option>
                                                                                <option value="2015">2015</option>
                                                                                <option value="2016">2016</option>
                                                                                <option value="2017">2017</option>
                                                                                <option value="2018">2018</option>
                                                                                <option value="2019">2019</option>
                                                                                <option value="2020">2020</option>
                                                                                <option value="2021">2021</option>
                                                                                <option value="2022">2022</option>
                                                                                <option value="2023">2023</option>
                                                                                <option value="2024">2024</option>
                                                                                <option value="2025">2025</option>
                                                                                <option value="2026">2026</option>
                                                                            </select>
                                                                            <i class="arrow double"></i>
                                                                        </label>
                                                                    </div>
                                                                    <!-- end section -->

                                                                </div>
                                                                <!-- end section row section -->

                                                                <div class="section">
                                                                    <label for="cardno" class="field prepend-icon">
                                                                        <input type="text" name="cardno" id="lastname" class="gui-input" placeholder="Card number...">
                                                                        <label for="cardno" class="field-icon">
                                                                            <i class="fa fa-credit-card"></i>
                                                                        </label>
                                                                    </label>
                                                                </div>
                                                                <!-- end section -->

                                                                <div class="section row">
                                                                    <div class="col-md-6">
                                                                        <label for="cardmonth" class="field select">
                                                                            <select id="cardmonth" name="cardmonth">
                                                                                <option value="">Expiry month...</option>
                                                                                <option value="01">01 - Jan</option>
                                                                                <option value="02">02 - Feb</option>
                                                                                <option value="03">03 - Mar</option>
                                                                                <option value="04">04 - Apr</option>
                                                                                <option value="05">05 - May</option>
                                                                                <option value="06">06 - Jun</option>
                                                                                <option value="07">07 - Jul</option>
                                                                                <option value="08">08 - Aug</option>
                                                                                <option value="09">09 - Sep</option>
                                                                                <option value="10">10 - Oct</option>
                                                                                <option value="11">11 - Nov</option>
                                                                                <option value="12">12 - Dec</option>
                                                                            </select>
                                                                            <i class="arrow double"></i>
                                                                        </label>
                                                                    </div>
                                                                    <!-- end section -->

                                                                    <div class="col-md-6">
                                                                        <label class="field select">
                                                                            <select id="cardyear" name="cardyear">
                                                                                <option value="">Expiry year...</option>
                                                                                <option value="2014">2014</option>
                                                                                <option value="2015">2015</option>
                                                                                <option value="2016">2016</option>
                                                                                <option value="2017">2017</option>
                                                                                <option value="2018">2018</option>
                                                                                <option value="2019">2019</option>
                                                                                <option value="2020">2020</option>
                                                                                <option value="2021">2021</option>
                                                                                <option value="2022">2022</option>
                                                                                <option value="2023">2023</option>
                                                                                <option value="2024">2024</option>
                                                                                <option value="2025">2025</option>
                                                                                <option value="2026">2026</option>
                                                                            </select>
                                                                            <i class="arrow double"></i>
                                                                        </label>
                                                                    </div>
                                                                    <!-- end section -->

                                                                </div>
                                                                <!-- end section row section -->

                                                                <div class="section row">
                                                                    <div class="col-md-6">
                                                                        <label for="secno" class="field prepend-icon">
                                                                            <input type="text" name="secno" id="secno" class="gui-input" placeholder="Security number...">
                                                                            <b class="tooltip tip-left-top"><em> This is a four diigit number at the back of your card </em></b>
                                                                            <label for="secno" class="field-icon">
                                                                                <i class="fa fa-barcode"></i>
                                                                            </label>
                                                                        </label>
                                                                    </div>
                                                                    <!-- end section -->

                                                                    <div class="col-md-6">
                                                                        <p class="field-align">
                                                                            <a href="#" class="theme-link"> What is this? </a>
                                                                        </p>
                                                                    </div>
                                                                    <!-- end section -->

                                                                </div>
                                                                <!-- end section row section -->

                                                                <div class="section-divider mv40">
                                                                    <span>Shipping Address</span>
                                                                </div>
                                                                <!-- .tagline -->

                                                                <div class="section">
                                                                    <label for="firstaddr" class="field prepend-icon">
                                                                        <input type="text" name="firstaddr" id="firstaddr" class="gui-input" placeholder="Street address">
                                                                        <label for="firstaddr" class="field-icon">
                                                                            <i class="fa fa-building-o"></i>
                                                                        </label>
                                                                    </label>
                                                                </div>
                                                                <!-- end section -->

                                                                <div class="section">
                                                                    <label for="lastaddr" class="field prepend-icon">
                                                                        <input type="text" name="lastaddr" id="lastaddr" class="gui-input" placeholder="Street address 2">
                                                                        <label for="lastaddr" class="field-icon">
                                                                            <i class="fa fa-map-marker"></i>
                                                                        </label>
                                                                    </label>
                                                                </div>
                                                                <!-- end section -->

                                                                <div class="section">
                                                                    <label class="field select">
                                                                        <select id="location" name="location">
                                                                            <option value="">Select country...</option>
                                                                            <option value="AL">Albania</option>
                                                                            <option value="DZ">Algeria</option>
                                                                            <option value="AD">Andorra</option>
                                                                            <option value="AO">Angola</option>
                                                                            <option value="AI">Anguilla</option>
                                                                            <option value="AG">Antigua and Barbuda</option>
                                                                            <option value="AR">Argentina</option>
                                                                            <option value="AM">Armenia</option>
                                                                            <option value="AW">Aruba</option>
                                                                            <option value="AU">Australia</option>
                                                                            <option value="AT">Austria</option>
                                                                            <option value="AZ">Azerbaijan Republic</option>
                                                                            <option value="BS">Bahamas</option>
                                                                            <option value="BH">Bahrain</option>
                                                                            <option value="BB">Barbados</option>
                                                                            <option value="BE">Belgium</option>
                                                                            <option value="BZ">Belize</option>
                                                                            <option value="BJ">Benin</option>
                                                                            <option value="BM">Bermuda</option>
                                                                            <option value="BT">Bhutan</option>
                                                                            <option value="BO">Bolivia</option>
                                                                            <option value="BA">Bosnia and Herzegovina</option>
                                                                            <option value="BW">Botswana</option>
                                                                            <option value="BR">Brazil</option>
                                                                            <option value="BN">Brunei</option>
                                                                            <option value="BG">Bulgaria</option>
                                                                            <option value="BF">Burkina Faso</option>
                                                                            <option value="BI">Burundi</option>
                                                                            <option value="KH">Cambodia</option>
                                                                            <option value="CA">Canada</option>
                                                                            <option value="CV">Cape Verde</option>
                                                                            <option value="KY">Cayman Islands</option>
                                                                            <option value="TD">Chad</option>
                                                                            <option value="CL">Chile</option>
                                                                            <option value="C2">China Worldwide</option>
                                                                            <option value="CO">Colombia</option>
                                                                            <option value="KM">Comoros</option>
                                                                            <option value="CK">Cook Islands</option>
                                                                            <option value="CR">Costa Rica</option>
                                                                            <option value="HR">Croatia</option>
                                                                            <option value="CY">Cyprus</option>
                                                                            <option value="CZ">Czech Republic</option>
                                                                            <option value="CD">Democratic Republic of the Congo</option>
                                                                            <option value="DK">Denmark</option>
                                                                            <option value="DJ">Djibouti</option>
                                                                            <option value="DM">Dominica</option>
                                                                            <option value="DO">Dominican Republic</option>
                                                                            <option value="EC">Ecuador</option>
                                                                            <option value="EG">Egypt</option>
                                                                            <option value="SV">El Salvador</option>
                                                                            <option value="ER">Eritrea</option>
                                                                            <option value="EE">Estonia</option>
                                                                            <option value="ET">Ethiopia</option>
                                                                            <option value="FK">Falkland Islands</option>
                                                                            <option value="FO">Faroe Islands</option>
                                                                            <option value="FJ">Fiji</option>
                                                                            <option value="FI">Finland</option>
                                                                            <option value="FR">France</option>
                                                                            <option value="GF">French Guiana</option>
                                                                            <option value="PF">French Polynesia</option>
                                                                            <option value="GA">Gabon Republic</option>
                                                                            <option value="GM">Gambia</option>
                                                                            <option value="GE">Georgia</option>
                                                                            <option value="DE">Germany</option>
                                                                            <option value="GI">Gibraltar</option>
                                                                            <option value="GR">Greece</option>
                                                                            <option value="GL">Greenland</option>
                                                                            <option value="GD">Grenada</option>
                                                                            <option value="GP">Guadeloupe</option>
                                                                            <option value="GT">Guatemala</option>
                                                                            <option value="GN">Guinea</option>
                                                                            <option value="GW">Guinea Bissau</option>
                                                                            <option value="GY">Guyana</option>
                                                                            <option value="HN">Honduras</option>
                                                                            <option value="HK">Hong Kong</option>
                                                                            <option value="HU">Hungary</option>
                                                                            <option value="IS">Iceland</option>
                                                                            <option value="IN">India</option>
                                                                            <option value="ID">Indonesia</option>
                                                                            <option value="IE">Ireland</option>
                                                                            <option value="IL">Israel</option>
                                                                            <option value="IT">Italy</option>
                                                                            <option value="JM">Jamaica</option>
                                                                            <option value="JP">Japan</option>
                                                                            <option value="JO">Jordan</option>
                                                                            <option value="KZ">Kazakhstan</option>
                                                                            <option value="KE">Kenya</option>
                                                                            <option value="KI">Kiribati</option>
                                                                            <option value="KW">Kuwait</option>
                                                                            <option value="KG">Kyrgyzstan</option>
                                                                            <option value="LA">Laos</option>
                                                                            <option value="LV">Latvia</option>
                                                                            <option value="LS">Lesotho</option>
                                                                            <option value="LI">Liechtenstein</option>
                                                                            <option value="LT">Lithuania</option>
                                                                            <option value="LU">Luxembourg</option>
                                                                            <option value="MG">Madagascar</option>
                                                                            <option value="MW">Malawi</option>
                                                                            <option value="MY">Malaysia</option>
                                                                            <option value="MV">Maldives</option>
                                                                            <option value="ML">Mali</option>
                                                                            <option value="MT">Malta</option>
                                                                            <option value="MH">Marshall Islands</option>
                                                                            <option value="MQ">Martinique</option>
                                                                            <option value="MR">Mauritania</option>
                                                                            <option value="MU">Mauritius</option>
                                                                            <option value="YT">Mayotte</option>
                                                                            <option value="MX">Mexico</option>
                                                                            <option value="FM">Micronesia</option>
                                                                            <option value="MN">Mongolia</option>
                                                                            <option value="MS">Montserrat</option>
                                                                            <option value="MA">Morocco</option>
                                                                            <option value="MZ">Mozambique</option>
                                                                            <option value="NA">Namibia</option>
                                                                            <option value="NR">Nauru</option>
                                                                            <option value="NP">Nepal</option>
                                                                            <option value="NL">Netherlands</option>
                                                                            <option value="AN">Netherlands Antilles</option>
                                                                            <option value="NC">New Caledonia</option>
                                                                            <option value="NZ">New Zealand</option>
                                                                            <option value="NI">Nicaragua</option>
                                                                            <option value="NE">Niger</option>
                                                                            <option value="NU">Niue</option>
                                                                            <option value="NF">Norfolk Island</option>
                                                                            <option value="NO">Norway</option>
                                                                            <option value="OM">Oman</option>
                                                                            <option value="PW">Palau</option>
                                                                            <option value="PA">Panama</option>
                                                                            <option value="PG">Papua New Guinea</option>
                                                                            <option value="PE">Peru</option>
                                                                            <option value="PH">Philippines</option>
                                                                            <option value="PN">Pitcairn Islands</option>
                                                                            <option value="PL">Poland</option>
                                                                            <option value="PT">Portugal</option>
                                                                            <option value="QA">Qatar</option>
                                                                            <option value="CG">Republic of the Congo</option>
                                                                            <option value="RE">Reunion</option>
                                                                            <option value="RO">Romania</option>
                                                                            <option value="RU">Russia</option>
                                                                            <option value="RW">Rwanda</option>
                                                                            <option value="KN">Saint Kitts and Nevis Anguilla</option>
                                                                            <option value="PM">Saint Pierre and Miquelon</option>
                                                                            <option value="VC">Saint Vincent and Grenadines</option>
                                                                            <option value="WS">Samoa</option>
                                                                            <option value="SM">San Marino</option>
                                                                            <option value="ST">São Tomé and Príncipe</option>
                                                                            <option value="SA">Saudi Arabia</option>
                                                                            <option value="SN">Senegal</option>
                                                                            <option value="RS">Serbia</option>
                                                                            <option value="SC">Seychelles</option>
                                                                            <option value="SL">Sierra Leone</option>
                                                                            <option value="SG">Singapore</option>
                                                                            <option value="SK">Slovakia</option>
                                                                            <option value="SI">Slovenia</option>
                                                                            <option value="SB">Solomon Islands</option>
                                                                            <option value="SO">Somalia</option>
                                                                            <option value="ZA">South Africa</option>
                                                                            <option value="KR">South Korea</option>
                                                                            <option value="ES">Spain</option>
                                                                            <option value="LK">Sri Lanka</option>
                                                                            <option value="SH">St. Helena</option>
                                                                            <option value="LC">St. Lucia</option>
                                                                            <option value="SR">Suriname</option>
                                                                            <option value="SJ">Svalbard and Jan Mayen Islands</option>
                                                                            <option value="SZ">Swaziland</option>
                                                                            <option value="SE">Sweden</option>
                                                                            <option value="CH">Switzerland</option>
                                                                            <option value="TW">Taiwan</option>
                                                                            <option value="TJ">Tajikistan</option>
                                                                            <option value="TZ">Tanzania</option>
                                                                            <option value="TH">Thailand</option>
                                                                            <option value="TG">Togo</option>
                                                                            <option value="TO">Tonga</option>
                                                                            <option value="TT">Trinidad and Tobago</option>
                                                                            <option value="TN">Tunisia</option>
                                                                            <option value="TR">Turkey</option>
                                                                            <option value="TM">Turkmenistan</option>
                                                                            <option value="TC">Turks and Caicos Islands</option>
                                                                            <option value="TV">Tuvalu</option>
                                                                            <option value="UG">Uganda</option>
                                                                            <option value="UA">Ukraine</option>
                                                                            <option value="AE">United Arab Emirates</option>
                                                                            <option value="GB">United Kingdom</option>
                                                                            <option value="US">United States</option>
                                                                            <option value="UY">Uruguay</option>
                                                                            <option value="VU">Vanuatu</option>
                                                                            <option value="VA">Vatican City State</option>
                                                                            <option value="VE">Venezuela</option>
                                                                            <option value="VN">Vietnam</option>
                                                                            <option value="VG">Virgin Islands (British)</option>
                                                                            <option value="WF">Wallis and Futuna Islands</option>
                                                                            <option value="YE">Yemen</option>
                                                                            <option value="ZM">Zambia</option>
                                                                        </select>
                                                                        <i class="arrow double"></i>
                                                                    </label>
                                                                </div>
                                                                <!-- end section -->

                                                                <div class="section row">
                                                                    <div class="col-md-3">
                                                                        <label for="zip" class="field prepend-icon">
                                                                            <input type="text" name="zip" id="zip" class="gui-input" placeholder="Zip">
                                                                            <label for="zip" class="field-icon">
                                                                                <i class="fa fa-certificate"></i>
                                                                            </label>
                                                                        </label>
                                                                    </div>
                                                                    <!-- end section -->

                                                                    <div class="col-md-4">
                                                                        <label for="city" class="field prepend-icon">
                                                                            <input type="text" name="city" id="city" class="gui-input" placeholder="City">
                                                                            <label for="city" class="field-icon">
                                                                                <i class="fa fa-building-o"></i>
                                                                            </label>
                                                                        </label>
                                                                    </div>
                                                                    <!-- end section -->

                                                                    <div class="col-md-5">
                                                                        <label for="states" class="field select">
                                                                            <select id="states" name="states">
                                                                                <option value="">Choose state</option>
                                                                                <option value="AL">Alabama</option>
                                                                                <option value="AK">Alaska</option>
                                                                                <option value="AZ">Arizona</option>
                                                                                <option value="AR">Arkansas</option>
                                                                                <option value="CA">California</option>
                                                                                <option value="CO">Colorado</option>
                                                                                <option value="CT">Connecticut</option>
                                                                                <option value="DE">Delaware</option>
                                                                                <option value="DC">District Of Columbia</option>
                                                                                <option value="FL">Florida</option>
                                                                                <option value="GA">Georgia</option>
                                                                                <option value="HI">Hawaii</option>
                                                                                <option value="ID">Idaho</option>
                                                                                <option value="IL">Illinois</option>
                                                                                <option value="IN">Indiana</option>
                                                                                <option value="IA">Iowa</option>
                                                                                <option value="KS">Kansas</option>
                                                                                <option value="KY">Kentucky</option>
                                                                                <option value="LA">Louisiana</option>
                                                                                <option value="ME">Maine</option>
                                                                                <option value="MD">Maryland</option>
                                                                                <option value="MA">Massachusetts</option>
                                                                                <option value="MI">Michigan</option>
                                                                                <option value="MN">Minnesota</option>
                                                                                <option value="MS">Mississippi</option>
                                                                                <option value="MO">Missouri</option>
                                                                                <option value="MT">Montana</option>
                                                                                <option value="NE">Nebraska</option>
                                                                                <option value="NV">Nevada</option>
                                                                                <option value="NH">New Hampshire</option>
                                                                                <option value="NJ">New Jersey</option>
                                                                                <option value="NM">New Mexico</option>
                                                                                <option value="NY">New York</option>
                                                                                <option value="NC">North Carolina</option>
                                                                                <option value="ND">North Dakota</option>
                                                                                <option value="OH">Ohio</option>
                                                                                <option value="OK">Oklahoma</option>
                                                                                <option value="OR">Oregon</option>
                                                                                <option value="PA">Pennsylvania</option>
                                                                                <option value="RI">Rhode Island</option>
                                                                                <option value="SC">South Carolina</option>
                                                                                <option value="SD">South Dakota</option>
                                                                                <option value="TN">Tennessee</option>
                                                                                <option value="TX">Texas</option>
                                                                                <option value="UT">Utah</option>
                                                                                <option value="VT">Vermont</option>
                                                                                <option value="VA">Virginia</option>
                                                                                <option value="WA">Washington</option>
                                                                                <option value="WV">West Virginia</option>
                                                                                <option value="WI">Wisconsin</option>
                                                                                <option value="WY">Wyoming</option>
                                                                            </select>
                                                                            <i class="arrow double"></i>
                                                                        </label>
                                                                    </div>
                                                                    <!-- end .col8 section -->

                                                                </div>
                                                                <!-- end section row section -->

                                                                <div class="section">
                                                                    <label class="field option">
                                                                        <input type="checkbox" name="info" checked>
                                                                        <span class="checkbox"></span>Save my information
                                                                        <em class="small-text text-muted">(No worries, its secure)</em>
                                                                    </label>
                                                                </div>
                                                                <!-- end section -->--%>

                            </div>
                            <!-- end .panel-body section -->
                            <div class="panel-footer">
                                <button type="submit" class="button btn-primary">Save</button>
                            </div>
                        </form:form>
                        <!-- end .form-footer section -->
                    </div>
                    <!-- end: .panel -->
                </div>
                <!-- end: .admin-form -->

                <!-- Business Basic Information Form -->
                <div class="admin-form theme-info tab-pane active" id="storeInfo" role="tabpanel">
                    <div class="panel panel-info heading-border">
                        <div class="panel-heading">
                            <span class="panel-title">
                                <i class="fa fa-comments"></i>Business Basic Information
                            </span>
                        </div>
                        <!-- end .form-header section -->

                        <form:form method="post" action="${pageContext.request.contextPath}/controller/administrator/settings/updateBasic">
                            <div class="panel-body p25">
                                <div class="row">
                                    <div class="section">
                                        <label for="businessName" class="field prepend-icon">
                                            <c:choose>
                                                <c:when test="${not empty model.businessName}">
                                                    <input type="text" name="names" id="businessName" class="gui-input" value="${model.businessName}" placeholder="Business name...">
                                                </c:when>
                                                <c:otherwise>
                                                    <input type="text" name="names" id="businessName" class="gui-input" placeholder="Business name...">
                                                </c:otherwise>
                                            </c:choose>
                                            <label for="businessName" class="field-icon">
                                                <i class="fa fa-home"></i>
                                            </label>
                                        </label>
                                    </div>
                                    <!-- end section -->

                                    <div class="section">
                                        <label for="storeName" class="field prepend-icon">
                                            <c:choose>
                                                <c:when test="${not empty model.storeName}">
                                                    <input type="text" name="storeName" id="storeName" class="gui-input" value="${model.storeName}" placeholder="Store name...">
                                                </c:when>
                                                <c:otherwise>
                                                    <input type="text" name="storeName" id="storeName" class="gui-input" placeholder="Store name...">
                                                </c:otherwise>
                                            </c:choose>
                                            <label for="storeName" class="field-icon">
                                                <i class="fa fa-home"></i>
                                            </label>
                                        </label>
                                    </div>
                                    <!-- end section -->

                                    <div class="section">
                                        <label for="businessSector" class="field prepend-icon">
                                            <c:choose>
                                                <c:when test="${not empty model.businessSector}">
                                                    <input type="text" name="businessSector" id="businessSector" class="gui-input" value="${model.businessSector}" placeholder="Business sector...">
                                                </c:when>
                                                <c:otherwise>
                                                    <input type="text" name="businessSector" id="businessSector" class="gui-input" placeholder="Business sector...">
                                                </c:otherwise>
                                            </c:choose>
                                            <label for="businessSector" class="field-icon">
                                                <i class="fa fa-home"></i>
                                            </label>
                                        </label>
                                    </div>
                                    <!-- end section -->

                                    <div class="section">
                                        <label for="businessSlogan" class="field prepend-icon">
                                            <c:choose>
                                                <c:when test="${not empty model.businessSlogan}">
                                                    <input type="text" name="businessSlogan" id="businessSlogan" class="gui-input" value="${model.businessSlogan}" placeholder="Business slogan...">
                                                </c:when>
                                                <c:otherwise>
                                                    <input type="text" name="businessSlogan" id="businessSlogan" class="gui-input" placeholder="Business slogan...">
                                                </c:otherwise>
                                            </c:choose>
                                            <label for="businessSector" class="field-icon">
                                                <i class="fa fa-home"></i>
                                            </label>
                                        </label>
                                    </div>
                                    <!-- end section -->

                                    <div class="section-divider">
                                        <span>Opening hours</span>
                                    </div>

                                    <div class="section">
                                        <label for="openTime" class="field prepend-icon">
                                            <c:choose>
                                                <c:when test="${not empty model.openTime}">
                                                    <input type="text" name="openTime" id="openTime" class="gui-input timePicker" value="${model.openTime}" placeholder="Open">
                                                </c:when>
                                                <c:otherwise>
                                                    <input type="text" name="openTime" id="openTime" class="gui-input timePicker" placeholder="Open">
                                                </c:otherwise>
                                            </c:choose>
                                            <label for="openTime" class="field-icon">
                                                <i class="fa fa-clock-o"></i>
                                            </label>
                                        </label>
                                    </div>
                                    <!-- end section -->

                                    <div class="section">
                                        <label for="closeTime" class="field prepend-icon">
                                            <c:choose>
                                                <c:when test="${not empty model.closeTime}">
                                                    <input type="text" name="closeTime" id="closeTime" class="gui-input timePicker" value="${model.closeTime}" placeholder="Close">
                                                </c:when>
                                                <c:otherwise>
                                                    <input type="text" name="closeTime" id="closeTime" class="gui-input timePicker" placeholder="Close">
                                                </c:otherwise>
                                            </c:choose>
                                            <label for="closeTime" class="field-icon">
                                                <i class="fa fa-clock-o"></i>
                                            </label>
                                        </label>
                                    </div>
                                    <!-- end section -->


                                    <div class="section-divider">
                                        <span>Store Description</span>
                                    </div>

                                    <div class="section">
                                        <label for="businessDesc" class="field prepend-icon">
                                            <textarea class="gui-textarea" id="businessDesc" name="businessDesc"><c:choose><c:when test="${not empty model.businessDesc}">${model.businessDesc}</c:when></c:choose></textarea>
                                            <label for="businessDesc" class="field-icon">
                                                <i class="fa fa-comments"></i>
                                            </label>
                                            <span class="input-footer"/>
                                        </label>
                                    </div>
                                    <!-- end section -->

                                    <div class="section-divider">
                                        <span>Address</span>
                                    </div>

                                    <div class="section">
                                        <label for="businessPhone" class="field prepend-icon">
                                            <c:choose>
                                                <c:when test="${not empty model.businessPhone}">
                                                    <input type="tel" name="businessPhone" id="businessPhone" class="gui-input" value="${model.businessPhone}" placeholder="Enter telephone or mobile...">
                                                </c:when>
                                                <c:otherwise>
                                                    <input type="tel" name="businessPhone" id="businessPhone" class="gui-input" placeholder="Enter telephone or mobile...">
                                                </c:otherwise>
                                            </c:choose>
                                            <label for="businessPhone" class="field-icon">
                                                <i class="fa fa-phone-square"></i>
                                            </label>
                                        </label>
                                    </div>
                                    <!-- end section -->

                                    <div class="section">
                                        <label for="addrStreet" class="field prepend-icon">
                                            <c:choose>
                                                <c:when test="${not empty model.addrStreet}">
                                                    <input type="text" name="addrStreet" id="addrStreet" class="gui-input" placeholder="Street" value="${model.addrStreet}">
                                                </c:when>
                                                <c:otherwise>
                                                    <input type="text" name="addrStreet" id="addrStreet" class="gui-input" placeholder="Street">
                                                </c:otherwise>
                                            </c:choose>
                                            <label for="addrStreet" class="field-icon">
                                                <i class="fa fa-map-marker"></i>
                                            </label>
                                        </label>
                                    </div>
                                    <!-- end section -->

                                    <div class="section">
                                        <label class="field select">
                                            <select id="addrCountry" name="addrCountry">
                                                <option value="">Select country...</option>
                                                <option selected="true" value="VN">Vietnam</option>
                                            </select>
                                            <i class="arrow double"></i>
                                        </label>
                                    </div>
                                    <!-- end section -->

                                    <div class="section row mbn">
                                        <div class="col-md-3">
                                            <label for="addrWard" class="field prepend-icon">
                                                <c:choose>
                                                    <c:when test="${not empty model.addrWard}">
                                                        <input type="text" name="addrWard" id="addrWard" class="gui-input" placeholder="Ward" value="${model.addrWard}">
                                                    </c:when>
                                                    <c:otherwise>
                                                        <input type="text" name="addrWard" id="addrWard" class="gui-input" placeholder="Ward">
                                                    </c:otherwise>
                                                </c:choose>
                                                <label for="addrWard" class="field-icon">
                                                    <i class="fa fa-certificate"></i>
                                                </label>
                                            </label>
                                        </div>
                                        <!-- end section -->

                                        <div class="col-md-4">
                                            <label for="addrCity" class="field prepend-icon">
                                                <c:choose>
                                                    <c:when test="${not empty model.addrCity}">
                                                        <input type="text" name="addrCity" id="addrCity" class="gui-input" placeholder="City" value="${model.addrCity}">
                                                    </c:when>
                                                    <c:otherwise>
                                                        <input type="text" name="addrCity" id="addrCity" class="gui-input" placeholder="City">
                                                    </c:otherwise>
                                                </c:choose>
                                                <label for="addrCity" class="field-icon">
                                                    <i class="fa fa-building-o"></i>
                                                </label>
                                            </label>
                                        </div>
                                        <!-- end section -->

                                        <div class="col-md-5">
                                            <label for="addrProvince" class="field select">
                                                <select id="addrProvince" name="addrProvince">
                                                    <option value="">Choose province</option>
                                                    <option selected="true">Dong Nai</option>
                                                </select>
                                                <i class="arrow double"></i>
                                            </label>
                                        </div>
                                        <!-- end section -->
                                        <!-- end section row -->

                                    </div>
                                    <!-- end .colm6 section -->
                                    <%--<div class="col-md-6">
                                        <div class="map-container">
                                            <!-- <div id="map_canvas"></div> -->
                                            <iframe width="100%" height="307" frameborder="0" style="border:0" src="https://www.google.com/maps/embed/v1/place?q=Disneyland%20Park%2C%20Disneyland%20Drive%2C%20Anaheim%2C%20CA%2C%20United%20States&amp;key=AIzaSyBqf9cjsPAh3rGJPKLCsYL2IeAveGhGJTw&amp;zoom=14"></iframe>
                                        </div>
                                    </div>--%>
                                    <!-- end .colm6 section -->

                                </div>
                                <!-- end .section row section -->

                            </div>
                            <!-- end .form-body section -->
                            <div class="panel-footer">
                                <button type="submit" class="button btn-primary">Submit</button>
                            </div>
                            <!-- end .form-footer section -->
                        </form:form>
                    </div>
                    <!-- end .panel -->
                </div>
                <!-- end: .admin-form -->
            </div>

        </div>
    </div>
    <!-- end: .tray-center -->

    <!-- begin: .tray-right -->
    <aside class="tray tray-right tray320" data-tray-height="match">
        <div class="row">
            <div class="col-xs-4 ph5">
                <a href="#business-tab" data-toggle="tab" class="btn btn-default btn-block ph5 br0 animation-nav">Business</a>
            </div>
            <div class="col-xs-4 pr5">
                <a href="#owner-tab" data-toggle="tab" class="btn btn-default btn-block ph5 br0 animation-nav">Owner</a>
            </div>
        </div>
        <div class="tray-bin stretch btn-dimmer mt20">
            <div class="tab-content pn br-n bg-none admin-form-list">
                <div id="owner-tab" class="tab-pane">
                    <ul id="business-list" class="nav list-unstyled" role="tablist">
                        <li class="nav-label mtn">Owner Info</li>
                        <li>
                            <a class="btn btn-warning btn-gradient btn-alt btn-block" href="#primaryOwner" role="tab" data-toggle="tab">Primary Owner</a>
                        </li>
                        <li>
                            <a class="btn btn-info btn-gradient btn-alt btn-block" href="#secondaryOwner" role="tab" data-toggle="tab">Secondary Owner</a>
                        </li>
                    </ul>
                </div>
                <div id="business-tab" class="tab-pane active">
                    <ul id="owner-list" class="nav list-unstyled" role="tablist">
                        <li class="nav-label mtn">Business Info</li>
                        <li>
                            <a class="btn btn-primary btn-gradient btn-alt btn-block item-active" href="#storeInfo" role="tab" data-toggle="tab"> Basic Information</a>
                        </li>
                        <li>
                            <a class="btn btn-primary btn-gradient btn-alt btn-block" href="#socialSettings" role="tab" data-toggle="tab"> Social Settings</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </aside>
    <!-- end: .tray-right -->
</section>
<!-- End: Content -->