package com.aktv.project.giangdien.security.cookie;

import javax.servlet.http.Cookie;
/**
 * CookieService -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public interface CookieService {

    String AUTH_COOKIE_NAME = "AUTHCOOKIE";
    String REQ_CACHE_COOKIE_NAME = "SPRING_SECURITY_SAVED_REQUEST";

    String extractValue(String cookieName, Cookie[] cookies);

    Cookie getCookie(String cookieName, Cookie[] cookies);

    Cookie createCookie(String cookieName, String value);

    Cookie createCookie(String cookieName, String value, boolean addSignature);

    Cookie createCookie(String authCookieName, String value, boolean addSignature, String domain);

}
