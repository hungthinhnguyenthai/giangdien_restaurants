package com.aktv.project.giangdien.backoffice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Locale;

/**
 * ErrorController -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Controller
@RequestMapping("/error")
public class ErrorController {

    @RequestMapping(path = "/404")
    public ModelAndView order(Locale locale){
        return new ModelAndView("404");
    }

    @RequestMapping(path = "/comingsoon")
    public ModelAndView comingsoon(){
        return new ModelAndView("comingsoon");
    }
}
