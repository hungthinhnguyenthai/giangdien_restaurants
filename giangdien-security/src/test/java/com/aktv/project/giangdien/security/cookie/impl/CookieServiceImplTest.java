package com.aktv.project.giangdien.security.cookie.impl;

import org.junit.Before;
import org.junit.Test;

import javax.servlet.http.Cookie;

import static org.assertj.core.api.Assertions.assertThat;

public class CookieServiceImplTest {

  private CookieServiceImpl cookieService = new CookieServiceImpl();

  @Before
  public void before() {
    cookieService.salt = "salt_123456789";
  }

  public void testExtractValue_with_signature() throws Exception {
    Cookie cookie = cookieService.createCookie("TheName", "TheValue", true);
    assertThat(cookie.getValue()).isEqualTo("Signature:75461eb859745e1ee54d3db064fbc640b22a1da5546b31ab223f800a44704dbf###TheValue");
    String value = cookieService.extractValue("TheName", new Cookie[]{cookie});
    assertThat(value).isEqualTo("TheValue");
  }

  public void testExtractValue_without_signature() throws Exception {
    Cookie cookie = cookieService.createCookie("TheName", "TheValue");
    assertThat(cookie.getValue()).isEqualTo("TheValue");
    String value = cookieService.extractValue("TheName", new Cookie[]{cookie});
    assertThat(value).isEqualTo("TheValue");
  }

  @Test
  public void testCreateCookie_without_signature() throws Exception {
    Cookie cookie = cookieService.createCookie("TheName", "TheValue");
    assertThat(cookie.getValue()).isEqualTo("TheValue");
    assertThat(cookie.getName()).isEqualTo("TheName");

  }

  public void testCreateCookie_with_signature() throws Exception {
    Cookie cookie = cookieService.createCookie("TheName", "TheValue", true);
    assertThat(cookie.getValue()).isEqualTo("Signature:75461eb859745e1ee54d3db064fbc640b22a1da5546b31ab223f800a44704dbf###TheValue");
    assertThat(cookie.getName()).isEqualTo("TheName");
  }

  public void testGetCookie() throws Exception {
    Cookie cookie = cookieService.getCookie("COOKIE_OK", new Cookie[]{new Cookie("BAD1", "BAD"), new Cookie("COOKIE_OK", "OK"), new Cookie("BAD2", "BAD")});
    assertThat(cookie.getName()).isEqualTo("COOKIE_OK");
  }
}
