package com.watchers.controller;

import com.watchers.model.CommonResponse;
import com.watchers.model.Users;
import com.watchers.service.AdminService;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    AdminService adminservice;

    @Autowired
    private SqlSession sql;

    // 관리자 로그인 페이지 지정
    @RequestMapping("/adminUser.do")
    public String login(){
        return "adminLogin";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public CommonResponse login(@ModelAttribute Users user, HttpSession session) {
        session.setAttribute("user", user);
        return adminservice.login(user);//******
    }

    @RequestMapping(value = "/logout")
    public String logout(@ModelAttribute Users user, HttpSession session) {
        String page = "redirect:/";
        session.removeAttribute("user");
        return page;
    }

    @RequestMapping("adminCheck.do")
    public ModelAndView adminCheck(HttpSession session, Users user, ModelAndView mav){

    }
}
