package com.aktv.project.giangdien.data.security;

import com.google.common.base.Function;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.io.Serializable;
import java.util.Collection;

/**
 * AuthenticatedUser -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class AuthenticatedUser implements UserDetails, Serializable {

    public static final Function<AuthenticatedUser, String> TO_USER_ID = new Function<AuthenticatedUser, String>() {
        @Override
        public String apply(AuthenticatedUser authenticatedUser) {
            return authenticatedUser.getId();
        }
    };

    private static final long serialVersionUID = 1L;
    private String id;
    private String username;
    private transient String password;
    private boolean enabled;
    private boolean accountNonExpired;
    private boolean accountNonLocked;
    private boolean credentialsNonExpired;
    private String passwordEncryption;
    private Collection<? extends GrantedAuthority> authorities;
}
