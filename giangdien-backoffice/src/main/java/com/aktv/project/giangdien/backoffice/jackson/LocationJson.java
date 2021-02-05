package com.aktv.project.giangdien.backoffice.jackson;

import lombok.Builder;
import lombok.Data;

/**
 * LocationJson -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Data
@Builder
public class LocationJson {
    private String id;
    private String title;
    private String about;
    private String description;
    private String category;
    private String x;
    private String y;
    private String status;
    private String statusCode;
    private String numberOfSeats;
    private String zoom;
    private String color;
}
