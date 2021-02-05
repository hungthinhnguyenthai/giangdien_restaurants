package com.aktv.project.giangdien.jpa.repository;

import com.aktv.project.giangdien.data.model.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * CategoryRepository -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Repository
public interface CategoryRepository extends JpaRepository<Category, String> {

    List<Category> findByBusinessId(String id);
}
