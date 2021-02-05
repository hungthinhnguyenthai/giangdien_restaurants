package com.aktv.project.giangdien.data.enums;

/**
 * OrderStatus -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public enum OrderStatus implements EnumStatusValue<Integer> {

    ORDERING(0),
    WAITING(1),
    SERVING(2),
    PAID(3);

    private Integer code;

    OrderStatus(int code) {
        this.code = code;
    }


    public Integer getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }
}
