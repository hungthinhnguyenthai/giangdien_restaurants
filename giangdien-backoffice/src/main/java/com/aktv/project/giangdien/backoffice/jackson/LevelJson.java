package com.aktv.project.giangdien.backoffice.jackson;

import lombok.Builder;
import lombok.Data;

import java.util.List;

/**
 * LevelJson -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Data
@Builder
public class LevelJson {
    private String id;
    private String title;
    private String map;
    private String minimap;
    private String show;
    private List<LocationJson> locations;
}
