package com.itwillbs.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j2
@RequestMapping("/main/*")
public class MainController {

    @GetMapping("/main")
    public void home() {
        log.info("main success");
    }


}
