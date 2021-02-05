package com.aktv.project.giangdien.data.model;

import com.aktv.project.giangdien.data.UIDBaseEntity;
import com.aktv.project.giangdien.data.security.AuthenticatedUser;
import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;
import org.joda.time.DateTime;
import org.joda.time.LocalDate;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;

@Data
@Entity
@ToString(exclude = {"roles"})
@EqualsAndHashCode(callSuper = true)
public class Employee extends UIDBaseEntity implements Serializable, UserDetails {


    public static final String USER_NAME_FIELD_REGEX = "^[-' a-zA-ZÄÂÀÁÃàáâãäåËÊÈÉéèëêÏÎìíîïÖÔÒÓÕòóôõöÜÛÙÚùúûüŸỲÝỳýÿÇçðÑñ]*$";
    public static final int USER_NAME_FIELD_MAX_SIZE = 32;
    public static final String BIRTH_DATE_FORMAT = "dd/MM/yy";

    private String login;
    private String password;
    private String firstName;
    private String lastName;
    private String phoneNumber;
    private Boolean gender;
    private String address;
    private String profilePicture;
    private String identificationNo;
    private String qualification;
    private Integer salary;
    private LocalDate dateJoin;
    private LocalDate dateLeave;

    //Pinpad
    private String passwordEncryption;
    private String pinpadPassword;
    private String pinpadPasswordEncryption;

    //Security
    private boolean accountNonLocked;
    private Short tries;
    private DateTime lastTriedAt;

    @OneToMany(mappedBy = "employee", fetch = FetchType.EAGER)
    private List<EmployeeRole> roles = Lists.newArrayList();



    @Override
    public String getUsername() {
        return getLogin();
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<SimpleGrantedAuthority> result = Lists.newArrayList();
        for(EmployeeRole employeeRole : roles){
            result.add(new SimpleGrantedAuthority("ROLE_".concat(employeeRole.getCode())));
        }
        return result;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    public Employee replacePassword(String encryptedPassword, String usedAlgorithm) {
        this.password = encryptedPassword;
        this.passwordEncryption = usedAlgorithm;
        this.pinpadPassword = encryptedPassword;
        this.pinpadPasswordEncryption = usedAlgorithm;
        return this;
    }

    public UserDetails toUserDetails() {
        return new AuthenticatedUser(
                getId(),
                getUsername(),
                getPinpadPassword(),
                isEnabled(),
                true,
                isAccountNonLocked(),
                true,
                getPinpadPasswordEncryption(),
                AuthorityUtils.commaSeparatedStringToAuthorityList("ROLE_USER")
        );
    }
}