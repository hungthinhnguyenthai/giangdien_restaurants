package com.aktv.project.giangdien.security.provider;

import com.aktv.project.giangdien.data.model.Employee;
import com.aktv.project.giangdien.security.password.HashMacPasswordEncoderFactoryBean;
import org.junit.Before;
import org.junit.Test;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.dao.SaltSource;
import org.springframework.security.authentication.encoding.PlaintextPasswordEncoder;
import org.springframework.security.core.userdetails.UserDetails;

import static org.assertj.core.api.Assertions.assertThat;

/**
 * @author Loïc Guerrin <guerrin@fullsix.com>
 */
public class GiangDienDaoAuthenticationProviderTest {

  private GiangDienDaoAuthenticationProvider provider = new GiangDienDaoAuthenticationProvider();


  @Before
  public void init_provider() throws Exception {
    provider.setSaltSource(null); // no salt source atm
  }


  @Test
  public void test_with_correct_password() {
    provider.setPasswordEncoder(new PlaintextPasswordEncoder());

    provider.additionalAuthenticationChecks(user("login", "123456", null).toUserDetails(), new UsernamePasswordAuthenticationToken("login", "123456"));
  }

  @Test(expected = BadCredentialsException.class)
  public void test_with_incorrect_password() {
    provider.setPasswordEncoder(new PlaintextPasswordEncoder());

    provider.additionalAuthenticationChecks(user("login", "123456", null).toUserDetails(), new UsernamePasswordAuthenticationToken("login", "000000"));
  }

  @Test
  public void should_return_false_if_an_exception_is_raised_when_checking_if_user_is_valid() {
    boolean actual = provider.userHasValidCredentials(user("login", "123456", null).toUserDetails(), null);
    assertThat(actual).isEqualTo(false);
  }


  public void should_return_true_when_password_has_valid_credentials_using_same_algorithm() throws Exception {
    // given
    // echo -n "123456salé" | openssl sha1 -hmac "secret"
    String hash_pwd_of_123456 = "35678d51c7793ef371e61feb025f7b7425c9634d";
    Employee user_that_have_a_password = user("login", hash_pwd_of_123456, "SHA-1");
    provider.setSaltSource(saltSource_returning("salé"));
    provider.setPasswordEncoderFactoryBean(passwordEncoderFactory_with_secret("secret"));

    // when
    boolean passwordMatch = provider.userHasValidCredentials(user_that_have_a_password.toUserDetails(), "123456");

    // then
    assertThat(passwordMatch).isTrue();
  }


  public void should_return_encrypt_password_with_parameterized_secret_and_salt() throws Exception {
    // given
    Employee user_that_have_a_password = user("login", "whatever", "SHA-1");
    provider.passwordEncryptionAlgorithm = "SHA-256";
    provider.setSaltSource(saltSource_returning("salé"));
    provider.setPasswordEncoderFactoryBean(passwordEncoderFactory_with_secret("secret"));

    // when
    String encryptedPassword = provider.encryptCredentials(user_that_have_a_password.toUserDetails(), "123456");

    // then
    // echo -n "123456salé" | openssl dgst -sha256 -hmac "secret"
    assertThat(encryptedPassword).isEqualTo("1738b4ea487719794d916b1fbcd8c2fbd6ad6ab5c70ce461f12426da75ed3ae1");
  }


  private SaltSource saltSource_returning(final String salt) {
    return new SaltSource() {
      @Override
      public Object getSalt(UserDetails user) {
        return salt;
      }
    };
  }


  private HashMacPasswordEncoderFactoryBean passwordEncoderFactory_with_secret(String secret) throws Exception {
    HashMacPasswordEncoderFactoryBean hashMacPasswordEncoderFactoryBean = new HashMacPasswordEncoderFactoryBean(secret);
    hashMacPasswordEncoderFactoryBean.afterPropertiesSet();
    return hashMacPasswordEncoderFactoryBean;
  }


  private Employee user(String login, String pinpadPassword, String algo) {
    Employee user = new Employee();
    user.setLogin(login);
    user.replacePassword(pinpadPassword, algo);
    return user;
  }
}
