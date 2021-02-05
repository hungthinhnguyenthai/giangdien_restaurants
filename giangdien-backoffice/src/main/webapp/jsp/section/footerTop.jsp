<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!-- Page Footer-->
<footer class="section-relative section-top-66 section-bottom-34 page-footer bg-gray-base context-dark text-center">
    <div class="shell">
        <div class="range range-sm-center text-lg-left">
            <div class="cell-sm-12">
                <div class="range range-xs-center">
                    <div class="cell-xs-10 cell-sm-6 text-xs-left cell-md-6 cell-lg-4 cell-lg-push-3 cell-md-push-2 cell-lg-preffix-1">
                        <h6 class="text-uppercase text-spacing-60 text-center text-md-left"><spring:message code="label.contact.us"/></h6>
                        <!-- RD Mailform -->
                        <form data-form-output="form-output-global" data-form-type="contact" method="post" action="#">
                            <div class="form-group">
                                <label for="footer-v2-name" class="form-label form-label-sm"><spring:message code="label.form.field.name"/>:</label>
                                <input id="footer-v2-name" type="text" name="name" class="form-control input-sm form-control-impressed">
                            </div>
                            <div class="form-group offset-top-20">
                                <label for="footer-v2-email" class="form-label form-label-sm"><spring:message code="label.form.field.your.email"/>*:</label>
                                <input id="footer-v2-email" type="text" data-constraints="@Required" name="email" class="form-control input-sm form-control-impressed">
                            </div>
                            <div class="form-group offset-top-20">
                                <label for="footer-v2-message" class="form-label form-label-sm"><spring:message code="label.form.field.message"/>*:</label>
                                <textarea id="footer-v2-message" name="message" data-constraints="@Required" class="form-control input-sm form-control-impressed"></textarea>
                            </div>
                            <div class="group offset-top-20">
                                <button type="submit" class="btn btn-sm btn-primary"><spring:message code="label.form.button.submit"/></button>
                            </div>
                        </form>
                    </div>
                    <div class="cell-xs-12 offset-top-66 cell-lg-3 cell-lg-push-1 offset-lg-top-0 cell-md-push-3">
                        <!-- Footer brand-->
                        <div class="footer-brand"><a href="${pageContext.request.contextPath}/controller/home"><img src='${pageContext.request.contextPath}/images/home/logo.png' alt=''/></a></div>
                        <c:if test="${not empty baseInfo.businessSlogan}">
                            <p class="text-darker offset-top-4">${baseInfo.businessSlogan}</p>
                        </c:if>

                        <address class="contact-info offset-top-30 p">
                            <div>
                                <dl>
                                    <dt class="text-white"><spring:message code="label.form.field.address"/>:</dt>
                                    <dd class="text-dark reveal-lg-block">${baseInfo.addrStreet}<span class="reveal-lg-block">${baseInfo.addrCity}, ${baseInfo.addrProvince}</span>, <span class="reveal-lg-block">${baseInfo.addrCountry}.</span></dd>
                                </dl>
                            </div>
                            <div>
                                <dl class="offset-top-0">
                                    <dt class="text-white"><spring:message code="label.form.field.telephone"/>:</dt>
                                    <dd class="text-dark"><a href="callto:#">${baseInfo.ownerPhone}</a></dd>
                                </dl>
                            </div>
                            <div>
                                <dl class="offset-top-0">
                                    <dt class="text-white"><spring:message code="label.form.field.email"/>:</dt>
                                    <dd class="text-dark"><a href="mailto:${baseInfo.ownerEmail}">${baseInfo.ownerEmail}</a></dd>
                                </dl>
                            </div>
                        </address>
                    </div>
                    <div class="cell-xs-10 cell-sm-6 offset-top-66 offset-md-top-0 text-xs-left cell-md-6 cell-lg-4 cell-lg-push-2 cell-md-push-1">
                        <h6 class="text-uppercase text-spacing-60 text-center text-md-left"><spring:message code="label.contact.zone.testimonials.title"/></h6>
                        <div data-items="1" data-nav="false" data-dots="true" class="owl-carousel owl-carousel-classic owl-carousel-class-light owl-carousel-simple-quote">
                            <div>
                                <blockquote class="quote quote-simple-2 text-left">
                                    <p class="quote-body offset-bottom-0">
                                        <q>This is one of the best restaurants I have visited. Everything was excellent. The food was served in a  very creative way. Would recommend to all.</q>
                                    </p>
                                    <h6 class="quote-author text-uppercase text-white">
                                        <cite class="text-normal">- Thinh Nguyen</cite>
                                    </h6>
                                </blockquote>
                            </div>
                            <div>
                                <blockquote class="quote quote-simple-2 text-left">
                                    <p class="quote-body offset-bottom-0">
                                        <q>Your Restaurant is the best family place for me. It is already a tradition for us to visit this place every Friday evening. I really enjoy everything.</q>
                                    </p>
                                    <h6 class="quote-author text-uppercase text-white">
                                        <cite class="text-normal">- J.St</cite>
                                    </h6>
                                </blockquote>
                            </div>
                            <div>
                                <blockquote class="quote quote-simple-2 text-left">
                                    <p class="quote-body offset-bottom-0">
                                        <q>This is where I go every time I feel overwhelmed with nostalgia or just want to taste the real pasta one more time. Highly recommend.</q>
                                    </p>
                                    <h6 class="quote-author text-uppercase text-white">
                                        <cite class="text-normal">- Thao Ly</cite>
                                    </h6>
                                </blockquote>
                            </div>
                        </div>
                        <div class="offset-top-34 text-xs-center text-md-left">
                            <ul class="list-inline">
                                <li><a href="${baseInfo.businessFbUrl}" class="icon fa fa-facebook icon-xxs icon-circle icon-darkest-filled"></a></li>
                                <li><a href="#" class="icon fa fa-twitter icon-xxs icon-circle icon-darkest-filled"></a></li>
                                <li><a href="#" class="icon fa fa-google-plus icon-xxs icon-circle icon-darkest-filled"></a></li>
                                <li><a href="#" class="icon fa fa-skype icon-xxs icon-circle icon-darkest-filled"></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="shell offset-top-50">
        <p class="small text-darker">${baseInfo.storeName} ${baseInfo.businessSector} &copy; <span id="copyright-year"></span> . <a href="${pageContext.request.contextPath}/controller/home/privacy"><spring:message code="label.privacy"/></a></p>
        <p class="small text-darker">Powered by <a href="${pageContext.request.contextPath}/controller/aktv">AKTV Digital Marketing</a></p>
    </div>
</footer>