package com.aktv.project.giangdien.backoffice.controller;

import com.aktv.project.giangdien.backoffice.controller.admin.ManagermentController;
import com.aktv.project.giangdien.jpa.repository.BusinessRepository;
import com.google.common.collect.Maps;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Locale;
import java.util.Map;

/**
 * com.aktv.project.giangdien.backoffice.controller.GalleryController
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Controller
@RequestMapping("/administrator/gallery")
public class GalleryController extends ManagermentController {

    @Autowired
    protected BusinessRepository businessRepository;

    @RequestMapping
    public ModelAndView index(Locale locale) {
        Map<String, Object> model = Maps.newHashMap();
        model.put("services", businessRepository.findAll());
        return modelView("admin.gallery", model);
    }

}
