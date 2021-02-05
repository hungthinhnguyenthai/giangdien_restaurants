package com.aktv.project.giangdien.backoffice.jackson;

import lombok.Builder;
import lombok.Data;

import java.util.List;

/**
 * AreaJson -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Data
@Builder
public class AreaJson {
    private String mapwidth;
    private String mapheight;
    private String isLogged;
    private List<CategoryJson> categories;
    private List<LevelJson> levels;
}
