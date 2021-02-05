package com.aktv.project.giangdien.backoffice.controller.admin;

import com.aktv.project.giangdien.backoffice.controller.BaseController;
import com.google.common.collect.Maps;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * com.aktv.project.giangdien.backoffice.controller.admin.ManagermentController
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
public class ManagermentController extends BaseController {

    public static final String USER_INFO_KEY = "user";

    public ModelAndView modelView(String viewName) {
        Map<String, Object> model = Maps.newHashMap();
        if(!isLogged()) {
            return new ModelAndView("admin.login");
        }
        model.put(USER_INFO_KEY, getCurrentAccount());
        return new ModelAndView(viewName, model);
    }


    public ModelAndView modelView(String viewName, String modelName, Object modelObj) {
        Map<String, Object> model = Maps.newHashMap();
        if(!isLogged()) {
            return new ModelAndView("admin.login");
        }
        model.put(USER_INFO_KEY, getCurrentAccount());
        model.put(modelName, modelObj);
        return modelView(viewName, model);
    }

    public ModelAndView modelView(String viewName, Map<String, Object> modelObjects) {
        Map<String, Object> model = Maps.newHashMap();
        model.putAll(modelObjects);
        if(!isLogged()) {
            return new ModelAndView("admin.login");
        }
        model.put(USER_INFO_KEY, getCurrentAccount());
        return new ModelAndView(viewName, model);
    }
}
