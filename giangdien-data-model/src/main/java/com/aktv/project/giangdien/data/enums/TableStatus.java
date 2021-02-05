package com.aktv.project.giangdien.data.enums;


/**
 * TableStatus -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public enum TableStatus implements EnumStatusValue<Integer> {
    READY_FOR_SERVE(0, "Ready for serve"),
    BOOKED(1, "Booked"),
    IN_USED(2, "In used"),
    NEED_TO_CLEAR(3, "Need to clear");



    private Integer code;
    private String title;

    TableStatus(int code, String title) {
        this.code = code;
        this.setTitle(title);
    }


    public Integer getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
}
