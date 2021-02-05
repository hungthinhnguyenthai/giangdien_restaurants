package com.aktv.project.giangdien.backoffice.controller;

import com.aktv.project.giangdien.jpa.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * com.aktv.project.giangdien.backoffice.controller.ProductController
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */

@Controller
@RequestMapping("/product")
public class ProductController extends MainController{

    @Autowired
    protected ProductRepository productRepository;

    @RequestMapping(path = "/{productId}")
    public ModelAndView index(@PathVariable String productId){
        return modelViewWithBaseInfo("product.index", "product", productRepository.findOne(productId));
    }

}
