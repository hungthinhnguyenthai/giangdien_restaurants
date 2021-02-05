package com.aktv.project.giangdien.security.pinpad;

import org.junit.Test;

import static org.assertj.core.api.Assertions.assertThat;

/**
 */
public class PinpadUtilsTest {
  @Test
  public void testConvertPinpadInputToPassword() throws Exception {

    assertThat(PinpadUtils.convertPinpadInputToPassword("066666", "0653182794")).isEqualTo("011111");

  }
}
