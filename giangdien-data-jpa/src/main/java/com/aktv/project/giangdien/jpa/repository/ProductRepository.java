package com.aktv.project.giangdien.jpa.repository;

import com.aktv.project.giangdien.data.model.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * com.aktv.project.giangdien.data.repository.ProductRepository
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Repository
public interface ProductRepository extends JpaRepository<Product, String> {

}
