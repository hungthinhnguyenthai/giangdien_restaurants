package com.aktv.project.giangdien.backoffice.controller;

import com.aktv.project.giangdien.backoffice.jackson.AreaJson;
import com.aktv.project.giangdien.backoffice.jackson.JsonUtils;
import com.aktv.project.giangdien.data.model.Area;
import com.aktv.project.giangdien.data.model.Business;
import com.aktv.project.giangdien.data.model.TableLocation;
import com.aktv.project.giangdien.jpa.repository.AreaRepository;
import com.aktv.project.giangdien.jpa.repository.CategoryRepository;
import com.aktv.project.giangdien.jpa.repository.BusinessRepository;
import com.aktv.project.giangdien.jpa.repository.TableRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/**
 * CoffeeController -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Controller
@RequestMapping("/coffee")
public class CoffeeController extends MainController{

    @Autowired
    protected CategoryRepository categoryRepository;

    @Autowired
    protected BusinessRepository businessRepository;

    @Autowired
    protected AreaRepository areaRepository;

    @Autowired
    protected TableRepository tableRepository;

    private static final String COFFEE_KEY = "COFFEE";

    @RequestMapping
    public ModelAndView index(Locale locale) {
        Business business = businessRepository.findByName(COFFEE_KEY);
        return modelViewWithBaseInfo("coffee.index", "categoriesMenu", categoryRepository.findByBusinessId(business.getId()));
    }

    @RequestMapping(path = "/area")
    public ModelAndView order(Locale locale){
        Business business = businessRepository.findByName(COFFEE_KEY);
        List<Area> areas = areaRepository.findByBusiness(business.getId());
        return modelViewWithBaseInfo("coffee.order", "areas", areas);
    }

    @RequestMapping(path = "/table/{tableId}")
    public ModelAndView table(@PathVariable String tableId){
        TableLocation table = tableRepository.findOne(tableId);
        Map<String, Object> properties = new HashMap<>(2);
        properties.put("table", table);
        properties.put("logged", isLogged());
        return modelViewWithBaseInfo("coffee.table", properties);
    }

    @RequestMapping(value = "/areaJson", produces = "application/json")
    @ResponseBody
    public AreaJson area() {
        Business business = businessRepository.findByName(COFFEE_KEY);
        List<Area> areas = areaRepository.findByBusiness(business.getId());
        return JsonUtils.convertAreaToJson(areas, false);
    }
}
