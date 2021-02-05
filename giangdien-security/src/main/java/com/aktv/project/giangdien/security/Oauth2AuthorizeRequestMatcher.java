package com.aktv.project.giangdien.security;

import org.springframework.security.web.util.matcher.RequestMatcher;

import javax.servlet.http.HttpServletRequest;

/**
 * Oauth2AuthorizeRequestMatcher -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class Oauth2AuthorizeRequestMatcher implements RequestMatcher {

    @Override
    public boolean matches(HttpServletRequest request) {
        return request.getMethod().equals("GET")
                && request.getRequestURI().equals("/oauth/authorize")
                && request.getParameterMap().keySet().contains("client_id");
    }
}
