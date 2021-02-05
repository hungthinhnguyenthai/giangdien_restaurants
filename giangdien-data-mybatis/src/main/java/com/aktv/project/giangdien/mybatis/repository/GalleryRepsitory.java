package com.aktv.project.giangdien.mybatis.repository;

import com.aktv.project.giangdien.mybatis.mapper.GalleryMapper;
import com.aktv.project.giangdien.data.model.Gallery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 * com.aktv.project.giangdien.data.repository.GalleryRepsitory
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Repository
public class GalleryRepsitory extends AbstractRepository<Gallery, GalleryMapper> {

    @Autowired
    private GalleryMapper galleryMapper;

    @Override
    public GalleryMapper getDataMapper() {
        return galleryMapper;
    }
}
