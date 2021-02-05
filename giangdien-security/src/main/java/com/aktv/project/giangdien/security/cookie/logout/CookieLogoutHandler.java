package com.aktv.project.giangdien.security.cookie.logout;

import com.aktv.project.giangdien.security.cookie.CookieService;
import com.aktv.project.giangdien.security.utils.UrlUtils;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.LogoutHandler;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * CookieLogoutHandler -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class CookieLogoutHandler implements LogoutHandler {

    @Override
    public void logout(HttpServletRequest request, HttpServletResponse response, Authentication authentication) {
        for (Cookie cookie : request.getCookies()) {
            cookie.setValue("");
            cookie.setMaxAge(0);
            if (cookie.getName().equals(CookieService.AUTH_COOKIE_NAME)) {
                cookie.setDomain("." + UrlUtils.getDomain(request.getServerName()));
            }
            response.addCookie(cookie);
        }

        SecurityContextHolder.clearContext();
    }
}
