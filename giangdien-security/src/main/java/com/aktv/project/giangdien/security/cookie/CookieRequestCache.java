package com.aktv.project.giangdien.security.cookie;

import com.aktv.project.giangdien.security.Oauth2AuthorizeRequestMatcher;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.security.web.PortResolver;
import org.springframework.security.web.PortResolverImpl;
import org.springframework.security.web.savedrequest.DefaultSavedRequest;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.security.web.util.matcher.RequestMatcher;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * CookieRequestCache -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class CookieRequestCache implements RequestCache {

    private CookieService cookieService;

    private PortResolver portResolver = new PortResolverImpl();
    private boolean createSessionAllowed = true;
    private RequestMatcher requestMatcher = new Oauth2AuthorizeRequestMatcher();
    private Gson gson = new GsonBuilder().create();

    public CookieRequestCache(CookieService cookieService) {
        this.cookieService = cookieService;
    }


    @Override
    public void saveRequest(HttpServletRequest request, HttpServletResponse response) {
        if (requestMatcher.matches(request)) {
            DefaultSavedRequest savedRequest = new DefaultSavedRequest(request, portResolver);
            Cookie cookie = cookieService.createCookie(CookieService.REQ_CACHE_COOKIE_NAME, savedRequest.getRedirectUrl());
            cookie.setSecure(true);
            response.addCookie(cookie);
//            LOGGER.debug("DefaultSavedRequest added to Session: " + savedRequest);
        }
    }

    @Override public SavedRequest getRequest(HttpServletRequest request, HttpServletResponse response) {
    /*
    String value = cookieService.extractValue(CookieService.REQ_CACHE_COOKIE_NAME, request.getCookies());
    if (value != null) {
      return gson.fromJson(value, DefaultSavedRequest.class);
    }*/
        return null;
    }

    public void removeRequest(HttpServletRequest currentRequest, HttpServletResponse response) {
        response.addCookie(cookieService.createCookie(CookieService.REQ_CACHE_COOKIE_NAME, ""));
    }

    public HttpServletRequest getMatchingRequest(HttpServletRequest request, HttpServletResponse response) {
        return null;
    /*DefaultSavedRequest saved = (DefaultSavedRequest) getRequest(request, response);

    if (saved == null) {
      return null;
    }

    if (!saved.doesRequestMatch(request, portResolver)) {
      LOGGER.debug("saved request doesn't match");
      return null;
    }

    removeRequest(request, response);

    return new SavedRequestAwareWrapper(saved, request);*/
    }

}
