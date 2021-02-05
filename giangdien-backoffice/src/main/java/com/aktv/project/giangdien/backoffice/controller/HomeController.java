package com.aktv.project.giangdien.backoffice.controller;

import com.aktv.project.giangdien.jpa.repository.BusinessRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * HomeController -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Controller
@RequestMapping("/home")
public class HomeController extends MainController{

    @Autowired
    protected BusinessRepository businessRepository;

    @RequestMapping
    public ModelAndView index() {
        return modelViewWithBaseInfo("home.index", "services", businessRepository.findAll());
    }

    @RequestMapping(path = "/privacy")
    public ModelAndView privacy() {
        return modelViewWithBaseInfo("home.privacy");
    }

    @RequestMapping(path = "/aboutus")
    public ModelAndView aboutus(){
        return modelViewWithBaseInfo("home.aboutus");
    }
}
