package com.aktv.project.giangdien.backoffice.controller;

import com.aktv.project.giangdien.data.model.Employee;
import com.aktv.project.giangdien.data.crypto.type.EncryptedValue;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * BaseController -
 *
 * @author thinhnguyen <hung-thinh.nguyen-thai@fullsix.com>
 */
@Slf4j
public class BaseController implements InitializingBean {

    protected static final String AVAILABLE_LOCALES = "locales";
    protected static final String JSON_AVAILABLE_LOCALES = "jsLocales";
    protected static final String DEFAULT_LOCALE = "defaultLocale";


    @InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(String.class, new StringTrimmerEditor(true));
        binder.registerCustomEditor(EncryptedValue.class, new StringTrimmerEditor(true));

        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yy");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }

    @Override
    public void afterPropertiesSet() throws Exception {

    }

    @ExceptionHandler
    public String handleSQLExceptionAndIOException(Exception e, HttpServletRequest httpServletRequest) {
        // using the slf4j api to pass the throwable, otherwise stacktrace is not logged
        log.error(
                String.format("Uncaught error while processing '%s %s'", httpServletRequest.getMethod(), httpServletRequest.getPathInfo()),
                e
        );
        return "redirect:/controller/error/500";
    }

    protected Employee getCurrentAccount() {
        if (SecurityContextHolder.getContext().getAuthentication() == null) {
            return null;
        }

        if (SecurityContextHolder.getContext().getAuthentication().getPrincipal() instanceof Employee) {
            return (Employee) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        } else {
            throw new RuntimeException("Expect Employee but is " + SecurityContextHolder.getContext().getAuthentication().getPrincipal().getClass());
        }
    }

    protected boolean isLogged() {
        if (SecurityContextHolder.getContext().getAuthentication() == null) {
            return false;
        }
        if (SecurityContextHolder.getContext().getAuthentication().getPrincipal() instanceof Employee) {
            return true;
        } else {
            return false;
        }
    }
}
