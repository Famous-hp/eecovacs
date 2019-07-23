package com.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class ExitController {

    @RequestMapping("Exit")
    public ModelAndView Exit(ModelAndView mvo, HttpSession session){
        session.removeAttribute("users");
        mvo.setViewName("htlogin");
        return mvo;
    }
}
