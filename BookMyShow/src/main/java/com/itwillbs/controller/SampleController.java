package com.itwillbs.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Log4j2
@RequestMapping("/sample")
@Controller
@EnableAspectJAutoProxy(proxyTargetClass = true)
public class SampleController {

    @RequestMapping("/all")
    public void doALl() {
        log.info("do all can access everybody");
    }

    @RequestMapping("/member")
    public void doMember() {
        log.info("logined member");
    }

    @RequestMapping("/admin")
    public void doAdmin() {
        log.info("admin only");
    }

}
