package com.aktv.project.giangdien.security.cookie.logout;

import org.junit.Test;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;

import javax.servlet.http.Cookie;

import static org.assertj.core.api.Assertions.assertThat;

/**
 */
public class CookieLogoutHandlerTest {

  private CookieLogoutHandler handler = new CookieLogoutHandler();

  @Test
  public void test_handler() {
    MockHttpServletRequest request = new MockHttpServletRequest();
    request.setServerName("secure.dev2.u-post.fr");
    request.setCookies(new Cookie("name1", "value1"), new Cookie("AUTHCOOKIE", "authentication"));
    MockHttpServletResponse response = new MockHttpServletResponse();

    handler.logout(request, response, null);

    assertThat(response.getCookies()).hasSize(2);
    assertThat(response.getCookies()[0].getValue()).isEmpty();
    assertThat(response.getCookies()[0].getMaxAge()).isEqualTo(0);

    assertThat(response.getCookies()[1].getDomain()).isEqualTo(".dev2.u-post.fr");
  }

}
