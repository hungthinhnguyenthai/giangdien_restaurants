package com.aktv.project.giangdien.backoffice.jackson;

import lombok.Builder;
import lombok.Data;

/**
 * CategoresJson -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Data
@Builder
public class CategoryJson {
    private String id;
    private String title;
    private String color;
    private String show;
}
