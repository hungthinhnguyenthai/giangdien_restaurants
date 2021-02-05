package com.aktv.project.giangdien.security.cookie.filter;

import com.aktv.project.giangdien.security.cookie.CookieService;
import com.aktv.project.giangdien.security.cookie.context.SimpleSecurityContext;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.web.filter.GenericFilterBean;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * CookieAuthenticationFilter -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class CookieAuthenticationFilter extends GenericFilterBean {

    private UserDetailsService userDetailsService;
    private CookieService cookieService;

    public CookieAuthenticationFilter(UserDetailsService userDetailService, CookieService cookieService) {
        this.userDetailsService = userDetailService;
        this.cookieService = cookieService;
    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException,
            ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;

        SecurityContext contextBeforeChainExecution = loadSecurityContext(request);

        // Set the Security Context for this thread
        try {
            SecurityContextHolder.setContext(contextBeforeChainExecution);
            chain.doFilter(request, response);
        } finally {
            // Free the thread of the context
            SecurityContextHolder.clearContext();
        }
    }

    private SecurityContext loadSecurityContext(HttpServletRequest request) {
        final String userName = cookieService.extractValue(CookieService.AUTH_COOKIE_NAME, request.getCookies());

        if (userName != null) {
            return new SimpleSecurityContext(userDetailsService.loadUserByUsername(userName));
        } else {
            return SecurityContextHolder.createEmptyContext();
        }
    }
}
