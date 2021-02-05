<!-- Section Reserve Now-->
<section id="reserve-now" class="bg-gray-darkest context-dark section-98 section-110">
    <div class="shell">
        <h1><span class="reveal-block font-accent big">Reserve Now</span><span class="reveal-block offset-top-4 h3 text-light text-uppercase">EVERY GUEST IS SPECIAL HERE</span></h1>
        <hr class="divider bg-mantis offset-top-30">
        <!-- RD Mailform-->
        <form data-form-output="form-output-global" data-form-type="contact" method="post" action="#" class="rd-mailform text-left">
            <div class="range">
                <div class="cell-lg-3">
                    <div class="form-group has-feedback">
                        <label for="form-reserve-name" class="form-label form-label-sm form-label-outside">Name:</label>
                        <input id="form-reserve-name" type="text" data-constraints="@Required" name="name" class="form-control input-sm"><span aria-hidden="true" class="form-control-feedback mdi mdi-account"></span>
                    </div>
                </div>
                <div class="cell-lg-3">
                    <div class="form-group has-feedback">
                        <label for="form-reserve-email" class="form-label form-label-sm form-label-outside">E-Mail:</label>
                        <input id="form-reserve-email" type="email" data-constraints="@Required" name="email" class="form-control input-sm"><span aria-hidden="true" class="form-control-feedback mdi mdi-telegram"></span>
                    </div>
                </div>
                <div class="cell-lg-2">
                    <div class="form-group has-feedback">
                        <label for="form-reserve-date" class="form-label form-label-sm form-label-outside">Date:</label>
                        <input id="form-reserve-date" type="text" data-constraints="@Required" name="date" class="form-control input-sm"><span aria-hidden="true" class="form-control-feedback mdi mdi-calendar"></span>
                    </div>
                </div>
                <div class="cell-lg-2">
                    <div class="form-group has-feedback">
                        <label for="form-reserve-time" class="form-label form-label-sm form-label-outside">Time:</label>
                        <input id="form-reserve-time" type="time" data-constraints="@Required" name="time" class="form-control input-sm"><span aria-hidden="true" class="form-control-feedback mdi mdi-clock"></span>
                    </div>
                </div>
                <div class="cell-lg-2">
                    <div class="form-group">
                        <label for="form-reserve-persons" class="form-label form-label-sm form-label-outside">Persons:</label>
                        <select id="form-reserve-persons" name="persons" data-minimum-results-for-search="Infinity" class="form-control input-sm">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="group offset-top-20 text-center offset-top-50">
                <button type="submit" style="padding-left: 30px; padding-right: 30px;" class="btn btn-primary">Make a reservation</button>
            </div>
        </form>
    </div>
</section>