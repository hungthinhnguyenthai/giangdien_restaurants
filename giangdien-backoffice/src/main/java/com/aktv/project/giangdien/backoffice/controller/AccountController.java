package com.aktv.project.giangdien.backoffice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Locale;

/**
 * AccountController -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Controller
@RequestMapping("/account")
public class AccountController extends BaseController{

    @RequestMapping(path = "login")
    public ModelAndView index() {
        return isLogged() ? new ModelAndView("redirect:/controller/home") : new ModelAndView("account.login");
    }


    @RequestMapping("myshoppingcart")
    public ModelAndView myShoppingCart() {
        return new ModelAndView("account.shoppingCart");
    }
}
