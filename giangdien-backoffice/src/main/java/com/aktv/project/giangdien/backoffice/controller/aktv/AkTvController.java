package com.aktv.project.giangdien.backoffice.controller.aktv;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by thinhnguyen on 12/3/16.
 *
 * Todo: Move to the single module
 */

@Controller
@RequestMapping("/aktv")
public class AkTvController {


    @RequestMapping
    public ModelAndView index() {
        return new ModelAndView("aktv.index");
    }

    @RequestMapping(path = "/aboutus")
    public ModelAndView aboutus() {
        return new ModelAndView("aktv.aboutUs");
    }

}
