package com.aktv.project.giangdien.data.security;

import com.aktv.project.giangdien.data.model.Employee;
import com.google.common.base.Optional;
import com.google.common.collect.Ordering;
import com.google.common.math.IntMath;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * UserSecurityService -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class UserSecurityService {

    private static final int DAY_IN_MINUTE = 24 * 60;

//    @Autowired
//    private EmployeeRepository employeeRepository;

/*    @Setter
    @Value("${security.front.max_login_try}")
    private short loginMaxTry;

    @Setter
    @Value("${security.front.locked_time}")
    private short lockedTime;*/

/*    @RG.RGs({
            @RG(RGConstants.RGVERR02),
            @RG(RGConstants.RGVERR05),
            @RG(RGConstants.RGVERR07),
            @RG(RGConstants.RGVERR08),
            @RG(RGConstants.RGVERR09)
    })*/
    public void updateLockStatus(Employee user) {
        int tries = Optional.fromNullable(user.getTries()).or((short) 0);
        if (tries < 3) {
            user.setAccountNonLocked(true);
        } else {
            user.setAccountNonLocked(isUserStillLocked(user));
        }
    }

    private boolean isUserStillLocked(Employee user) {
        int delta = user.getTries() - 3;
        int minutes = 10 * IntMath.pow(2, delta);
        minutes = Ordering.natural().min(DAY_IN_MINUTE, minutes);
        return user.getLastTriedAt().plusMinutes(minutes).isBeforeNow();
    }

    public boolean nextTryIsTheLast(String login) {
        Employee user = null;/*employeeRepository.selectByUserName(login);*/
        return user != null && (user.getTries() + 1) == 3;
    }

    public boolean isAccountNowLocked(String login) {
        return true;/*isAccountNowLocked(employeeRepository.selectByUserName(login));*/
    }

    public boolean isAccountNowLocked(Employee user) {
        return user != null && user.getTries() != null && user.getTries() >= 3;
    }
}
