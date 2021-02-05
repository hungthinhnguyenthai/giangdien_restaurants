package com.aktv.project.giangdien.data.model;

import com.aktv.project.giangdien.data.UIDBaseEntity;
import lombok.EqualsAndHashCode;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Customer -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Entity
@EqualsAndHashCode(callSuper = true)
public class Customer extends UIDBaseEntity implements Serializable {

}
