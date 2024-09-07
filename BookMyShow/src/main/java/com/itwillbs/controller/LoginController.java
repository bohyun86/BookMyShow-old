package com.itwillbs.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j2
@RequestMapping("/login/*")
@EnableAspectJAutoProxy(proxyTargetClass = true)
public class LoginController {

    @GetMapping("")
    public String login() {
        return "/login/login";
    }

    @GetMapping("/join")
    public void join() {
    }

    @GetMapping("/newUser")
    public void newUser() {
    }

    @PostMapping("/newUserPro")
    public void newUserPro() {

    }

    @GetMapping("/logout")
    public void logout() {
        log.info("logout success");
    }


}
