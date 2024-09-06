package com.itwillbs.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j2
@RequestMapping("/login")
public class LoginController {

    @GetMapping("")
    public String login() {
        log.info("login success");

        return "/login/login";
    }

    @GetMapping("/logout")
    public void logout() {
        log.info("logout success");
    }
}
