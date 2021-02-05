package com.aktv.project.giangdien.security.filter;

import com.aktv.project.giangdien.security.pinpad.Pinpad;
import com.aktv.project.giangdien.security.pinpad.PinpadHelper;
import org.joda.time.DateTime;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.ArgumentCaptor;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.mock.web.MockHttpServletRequest;
import org.springframework.mock.web.MockHttpServletResponse;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.CredentialsExpiredException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;

import javax.servlet.http.Cookie;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Matchers.any;
import static org.mockito.Matchers.anyString;
import static org.mockito.Mockito.*;

@RunWith(MockitoJUnitRunner.class)
public class PinpadAuthenticationFilterTest {

  @InjectMocks
  private PinpadAuthenticationFilter filter = new PinpadAuthenticationFilter();

  @Mock
  private PinpadHelper pinpadHelper;
  @Mock
  private AuthenticationManager authenticationManager;

  @Test(expected = NullPointerException.class)
  public void attempt_authentication_but_cookie_missing() throws Exception {
    MockHttpServletRequest request = new MockHttpServletRequest();
    MockHttpServletResponse response = new MockHttpServletResponse();

    filter.attemptAuthentication(request, response);
  }


  @Test(expected = CredentialsExpiredException.class)
  public void attempt_authentication_but_expired() throws Exception {
    will_return_expired_pinpad();

    MockHttpServletRequest request = new MockHttpServletRequest();
    MockHttpServletResponse response = new MockHttpServletResponse();

    request.setCookies(new Cookie("PINPAD_SESSION_ID", "g3Z0VbjGPZDWKNiPlMB+OdQbN4t7FQA0d6RL/8T2Gl3dacmPkFK36zsfLQzK+6DXYqoquU2e+sF4Jkdf1ZU9Jg=="));

    filter.attemptAuthentication(request, response);


    verify(authenticationManager, never()).authenticate(any(Authentication.class));
  }

  @Test
  public void attempt_authentication_ok() throws Exception {
    will_return_correct_pinpad();

    MockHttpServletRequest request = new MockHttpServletRequest();
    MockHttpServletResponse response = new MockHttpServletResponse();

    request.addParameter("username", "login");
    request.setCookies(new Cookie("PINPAD_SESSION_ID", "g3Z0VbjGPZDWKNiPlMB+OdQbN4t7FQA0d6RL/8T2Gl3dacmPkFK36zsfLQzK+6DXYqoquU2e+sF4Jkdf1ZU9Jg=="));

    filter.attemptAuthentication(request, response);


    ArgumentCaptor<UsernamePasswordAuthenticationToken> authenticationCaptor = ArgumentCaptor.forClass(UsernamePasswordAuthenticationToken.class);

    verify(authenticationManager, only()).authenticate(authenticationCaptor.capture());

    assertThat(authenticationCaptor.getValue().getPrincipal()).isEqualTo("login");
    assertThat(authenticationCaptor.getValue().getCredentials()).isEqualTo("123456");
  }

  private void will_return_expired_pinpad() {
    when(pinpadHelper.decryptInput(anyString(), anyString())).thenReturn(new Pinpad("789456", "123456", "cqd54cq5d4q65cdqscd46q4c5dq56c45q", DateTime.now().minusDays(1), 3000));
  }

  private void will_return_correct_pinpad() {
    when(pinpadHelper.decryptInput(anyString(), anyString())).thenReturn(new Pinpad("789456", "123456", "cqd54cq5d4q65cdqscd46q4c5dq56c45q", DateTime.now(), 3000));
  }
}
