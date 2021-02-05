package com.aktv.project.giangdien.security.password;

import org.junit.Test;

import static org.assertj.core.api.Assertions.assertThat;


public class Sha1PasswordEncoderTest {

  private Sha1PasswordEncoder sha1PasswordEncoder = new Sha1PasswordEncoder();

//  #TODO Re-check
  public void testEncode() throws Exception {
    assertThat(sha1PasswordEncoder.encode("test")).isEqualTo("a94a8fe5ccb19ba61c4c0873d391e987982fbbd3");
  }

  //#TODO Re-check
  public void testMatches() throws Exception {
    sha1PasswordEncoder.matches("test", "a94a8fe5ccb19ba61c4c0873d391e987982fbbd3");
  }
}
