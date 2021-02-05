package com.aktv.project.giangdien.data.model;

import com.aktv.project.giangdien.data.UIDBaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import java.io.Serializable;

/**
 * ProductDetails -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Data
@Entity
@EqualsAndHashCode(callSuper = true)
public class Gallery extends UIDBaseEntity implements Serializable {

    private String name;
    private String imageUrl;

    @ManyToOne
    @JoinColumn(name = "areaId", referencedColumnName = "id", nullable = false)
    private Area areaImg;

    @ManyToOne
    @JoinColumn(name = "tableId", referencedColumnName = "id", nullable = false)
    private TableLocation table;

    @ManyToOne
    @JoinColumn(name = "productId", referencedColumnName = "id", nullable = false)
    private Product productImg;

    @ManyToOne
    @JoinColumn(name = "subCategoryId", referencedColumnName = "id", nullable = false)
    private SubCategory subCategory;
}
