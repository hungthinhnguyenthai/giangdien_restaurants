package com.aktv.project.giangdien.backoffice.jackson;

import com.aktv.project.giangdien.data.model.Area;
import com.google.common.collect.Lists;

import java.util.List;

/**
 * JsonUtils -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class JsonUtils {

    private static final int MAP_WIDTH = 800;
    private static final int MAP_HEIGHT = 600;
    /*private static final int HEIGHT_PER_AREA = 54;*/

    public static AreaJson convertAreaToJson(List<Area> areas, boolean isLogged){
//        int total = areas.size();
        List<CategoryJson> categoryJsons = Lists.newArrayList();
        List<LevelJson> levelJsons = Lists.newArrayList();
//        for (Area area :areas) {
//            total += area.getTables().size();
//        }
//        for(Area area: areas) {
//            categoryJsons.add(CategoryJson.builder().id(area.getId()).show("false").title(area.getName()).color(area.getColor()).build());
//            levelJsons.add(LevelJson.builder()
//                    .id(area.getId())
//                    .title(area.getName())
//                    .map(area.getMap())
//                    .minimap(area.getMinimap())
//                    .locations(Lists.newArrayList(area.getTables().stream().map(table -> LocationJson.builder()
//                            .id(table.getId())
//                            .title(table.getName())
//                            .category(area.getId())
//                            .numberOfSeats(table.getNumberOfSeats() != null ? table.getNumberOfSeats().toString() : null)
//                            .status(table.getStatus() != null ? table.getStatus().getTitle() : null)
//                            .statusCode(table.getStatus() != null ? table.getStatus().getCode().toString() : null)
//                            .x(table.getPosX().toString())
//                            .y(table.getPosY().toString())
//                            .zoom(table.getZoom() != null ? table.getZoom().toString() : null)
//                            .color(area.getColor())
//                            .build()).collect(Collectors.toList())))
//                    .build());
//        };

        return AreaJson.builder()
                .isLogged(String.valueOf(isLogged))
                .mapwidth(String.valueOf(MAP_WIDTH)).mapheight(String.valueOf(/*!areas.isEmpty() ? HEIGHT_PER_AREA * total : */MAP_HEIGHT))
                .categories(categoryJsons)
                .levels(levelJsons).build();
    }
}
