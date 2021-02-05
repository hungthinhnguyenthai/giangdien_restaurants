package com.aktv.project.giangdien.security.password;

import org.junit.Test;

import static org.assertj.core.api.Assertions.assertThat;

/**
 * @author Loïc Guerrin <guerrin@fullsix.com>
 */
public class HashMacPasswordEncoderTest {

  @Test
  public void testEncodePassword() throws Exception {
    HashMacPasswordEncoder sha1Encoder = new HashMacPasswordEncoder("HmacSHA1", "1Df(%@78d5gBQz56-S5SSjS$");
    assertThat(sha1Encoder.encodePassword("010180", "loic")).isEqualTo("c0222b9ebf43d05fb0621169019a0c44d5b75ad3");
  }


  @Test
  public void testIsPasswordValid() throws Exception {
    HashMacPasswordEncoder sha1Encoder = new HashMacPasswordEncoder("HmacSHA1", "1Df(%@78d5gBQz56-S5SSjS$");
    assertThat(sha1Encoder.isPasswordValid("c0222b9ebf43d05fb0621169019a0c44d5b75ad3", "010180", "loic")).isTrue();
  }
}
