package com.aktv.project.giangdien.security.filter;

import com.aktv.project.giangdien.security.pinpad.Pinpad;
import com.aktv.project.giangdien.security.pinpad.PinpadHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.CredentialsExpiredException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLDecoder;

import static com.google.common.base.Preconditions.checkNotNull;

/**
 * PinpadAuthenticationFilter -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class PinpadAuthenticationFilter extends AbstractAuthenticationProcessingFilter {

    public PinpadAuthenticationFilter() {
        super("/j_spring_security_check");
    }

    @Autowired
    private PinpadHelper pinpadHelper;

    @Value("${host.secure.base_url}")
    private String oauthUrl;

    @Override
    public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username");
        String pinpadInput = request.getParameter("pinpadInputSequence");

        if (username == null) {
            username = "";
        }

        if (pinpadInput == null) {
            pinpadInput = "";
        }

        Cookie pinpadCookie = getCookie(request.getCookies());
        checkNotNull(pinpadCookie, "Missing pinpad cookie...");

        Pinpad pinpad = pinpadHelper.decryptInput(pinpadInput, URLDecoder.decode(pinpadCookie.getValue(), "UTF-8"));
        if (pinpad.isExpired()) {
            throw new CredentialsExpiredException("The pinpad has expired");
        }

        UsernamePasswordAuthenticationToken authRequest = new UsernamePasswordAuthenticationToken(username, pinpad.getPassword());

        // Allow subclasses to set the "details" property
        setDetails(request, authRequest);

        return this.getAuthenticationManager().authenticate(authRequest);
    }


    private Cookie getCookie(Cookie[] cookies) {
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if ("PINPAD_SESSION_ID".equals(cookie.getName())) {
                    return cookie;
                }
            }
        }
        return null;
    }

    protected void setDetails(HttpServletRequest request, UsernamePasswordAuthenticationToken authRequest) {
        authRequest.setDetails(authenticationDetailsSource.buildDetails(request));
    }

}
