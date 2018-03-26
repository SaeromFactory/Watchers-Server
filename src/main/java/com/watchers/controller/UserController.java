package com.watchers.controller;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.watchers.model.CommonResponse;
import com.watchers.model.Users;
import com.watchers.service.UserService;

@RequestMapping("users")
@RestController
public class UserController {
    @Autowired private UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public CommonResponse login(@ModelAttribute Users user) {
        return userService.login(user);
    }
    
    @RequestMapping(value="/add", method = RequestMethod.GET)
    public String addUser(Map<String,Object> user) {
    		userService.addUser(user);
    		return "성공";
    }
    @RequestMapping(value="/test", method = RequestMethod.GET)
    public String test(Map<String,Object> user) {
    		if(user.get("id").equals("현지")) {
    			return "성공";
    		}
    		return "실패";
    }
}
