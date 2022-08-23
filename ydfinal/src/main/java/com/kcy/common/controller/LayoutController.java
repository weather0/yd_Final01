package com.kcy.common.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LayoutController {

    @RequestMapping("/")
    public String dashboard(Model model) {
        model.addAttribute("active","click_studentInfo");
        return "pages/studentInfo";
    }

    @RequestMapping("/tables")
    public String tables(Model model) {
        model.addAttribute("active","click_classInfo");
        return "pages/classInfo";
    }

}
