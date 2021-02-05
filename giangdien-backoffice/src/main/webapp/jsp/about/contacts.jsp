<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="text-center">
    <!-- Section Intro-->
    <tiles:insertAttribute name="header" defaultValue="/jsp/section/navigate.jsp">
        <tiles:putAttribute name="title" value="Contact Us"/>
    </tiles:insertAttribute>
    <!-- Contact Us-->
    <section class="section-98 section-md-110 text-lg-left">
        <div class="shell">
            <div class="range range-xs-center range-xs-center">
                <div class="cell-lg-4">
                    <h3 class="text-uppercase text-bold"><spring:message code="label.how.to.find.us"/></h3>
                    <hr class="divider hr-lg-left-0 bg-mantis">
                    <p><spring:message code="label.contact.detail"/></p>
                    <address class="contact-info offset-top-50">
                        <c:if test="${not empty baseInfo.businessName}">
                            <div class="h6 text-uppercase text-bold text-picton-blue letter-space-none offset-top-none">${baseInfo.businessName}</div>
                        </c:if>
                        <c:if test="${(not empty baseInfo.addrStreet) && (not empty baseInfo.addrCountry) && (not empty baseInfo.addrCity) && (not empty baseInfo.addrProvince)}">
                            <p>${baseInfo.addrStreet}, ${baseInfo.addrCity}, ${baseInfo.addrProvince}, ${baseInfo.secondaryAddrCountry}.</p>
                        </c:if>
                        <c:if test="${not empty baseInfo.ownerPhone}">
                            <dl class="offset-top-0">
                                <dt>Telephone</dt>
                                <dd><a href="callto:#">${baseInfo.ownerPhone}</a></dd>
                            </dl>
                        </c:if>
                        <c:if test="${not empty baseInfo.ownerEmail}">
                            <dl>
                                <dt>E-mail:</dt>
                                <dd><a href="mailto:${baseInfo.ownerEmail}">${baseInfo.ownerEmail}</a></dd>
                            </dl>
                        </c:if>
                    </address>
                    <address class="contact-info offset-top-50">
                        <c:if test="${not empty baseInfo.secondaryOwnerBusinessName}">
                            <div class="h6 text-uppercase text-bold text-picton-blue letter-space-none">${baseInfo.secondaryOwnerBusinessName}</div>
                        </c:if>
                        <c:if test="${(not empty baseInfo.secondaryAddrStreet) && (not empty baseInfo.secondaryAddrCountry) && (not empty baseInfo.secondaryAddrCity) && (not empty baseInfo.secondaryAddrProvince)}">
                            <p>${baseInfo.secondaryAddrStreet}, ${baseInfo.secondaryAddrCity}, ${baseInfo.secondaryAddrProvince}, ${baseInfo.secondaryAddrCountry}.</p>
                        </c:if>
                        <c:if test="${not empty baseInfo.secondaryOwnerPhone}">
                            <dl class="offset-top-0">
                                <dt>Telephone</dt>
                                <dd><a href="callto:+#">${baseInfo.secondaryOwnerPhone}</a></dd>
                            </dl>
                        </c:if>
                        <c:if test="${not empty baseInfo.secondaryOwnerEmail}">
                            <dl>
                                <dt>E-mail:</dt>
                                <dd><a href="mailto:${baseInfo.secondaryOwnerEmail}">${baseInfo.secondaryOwnerEmail}</a></dd>
                            </dl>
                        </c:if>
                    </address>
                </div>
                <div class="cell-sm-8 offset-top-66 offset-lg-top-0">
                    <h3 class="text-uppercase text-bold"><spring:message code="label.get.in.touch"/></h3>
                    <hr class="divider hr-lg-left-0 bg-mantis">
                    <!-- RD Mailform-->
                    <form data-form-output="form-contact-us" data-form-type="contact" method="post" action="#form" class="rd-mailform text-left">
                        <div class="range">
                            <div class="cell-lg-6">
                                <div class="form-group">
                                    <label for="contact-us-name" class="form-label form-label-outside"><spring:message code="label.form.field.name"/>:</label>
                                    <input id="contact-us-name" type="text" name="name" data-constraints="@Required" class="form-control">
                                </div>
                            </div>
                            <div class="cell-lg-6 offset-top-20 offset-lg-top-0">
                                <div class="form-group">
                                    <label for="contact-us-email" class="form-label form-label-outside"><spring:message code="label.form.field.email"/>:</label>
                                    <input id="contact-us-email" type="email" name="email" data-constraints="@Required @Email" class="form-control">
                                </div>
                            </div>
                            <div class="cell-lg-12 offset-top-20">
                                <div class="form-group">
                                    <label for="contact-us-message" class="form-label form-label-outside"><spring:message code="label.form.field.message"/>:</label>
                                    <textarea id="contact-us-message" name="message" data-constraints="@Required" class="form-control"></textarea>
                                </div>
                            </div>
                        </div>
                        <div class="group-sm text-center text-lg-left offset-top-30">
                            <button type="submit" class="btn btn-primary"><spring:message code="label.form.button.send"/></button>
                            <button type="reset" class="btn btn-default"><spring:message code="label.form.button.reset"/></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <jsp:include page="/jsp/section/maps.jsp"/>
</div>