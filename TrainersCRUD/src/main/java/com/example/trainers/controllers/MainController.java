package com.example.trainers.controllers;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController implements ErrorController {

    @GetMapping("/")//gia na deixw thn index.jsp
    public String showIndex(ModelMap mm) {
        return ("index");
    }
}
