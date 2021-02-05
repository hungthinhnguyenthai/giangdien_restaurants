package com.aktv.project.giangdien.security.cookie.context;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;

/**
 * SimpleSecurityContext -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class SimpleSecurityContext implements SecurityContext {

    private Authentication authentication;

    public SimpleSecurityContext(UserDetails userDetails) {
        this.authentication = new AuthenticationImpl(userDetails);
    }

    @Override
    public Authentication getAuthentication() {
        return authentication;
    }

    @Override
    public void setAuthentication(Authentication authentication) {
        if (authentication == null) {
            // this provides support for "logout" as logging a user can be implemented as setting the Authentication to null in the current SecurityContext
            this.authentication = null;
        } else {
            throw new IllegalArgumentException("A new authentication should not be set in the code path");
        }
    }

    private static class AuthenticationImpl implements Authentication {
        private static final long serialVersionUID = 1L;
        private final UserDetails userDetails;

        public AuthenticationImpl(UserDetails userDetails) {
            this.userDetails = userDetails;
        }

        @Override
        public String getName() {
            return userDetails.getUsername();
        }

        @Override
        public Collection<? extends GrantedAuthority> getAuthorities() {
            return userDetails.getAuthorities();
        }

        @Override
        public Object getCredentials() {
            return userDetails.getPassword();
        }

        @Override
        public Object getDetails() {
            return userDetails;
        }

        @Override
        public Object getPrincipal() {
            return userDetails;
        }

        @Override
        public boolean isAuthenticated() {
            return true;
        }

        @Override
        public void setAuthenticated(boolean isAuthenticated) {
            throw new UnsupportedOperationException("Should not be invoked from any code downstream");
        }
    }
}
