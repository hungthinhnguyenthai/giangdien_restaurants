package com.aktv.project.giangdien.backoffice.controller;

import com.aktv.project.giangdien.data.model.TableLocation;
import com.aktv.project.giangdien.jpa.repository.AreaRepository;
import com.aktv.project.giangdien.jpa.repository.CategoryRepository;
import com.aktv.project.giangdien.jpa.repository.BusinessRepository;
import com.aktv.project.giangdien.jpa.repository.TableRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/**
 * CoffeeController -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Controller
@RequestMapping("/order")
public class OrderController extends MainController{

    @Autowired
    protected CategoryRepository categoryRepository;

    @Autowired
    protected BusinessRepository businessRepository;

    @Autowired
    protected AreaRepository areaRepository;

    @Autowired
    protected TableRepository tableRepository;

    private static final String COFFEE_KEY = "COFFEE";


    @RequestMapping(path = "/{tableId}")
    public ModelAndView index(@PathVariable String tableId){
        TableLocation table = tableRepository.findOne(tableId);
        return modelViewWithBaseInfo("coffee.table", "table", table);
    }
}
