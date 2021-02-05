package com.aktv.project.giangdien.backoffice.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * com.aktv.project.giangdien.backoffice.controller.admin.AdminController
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Controller
@RequestMapping("/administrator")
public class AdminController extends ManagermentController {

    @RequestMapping
    public ModelAndView index() {
        return modelView("admin.index");
    }

    @RequestMapping(path = "/login")
    public ModelAndView administratorLogin() {
        return isLogged() ? new ModelAndView("redirect:/controller/administrator") : new ModelAndView("admin.login");
    }

    @RequestMapping(path = "/profile")
    public ModelAndView profile(){
        return modelView("admin.profile");
    }

    @RequestMapping(path = "/invoice")
    public ModelAndView invoice(){
        return modelView("admin.invoice");
    }

    @RequestMapping(path = "/products")
    public ModelAndView products(){
        return modelView("admin.products");
    }

    @RequestMapping(path = "/orders")
    public ModelAndView orders() {
        return modelView("admin.orders");
    }

    @RequestMapping(path = "/customers")
    public ModelAndView customers() {
        return modelView("admin.customers");
    }

    @RequestMapping(path = "/messages")
    public ModelAndView messages() {
        return modelView("admin.messages");
    }
}
