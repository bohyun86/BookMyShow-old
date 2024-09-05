package com.itwillbs.controller;

import lombok.extern.log4j.Log4j2;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.domain.MemberDTO;

@Controller
@Log4j2
@RequestMapping("/admin")
public class AdminController {

    @GetMapping("/main")
    public String home() {
        log.info("admin main success");
        
        

        return "/admin/main";
    }
    
    
    @GetMapping("/search")
    public String search() {
    	log.info("admin search success");
    	return "/admin/search";
    }
    
    
    	
    	
    
    @GetMapping("/submit")
    public String submit() {
    	log.info("admin submit success");
    	return "/admin/submit";
    }
    
    @GetMapping("/edit")
    public String edit() {
    	log.info("admin edit success");
    	return "/admin/edit";
    }
    
    @GetMapping("/editPro")
    public String editPro() {
    	log.info("admin editPro success");
    	return "/admin/editPro";
    }
    
    
    @GetMapping("/partner")
    public String partner() {
    	log.info("admin partner success");
    	return "/admin/partner";
    }
    
    
    
    @GetMapping("/member")
    public String member_search() {
    	log.info("admin member_search success");
    	return "/admin/member";
    }
    
    
    
    
    
    @GetMapping("/support")
    public String support() {
    	log.info("admin support success");
    	return "/admin/support";
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}//
