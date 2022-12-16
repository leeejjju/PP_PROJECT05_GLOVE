package com.example;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

@Controller
public class HomeController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Locale locale, Model model){
        Date date = new Date();
        DateFormat dateFormat =
                DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
        String formattedDate = dateFormat.format(date);
        model.addAttribute("serverTime", formattedDate);
        return "home";
    }

    @RequestMapping(value = "/login")
    public String login(Model model){
        return "login";
    }

    @RequestMapping(value = "/login/check")
    public String login_check(Model model){
        return "login_check";
    }

    @RequestMapping(value = "/user")
    public String userMain(){
        return "main";
    }

    @RequestMapping(value = "/file")
    public String file(Model model){
        return "file";
    }

    @RequestMapping(value = "/upload")
    public String fileupload(Model model){
        return "fileupload";
    }




}
