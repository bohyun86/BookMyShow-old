package com.itwillbs.controller;

import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Log4j2
@RequestMapping("/support/*")
public class SupportController {

    @GetMapping("/faq")
    public String faq() {
        log.info("faq success");

        return "/support/frequentQuestion";
    }

    @GetMapping("/notice/")
    public String notice() {
        log.info("notice success");

        return "/notice/notice";
    }
}
