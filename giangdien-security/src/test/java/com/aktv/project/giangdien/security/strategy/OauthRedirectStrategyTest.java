package com.aktv.project.giangdien.security.strategy;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static org.mockito.BDDMockito.given;
import static org.mockito.Matchers.eq;
import static org.mockito.Mockito.verify;

/**
 * @author Loïc Guerrin <guerrin@fullsix.com>
 */
@RunWith(MockitoJUnitRunner.class)
public class OauthRedirectStrategyTest {

  @InjectMocks
  private OauthRedirectStrategy redirectStrategy;

  @Mock
  private HttpServletRequest request;
  @Mock
  private HttpServletResponse response;


  @Test
  public void testSendRedirect_without_lastbutone() throws Exception {
    redirectStrategy.sendRedirect(request, response, "/login.jsp?error=1");
    verify(response).sendRedirect(eq("/login.jsp?error=1"));
  }

  @Test
  public void testSendRedirect_with_lastbutone() throws Exception {
    given(request.getAttribute("lastButOneTry")).willReturn(true);
    redirectStrategy.sendRedirect(request, response, "/login.jsp?error=1");
    verify(response).sendRedirect(eq("/login.jsp?error=1&w=1"));
  }
}
