package com.aktv.project.giangdien.backoffice.controller.admin;

import com.aktv.project.giangdien.backoffice.model.BasicInfo;
import com.aktv.project.giangdien.backoffice.util.ConfigDataMapper;
import com.aktv.project.giangdien.jpa.repository.InternationalizationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * com.aktv.project.giangdien.backoffice.controller.StoreSettings
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Controller
@RequestMapping("/administrator/settings")
public class StoreSettingsController extends ManagermentController {

    @Autowired
    protected InternationalizationRepository internationalizationRepository;

    @RequestMapping
    public ModelAndView storeSettings() {
        return modelView("admin.storeSettings", "model", ConfigDataMapper.converBackInternationalzationToInfo(internationalizationRepository.findByGroupType(ConfigDataMapper.BASE_INFO_GROUP)));
    }

    @RequestMapping(path = "/updateBasic", method = RequestMethod.POST)
    public ModelAndView updateBasicInfo(@ModelAttribute BasicInfo infoForm, BindingResult result) {
        internationalizationRepository.save(ConfigDataMapper.convertBasicInfo2Entities(infoForm));
        return modelView("admin.storeSettings", "model", ConfigDataMapper.converBackInternationalzationToInfo(internationalizationRepository.findByGroupType(ConfigDataMapper.BASE_INFO_GROUP)));
    }


}
