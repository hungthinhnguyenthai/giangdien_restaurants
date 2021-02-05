package com.aktv.project.giangdien.data.model;

import com.aktv.project.giangdien.data.UIDBaseEntity;
import com.google.common.collect.Lists;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.apache.commons.collections.CollectionUtils;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Data
@Entity
@EqualsAndHashCode(callSuper = true)
public class Area extends UIDBaseEntity implements Serializable {
    private String name;
    private String map;
    private String miniMap;
    private String color;

    @ManyToOne
    @JoinColumn(name = "businessId", referencedColumnName = "id", nullable = false)
    private Business business;

    @OneToMany(mappedBy = "areaImg", fetch = FetchType.EAGER)
    private List<Gallery> galleries = Lists.newArrayList();

    @OneToMany(mappedBy = "area")
    private List<TableLocation> tables = Lists.newArrayList();

    public Integer getSeats(){
        return CollectionUtils.isNotEmpty(tables) ? tables.size() : 0;
    }
}