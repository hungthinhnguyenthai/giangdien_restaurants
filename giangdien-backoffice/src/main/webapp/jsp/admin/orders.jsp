<section id="content" class="table-layout">

    <!-- begin: .tray-center -->
    <div class="tray tray-center" style="height: 901px;">

        <!-- create new order panel -->
        <div class="panel mb25 mt5">
            <div class="panel-heading">
                <span class="panel-title hidden-xs">Create New Order</span>
                <ul class="nav panel-tabs-border panel-tabs">
                    <li class="active">
                        <a href="#tab1_1" data-toggle="tab">Customer</a>
                    </li>
                    <li>
                        <a href="#tab1_2" data-toggle="tab">Payment</a>
                    </li>
                    <li>
                        <a href="#tab1_3" data-toggle="tab">Shipping</a>
                    </li>
                </ul>
            </div>
            <div class="panel-body p25 pb5">
                <div class="tab-content pn br-n admin-form">
                    <div id="tab1_1" class="tab-pane active">

                        <div class="section row">
                            <div class="col-md-6">
                                <label for="firstname" class="field prepend-icon">
                                    <input type="text" name="firstname" id="firstname" class="gui-input" placeholder="First name...">
                                    <label for="firstname" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>
                            </div>
                            <div class="col-md-6">
                                <label for="email" class="field prepend-icon">
                                    <input type="email" name="email" id="email" class="gui-input" placeholder="Email address">
                                    <label for="email" class="field-icon">
                                        <i class="fa fa-envelope"></i>
                                    </label>
                                </label>
                            </div>
                        </div>
                        <!-- end section -->

                        <div class="section row">
                            <div class="col-md-6">
                                <label for="lastname" class="field prepend-icon">
                                    <input type="text" name="lastname" id="lastname" class="gui-input" placeholder="Last name...">
                                    <label for="lastname" class="field-icon">
                                        <i class="fa fa-user"></i>
                                    </label>
                                </label>

                            </div>
                            <div class="col-md-6">
                                <label for="mobile" class="field prepend-icon">
                                    <input type="tel" name="mobile" id="mobile" class="gui-input" placeholder="Telephone / moble number">
                                    <label for="mobile" class="field-icon">
                                        <i class="fa fa-phone-square"></i>
                                    </label>
                                </label>
                            </div>
                        </div>
                        <!-- end section -->

                    </div>
                    <div id="tab1_2" class="tab-pane">
                        <div class="section">
                            <label class="field option">
                                <input type="radio" name="payment" checked="">
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

                    </div>
                    <div id="tab1_3" class="tab-pane">

                        <div class="section">
                            <label for="lastaddr" class="field prepend-icon">
                                <input type="text" name="lastaddr" id="lastaddr" class="gui-input" placeholder="Street address">
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

                        <div class="section row mbn">
                            <div class="col-sm-8">
                                <label class="field option mt10">
                                    <input type="checkbox" name="info" checked="">
                                    <span class="checkbox"></span>Save Customer
                                    <em class="small-text text-muted">- A Random Unique ID will be generated</em>
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <p class="text-right">
                                    <button class="btn btn-primary" type="button">Save Order</button>
                                </p>
                            </div>
                        </div>
                        <!-- end section -->

                    </div>
                </div>
            </div>
        </div>

        <!-- recent orders table -->
        <div class="panel">
            <div class="panel-menu admin-form theme-primary">
                <div class="row">
                    <div class="col-md-4">
                        <label for="filter-datepicker" class="field prepend-picker-icon">
                            <input type="text" value="02/03/2015" id="filter-datepicker" name="filter-datepicker" class="gui-input hasDatepicker" placeholder="Filter by Date"><button type="button" class="ui-datepicker-trigger"><i class="fa fa-calendar-o"></i></button>
                        </label>
                    </div>
                    <div class="col-md-4">
                        <label class="field select">
                            <select id="filter-status" name="filter-status" class="empty">
                                <option value="0">Filter by Status</option>
                                <option value="1">Edit</option>
                                <option value="2">Delete</option>
                                <option value="3">Active</option>
                                <option value="4">Inactive</option>
                            </select>
                            <i class="arrow double"></i>
                        </label>
                    </div>
                    <div class="col-md-4">
                        <label class="field select">
                            <select id="filter-customer" name="filter-customer" class="empty">
                                <option value="0">Filter Customer</option>
                                <option value="1">Alan</option>
                                <option value="2">Susan</option>
                                <option value="3">Louis</option>
                                <option value="4">Randy</option>
                            </select>
                            <i class="arrow double"></i>
                        </label>
                    </div>
                </div>
            </div>
            <div class="panel-body pn">
                <div class="table-responsive">
                    <table class="table admin-form theme-warning tc-checkbox-1 fs13">
                        <thead>
                        <tr class="bg-light">
                            <th class="text-center">Select</th>
                            <th class="">Order Date</th>
                            <th class="">Order ID</th>
                            <th class="">Customer</th>
                            <th class="">Notes</th>
                            <th class="text-center">Order Status</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="">
                                <label class="option block mn">
                                    <input type="checkbox" name="mobileos" value="FR">
                                    <span class="checkbox mn"></span>
                                </label>
                            </td>
                            <td class="">
                                01/11/2015
                            </td>
                            <td class="">#50362061</td>
                            <td class="w175">
                                <img class="img-responsive mw20 ib mr10" title="user" src="assets/img/avatars/1.jpg">
                                <span>Louis Renold</span>
                            </td>
                            <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                            <td class="text-right">
                                <div class="btn-group text-right">
                                    <button type="button" class="btn btn-info br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Pending
                                        <span class="h-plus ml5"></span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li>
                                            <a href="#">Edit</a>
                                        </li>
                                        <li>
                                            <a href="#">Delete</a>
                                        </li>
                                        <li>
                                            <a href="#">Archive</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">Complete</a>
                                        </li>
                                        <li class="active">
                                            <a href="#">Pending</a>
                                        </li>
                                        <li>
                                            <a href="#">Canceled</a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="">
                                <label class="option block mn">
                                    <input type="checkbox" name="mobileos" value="FR">
                                    <span class="checkbox mn"></span>
                                </label>
                            </td>
                            <td class="">
                                01/11/2015
                            </td>
                            <td class="">#50362061</td>
                            <td class="w175">
                                <img class="img-responsive mw20 ib mr10" title="user" src="assets/img/avatars/1.jpg">
                                <span>Louis Renold</span>
                            </td>
                            <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                            <td class="text-right">
                                <div class="btn-group text-right">
                                    <button type="button" class="btn btn-info br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Pending
                                        <span class="h-plus ml5"></span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li>
                                            <a href="#">Edit</a>
                                        </li>
                                        <li>
                                            <a href="#">Delete</a>
                                        </li>
                                        <li>
                                            <a href="#">Archive</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">Complete</a>
                                        </li>
                                        <li class="active">
                                            <a href="#">Pending</a>
                                        </li>
                                        <li>
                                            <a href="#">Canceled</a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="">
                                <label class="option block mn">
                                    <input type="checkbox" name="mobileos" value="FR">
                                    <span class="checkbox mn"></span>
                                </label>
                            </td>
                            <td class="">
                                01/11/2015
                            </td>
                            <td class="">#50362061</td>
                            <td class="w175">
                                <img class="img-responsive mw20 ib mr10" title="user" src="assets/img/avatars/2.jpg">
                                <span>Sara Loft</span>
                            </td>
                            <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                            <td class="text-right">
                                <div class="btn-group text-right">
                                    <button type="button" class="btn btn-info br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Pending
                                        <span class="h-plus ml5"></span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li>
                                            <a href="#">Edit</a>
                                        </li>
                                        <li>
                                            <a href="#">Delete</a>
                                        </li>
                                        <li>
                                            <a href="#">Archive</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">Complete</a>
                                        </li>
                                        <li class="active">
                                            <a href="#">Pending</a>
                                        </li>
                                        <li>
                                            <a href="#">Canceled</a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="">
                                <label class="option block mn">
                                    <input type="checkbox" name="mobileos" value="FR">
                                    <span class="checkbox mn"></span>
                                </label>
                            </td>
                            <td class="">
                                01/11/2015
                            </td>
                            <td class="">#50362061</td>
                            <td class="w175">
                                <img class="img-responsive mw20 ib mr10" title="user" src="assets/img/avatars/3.jpg">
                                <span>Frank Roles</span>
                            </td>
                            <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                            <td class="text-right">
                                <div class="btn-group text-right">
                                    <button type="button" class="btn btn-success br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Completed
                                        <span class="h-plus ml5"></span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li>
                                            <a href="#">Edit</a>
                                        </li>
                                        <li>
                                            <a href="#">Delete</a>
                                        </li>
                                        <li>
                                            <a href="#">Archive</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">Complete</a>
                                        </li>
                                        <li class="active">
                                            <a href="#">Pending</a>
                                        </li>
                                        <li>
                                            <a href="#">Canceled</a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="">
                                <label class="option block mn">
                                    <input type="checkbox" name="mobileos" value="FR">
                                    <span class="checkbox mn"></span>
                                </label>
                            </td>
                            <td class="">
                                01/11/2015
                            </td>
                            <td class="">#50362061</td>
                            <td class="w175">
                                <img class="img-responsive mw20 ib mr10" title="user" src="assets/img/avatars/4.jpg">
                                <span>Michael Runes</span>
                            </td>
                            <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                            <td class="text-right">
                                <div class="btn-group text-right">
                                    <button type="button" class="btn btn-success br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Completed
                                        <span class="h-plus ml5"></span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li>
                                            <a href="#">Edit</a>
                                        </li>
                                        <li>
                                            <a href="#">Delete</a>
                                        </li>
                                        <li>
                                            <a href="#">Archive</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">Complete</a>
                                        </li>
                                        <li class="active">
                                            <a href="#">Pending</a>
                                        </li>
                                        <li>
                                            <a href="#">Canceled</a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="">
                                <label class="option block mn">
                                    <input type="checkbox" name="mobileos" value="FR">
                                    <span class="checkbox mn"></span>
                                </label>
                            </td>
                            <td class="">
                                01/11/2015
                            </td>
                            <td class="">#50362061</td>
                            <td class="w175">
                                <img class="img-responsive mw20 ib mr10" title="user" src="assets/img/avatars/5.jpg">
                                <span>Amanda Marshall</span>
                            </td>
                            <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                            <td class="text-right">
                                <div class="btn-group text-right">
                                    <button type="button" class="btn btn-success br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Completed
                                        <span class="h-plus ml5"></span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li>
                                            <a href="#">Edit</a>
                                        </li>
                                        <li>
                                            <a href="#">Delete</a>
                                        </li>
                                        <li>
                                            <a href="#">Archive</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">Complete</a>
                                        </li>
                                        <li class="active">
                                            <a href="#">Pending</a>
                                        </li>
                                        <li>
                                            <a href="#">Canceled</a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="">
                                <label class="option block mn">
                                    <input type="checkbox" name="mobileos" value="FR">
                                    <span class="checkbox mn"></span>
                                </label>
                            </td>
                            <td class="">
                                01/11/2015
                            </td>
                            <td class="">#50362061</td>
                            <td class="w175">
                                <img class="img-responsive mw20 ib mr10" title="user" src="assets/img/avatars/1.jpg">
                                <span>Terry Planes</span>
                            </td>
                            <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                            <td class="text-right">
                                <div class="btn-group text-right">
                                    <button type="button" class="btn btn-success br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Completed
                                        <span class="h-plus ml5"></span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li>
                                            <a href="#">Edit</a>
                                        </li>
                                        <li>
                                            <a href="#">Delete</a>
                                        </li>
                                        <li>
                                            <a href="#">Archive</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">Complete</a>
                                        </li>
                                        <li class="active">
                                            <a href="#">Pending</a>
                                        </li>
                                        <li>
                                            <a href="#">Canceled</a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="">
                                <label class="option block mn">
                                    <input type="checkbox" name="mobileos" value="FR">
                                    <span class="checkbox mn"></span>
                                </label>
                            </td>
                            <td class="">
                                01/11/2015
                            </td>
                            <td class="">#50362061</td>
                            <td class="w175">
                                <img class="img-responsive mw20 ib mr10" title="user" src="assets/img/avatars/4.jpg">
                                <span>Michael Runes</span>
                            </td>
                            <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                            <td class="text-right">
                                <div class="btn-group text-right">
                                    <button type="button" class="btn btn-success br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Completed
                                        <span class="h-plus ml5"></span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li>
                                            <a href="#">Edit</a>
                                        </li>
                                        <li>
                                            <a href="#">Delete</a>
                                        </li>
                                        <li>
                                            <a href="#">Archive</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">Complete</a>
                                        </li>
                                        <li class="active">
                                            <a href="#">Pending</a>
                                        </li>
                                        <li>
                                            <a href="#">Canceled</a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="">
                                <label class="option block mn">
                                    <input type="checkbox" name="mobileos" value="FR">
                                    <span class="checkbox mn"></span>
                                </label>
                            </td>
                            <td class="">
                                01/11/2015
                            </td>
                            <td class="">#50362061</td>
                            <td class="w175">
                                <img class="img-responsive mw20 ib mr10" title="user" src="assets/img/avatars/5.jpg">
                                <span>Amanda Marshall</span>
                            </td>
                            <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                            <td class="text-right">
                                <div class="btn-group text-right">
                                    <button type="button" class="btn btn-warning br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Archived
                                        <span class="h-plus ml5"></span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li>
                                            <a href="#">Edit</a>
                                        </li>
                                        <li>
                                            <a href="#">Delete</a>
                                        </li>
                                        <li>
                                            <a href="#">Archive</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">Complete</a>
                                        </li>
                                        <li class="active">
                                            <a href="#">Pending</a>
                                        </li>
                                        <li>
                                            <a href="#">Canceled</a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="">
                                <label class="option block mn">
                                    <input type="checkbox" name="mobileos" value="FR">
                                    <span class="checkbox mn"></span>
                                </label>
                            </td>
                            <td class="">
                                01/11/2015
                            </td>
                            <td class="">#50362061</td>
                            <td class="w175">
                                <img class="img-responsive mw20 ib mr10" title="user" src="assets/img/avatars/1.jpg">
                                <span>Terry Planes</span>
                            </td>
                            <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                            <td class="text-right">
                                <div class="btn-group text-right">
                                    <button type="button" class="btn btn-warning br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Archived
                                        <span class="h-plus ml5"></span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li>
                                            <a href="#">Edit</a>
                                        </li>
                                        <li>
                                            <a href="#">Delete</a>
                                        </li>
                                        <li>
                                            <a href="#">Archive</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">Complete</a>
                                        </li>
                                        <li class="active">
                                            <a href="#">Pending</a>
                                        </li>
                                        <li>
                                            <a href="#">Canceled</a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="">
                                <label class="option block mn">
                                    <input type="checkbox" name="mobileos" value="FR">
                                    <span class="checkbox mn"></span>
                                </label>
                            </td>
                            <td class="">
                                01/11/2015
                            </td>
                            <td class="">#50362061</td>
                            <td class="w175">
                                <img class="img-responsive mw20 ib mr10" title="user" src="assets/img/avatars/5.jpg">
                                <span>Amanda Marshall</span>
                            </td>
                            <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                            <td class="text-right">
                                <div class="btn-group text-right">
                                    <button type="button" class="btn btn-danger br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Canceled
                                        <span class="h-plus ml5"></span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li>
                                            <a href="#">Edit</a>
                                        </li>
                                        <li>
                                            <a href="#">Delete</a>
                                        </li>
                                        <li>
                                            <a href="#">Archive</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">Complete</a>
                                        </li>
                                        <li class="active">
                                            <a href="#">Pending</a>
                                        </li>
                                        <li>
                                            <a href="#">Canceled</a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="">
                                <label class="option block mn">
                                    <input type="checkbox" name="mobileos" value="FR">
                                    <span class="checkbox mn"></span>
                                </label>
                            </td>
                            <td class="">
                                01/11/2015
                            </td>
                            <td class="">#50362061</td>
                            <td class="w175">
                                <img class="img-responsive mw20 ib mr10" title="user" src="assets/img/avatars/1.jpg">
                                <span>Terry Planes</span>
                            </td>
                            <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                            <td class="text-right">
                                <div class="btn-group text-right">
                                    <button type="button" class="btn btn-danger br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Canceled
                                        <span class="h-plus ml5"></span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li>
                                            <a href="#">Edit</a>
                                        </li>
                                        <li>
                                            <a href="#">Delete</a>
                                        </li>
                                        <li>
                                            <a href="#">Archive</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">Complete</a>
                                        </li>
                                        <li class="active">
                                            <a href="#">Pending</a>
                                        </li>
                                        <li>
                                            <a href="#">Canceled</a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="">
                                <label class="option block mn">
                                    <input type="checkbox" name="mobileos" value="FR">
                                    <span class="checkbox mn"></span>
                                </label>
                            </td>
                            <td class="">
                                01/11/2015
                            </td>
                            <td class="">#50362061</td>
                            <td class="w175">
                                <img class="img-responsive mw20 ib mr10" title="user" src="assets/img/avatars/1.jpg">
                                <span>Terry Planes</span>
                            </td>
                            <td class="">Lorem ipsum dolor sit amet, adipiscing eli</td>
                            <td class="text-right">
                                <div class="btn-group text-right">
                                    <button type="button" class="btn btn-danger br2 btn-xs fs12 dropdown-toggle" data-toggle="dropdown" aria-expanded="false"> Canceled
                                        <span class="h-plus ml5"></span>
                                    </button>
                                    <ul class="dropdown-menu" role="menu">
                                        <li>
                                            <a href="#">Edit</a>
                                        </li>
                                        <li>
                                            <a href="#">Delete</a>
                                        </li>
                                        <li>
                                            <a href="#">Archive</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li>
                                            <a href="#">Complete</a>
                                        </li>
                                        <li class="active">
                                            <a href="#">Pending</a>
                                        </li>
                                        <li>
                                            <a href="#">Canceled</a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
    <!-- end: .tray-center -->

    <!-- begin: .tray-right -->
    <aside class="tray tray-right tray290" data-tray-height="match" style="height: 856px;">

        <!-- menu quick links -->
        <div class="admin-form">

            <h4> Filter Orders</h4>

            <hr class="short">

            <div class="section mb15">
                <label for="order-id" class="field prepend-icon">
                    <input type="text" name="order-id" id="order-id" class="gui-input" placeholder="Order ID #">
                    <label for="order-id" class="field-icon">
                        <i class="fa fa-tag"></i>
                    </label>
                </label>
            </div>

            <h5><small>Price Range($)</small></h5>
            <div class="section row mb15">
                <div class="col-md-6">
                    <label for="price1" class="field prepend-icon">
                        <input type="text" name="price1" id="price1" class="gui-input" placeholder="0">
                        <label for="price1" class="field-icon">
                            <i class="fa fa-usd"></i>
                        </label>
                    </label>
                </div>
                <div class="col-md-6">
                    <label for="price2" class="field prepend-icon">
                        <input type="text" name="price2" id="price2" class="gui-input" placeholder="1000">
                        <label for="price2" class="field-icon">
                            <i class="fa fa-usd"></i>
                        </label>
                    </label>
                </div>
            </div>

            <h5><small>Sales Date</small></h5>
            <div class="section row">
                <div class="col-md-6">
                    <label for="date1" class="field prepend-icon">
                        <input type="text" name="date1" id="date1" class="gui-input" placeholder="01/01/15">
                        <label for="date1" class="field-icon">
                            <i class="fa fa-calendar"></i>
                        </label>
                    </label>
                </div>
                <div class="col-md-6">
                    <label for="date2" class="field prepend-icon">
                        <input type="text" name="date2" id="date2" class="gui-input" placeholder="01/31/15">
                        <label for="date2" class="field-icon">
                            <i class="fa fa-calendar"></i>
                        </label>
                    </label>
                </div>
            </div>

            <h5><small>Search Categories</small></h5>
            <div class="section mb15">
                <label class="field select">
                    <select id="filter-categories" name="filter-categories" class="empty">
                        <option value="0" selected="selected">Filter by Categories</option>
                        <option value="1">Electronics</option>
                        <option value="2">Software</option>
                    </select>
                    <i class="arrow double"></i>
                </label>
            </div>

            <h5><small>Search Customers</small></h5>
            <div class="section">
                <label class="field select">
                    <select id="filter-customers" name="filter-customers" class="empty">
                        <option value="0" selected="selected">Filter by Customer</option>
                        <option value="1">Michael</option>
                        <option value="2">David</option>
                        <option value="3">Sara</option>
                        <option value="4">Tasha</option>
                    </select>
                    <i class="arrow double"></i>
                </label>
            </div>

            <hr class="short">

            <div class="section">
                <button class="btn btn-default btn-sm ph25" type="button">Search</button>
                <label class="field option ml15">
                    <input type="checkbox" name="info">
                    <span class="checkbox"></span>
                    <span class="text-muted">Save Search</span>
                </label>
            </div>

        </div>

    </aside>
    <!-- end: .tray-right -->

</section>