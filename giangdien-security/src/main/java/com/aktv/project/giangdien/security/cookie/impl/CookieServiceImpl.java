package com.aktv.project.giangdien.security.cookie.impl;

import com.aktv.project.giangdien.security.cookie.CookieService;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Strings;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Value;

import javax.servlet.http.Cookie;
import java.util.Arrays;

import static com.google.common.base.Preconditions.checkArgument;

/**
 * CookieServiceImpl -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class CookieServiceImpl implements CookieService {

//    @Value("${pinpad_password_cipher}")
    @VisibleForTesting
    String salt = "1Df(%@78d5gBQz56-S5SSjS$";

    @Override
    public String extractValue(String cookieName, Cookie[] cookies) {
        Cookie cookie = getCookie(cookieName, cookies);
        if (cookie == null) {
            return null;
        }
        String value = cookie.getValue();
        if (isSigned(value)) {
            if (!verify(value)) {
                return null;
            }
            value = getData(value);
        }
        return value;
    }

    @Override
    public Cookie createCookie(String cookieName, String value) {
        return createCookie(cookieName, value, false);
    }

    @Override
    public Cookie createCookie(String cookieName, String value, boolean addSignature) {
        return createCookie(cookieName, value, addSignature, null);
    }

    @Override
    public Cookie createCookie(String authCookieName, String value, boolean addSignature, String domain) {
        String data = value;
        if (!Strings.isNullOrEmpty(data) && addSignature) {
            data = sign(data);
        }
        Cookie c = new Cookie(authCookieName, data);
        c.setPath("/");
        if (!Strings.isNullOrEmpty(domain)) {
            c.setDomain(domain);
        }
        return c;
    }

    private String sign(String data) {
        String sign = DigestUtils.sha256Hex(salt + data);
        return "Signature:" + sign + "###" + data;
    }

    private boolean verify(String data) {
        return data == null || sign(getData(data)).equals(data);
    }

    private String getData(String data) {
        return data.split("###")[1];
    }

    private boolean isSigned(String data) {
        return data.startsWith("Signature:") && data.contains("###");
    }


    @Override
    public Cookie getCookie(String cookieName, Cookie[] cookies) {
        checkArgument(cookieName != null, "Expect a cookieName...");
        if (cookies == null) {
            return null;
        }
//        return Arrays.asList(cookies).stream()
//                .filter(c -> c.getName().equals(cookieName))
//                .findFirst()
//                .orElse(null);
        //// TODO: 12/30/16  Fix it
        return null;
    }
}
