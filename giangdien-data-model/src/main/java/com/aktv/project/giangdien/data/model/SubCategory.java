package com.aktv.project.giangdien.data.model;

import com.aktv.project.giangdien.data.UIDBaseEntity;
import com.google.common.collect.Lists;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.apache.commons.lang3.RandomUtils;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;

@Data
@Entity
@EqualsAndHashCode(callSuper = true)
public class SubCategory  extends UIDBaseEntity implements Serializable {
    private String name;

    @ManyToOne
    @JoinColumn(name = "categoryId", referencedColumnName = "id", nullable = false, insertable = true, updatable = true)
    private Category category;

    @OneToMany(mappedBy = "subCategory")
    private List<Product> products = Lists.newArrayList();

    @OneToMany(mappedBy = "subCategory")
    private List<Gallery> galleries = Lists.newArrayList();

    public String getRandomlyGallery(){
        int index = RandomUtils.nextInt(0, this.galleries.size() - 1);
        return this.galleries.get(index).getImageUrl();
    }
}