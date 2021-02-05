package com.aktv.project.giangdien.backoffice.controller;

import com.aktv.project.giangdien.backoffice.util.ConfigDataMapper;
import com.aktv.project.giangdien.jpa.repository.InternationalizationRepository;
import com.google.common.collect.Maps;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * com.aktv.project.giangdien.backoffice.controller.MainController
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class MainController extends BaseController {

    @Autowired
    protected InternationalizationRepository internationalizationRepository;

    public static final String BASE_INFO_KEY = "baseInfo";

    public ModelAndView modelViewWithBaseInfo(String viewName) {
        Map<String, Object> model = Maps.newHashMap();
        model.put(BASE_INFO_KEY, ConfigDataMapper.converBackInternationalzationToInfo(internationalizationRepository.findByGroupType(ConfigDataMapper.BASE_INFO_GROUP)));
        return new ModelAndView(viewName, model);
    }


    public ModelAndView modelViewWithBaseInfo(String viewName, String modelName, Object modelObj) {
        Map<String, Object> model = Maps.newHashMap();
        model.put(BASE_INFO_KEY, ConfigDataMapper.converBackInternationalzationToInfo(internationalizationRepository.findByGroupType(ConfigDataMapper.BASE_INFO_GROUP)));
        model.put(modelName, modelObj);
        return modelViewWithBaseInfo(viewName, model);
    }

    public ModelAndView modelViewWithBaseInfo(String viewName, Map<String, Object> modelObjects) {
        Map<String, Object> model = Maps.newHashMap();
        model.putAll(modelObjects);
        model.put(BASE_INFO_KEY, ConfigDataMapper.converBackInternationalzationToInfo(internationalizationRepository.findByGroupType(ConfigDataMapper.BASE_INFO_GROUP)));
        return new ModelAndView(viewName, model);
    }
}
