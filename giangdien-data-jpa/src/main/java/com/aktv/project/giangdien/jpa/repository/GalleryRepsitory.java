package com.aktv.project.giangdien.jpa.repository;

import com.aktv.project.giangdien.data.model.Gallery;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


/**
 * com.aktv.project.giangdien.data.repository.GalleryRepsitory
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Repository
public interface GalleryRepsitory extends JpaRepository<Gallery, String> {

}
