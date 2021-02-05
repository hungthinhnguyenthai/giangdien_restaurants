package com.aktv.project.giangdien.backoffice.controller.admin;


import com.aktv.project.giangdien.jpa.repository.EventRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/administrator/event")
public class EventManagerController extends ManagermentController {

    @Autowired
    private EventRepository eventRepository;
}
