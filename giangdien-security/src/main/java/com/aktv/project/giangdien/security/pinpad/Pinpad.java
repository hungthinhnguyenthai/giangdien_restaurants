package com.aktv.project.giangdien.security.pinpad;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.joda.time.DateTime;

/**
 * Pinpad -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@AllArgsConstructor
@Data
public class Pinpad {

    private String input;
    private String password;
    private String sequence;
    private DateTime creationDate;
    private int pinpadTtl;

    public boolean isExpired() {
        return creationDate.plusSeconds(pinpadTtl).isBeforeNow();
    }
}
