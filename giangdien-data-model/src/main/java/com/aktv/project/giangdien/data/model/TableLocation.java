package com.aktv.project.giangdien.data.model;

import com.aktv.project.giangdien.data.enums.TableStatus;
import com.aktv.project.giangdien.data.UIDBaseEntity;
import com.google.common.collect.Lists;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

/**
 * TableLocation -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Data
@Entity
@EqualsAndHashCode(callSuper = true)
public class TableLocation extends UIDBaseEntity implements Serializable {

    private String name;
    private Integer numberOfSeats;
    private TableStatus status;
    private String picture;
    private Double posX;
    private Double posY;
    private Integer zoom;

    @ManyToOne
    @JoinColumn(name = "areaId", referencedColumnName = "id")
    private Area area;

    @OneToMany(mappedBy = "table")
    private List<Gallery> galleries = Lists.newArrayList();
}
