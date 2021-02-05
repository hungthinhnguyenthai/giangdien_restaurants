package com.aktv.project.giangdien.data.model;

import com.aktv.project.giangdien.data.UIDBaseEntity;
import com.google.common.collect.Lists;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Data
@Entity
@EqualsAndHashCode(callSuper = true)
public class Business extends UIDBaseEntity implements Serializable {
    private String name;
    private String title;
    private String description;
    private String logo;
    private String url;

    @OneToMany(mappedBy = "business")
    private List<Category> categories = Lists.newArrayList();

    @OneToMany(mappedBy = "business", fetch = FetchType.EAGER)
    private List<Area> areas = Lists.newArrayList();


}