package com.aktv.project.giangdien.security.password;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.runners.MockitoJUnitRunner;

import static org.assertj.core.api.Assertions.assertThat;

@RunWith(MockitoJUnitRunner.class)
public class HashMacPasswordEncoderFactoryBeanTest {
  @InjectMocks
  private HashMacPasswordEncoderFactoryBean factory = new HashMacPasswordEncoderFactoryBean();

  @Before
  public void beforeTest() throws Exception {
    factory.passwordCipher = "cipher";
    factory.afterPropertiesSet();
  }

  @Test
  public void test_get_instance_sha256() throws Exception {
    assertThat(factory.getInstance("SHA-256")).isNotNull();
  }

  @Test
  public void test_get_instance_sha1() throws Exception {
    assertThat(factory.getInstance("SHA-1")).isNotNull();
  }

  @Test(expected = RuntimeException.class)
  public void test_get_instance_incorrect() throws Exception {
    assertThat(factory.getInstance("SHA1")).isNotNull();
  }
}
