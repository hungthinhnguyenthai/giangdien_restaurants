package com.aktv.project.giangdien.security.strategy;

import com.aktv.project.giangdien.data.specification.RG;
import com.aktv.project.giangdien.data.specification.RGConstants;
import org.springframework.security.web.RedirectStrategy;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * OauthRedirectStrategy -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class OauthRedirectStrategy implements RedirectStrategy {

    @Override
    @RG(RGConstants.RGVERR08)
    public void sendRedirect(HttpServletRequest request, HttpServletResponse response, String url) throws IOException {
        String finalUrl = url;
        if (Boolean.TRUE.equals(request.getAttribute("lastButOneTry"))) {
            finalUrl += "&w=1";
        }
        response.sendRedirect(finalUrl);
    }
}
