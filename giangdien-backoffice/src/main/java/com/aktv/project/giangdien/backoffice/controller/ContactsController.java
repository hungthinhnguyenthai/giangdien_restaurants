package com.aktv.project.giangdien.backoffice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


/**
 * Created by thinhnguyen on 11/29/16.
 */
@Controller
@RequestMapping("/contacts")
public class ContactsController extends MainController{

    @RequestMapping
    public ModelAndView index() {
        return modelViewWithBaseInfo("contacts.index");
    }
}
