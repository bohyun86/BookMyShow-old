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
    //검색을 누르면 밑에 정보가 떠야함 리스트중  선택해야 파트너 수정페이지는 페이지결과 쉽게 보려고 임시로 경로설정
    //자바스크립트 써야할듯
    
    @GetMapping("/partnerPro")
    public String partnerPro() {
    	log.info("admin partnerPro success");
    	return "/admin/partnerPro";
    }
    
    @GetMapping("/partner_qna")
    public String partner_qna() {
    	log.info("admin partner_qna success");
    	return "/admin/partner_qna";
    }
    
    
    
    @GetMapping("/member")
    public String member() {
    	log.info("admin member success");
    	return "/admin/member";
    }
    
 //검색을 누르면 밑에 정보가 뜨고 리스트중 회원을 선택해야 회원 수정페이지는 페이지결과 쉽게 보려고 임시로 경로설정
  //자바스크립트 써야할듯
    
    @GetMapping("/memberPro")
    public String memberPro() {
    	log.info("admin memberPro success");
    	return "/admin/memberPro";
    }
    
    
    
    
    
    
    @GetMapping("/support")
    public String support() {
    	log.info("admin support success");
    	return "/admin/support";
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}//
