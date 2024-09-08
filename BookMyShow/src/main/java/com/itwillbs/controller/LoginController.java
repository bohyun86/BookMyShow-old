package com.itwillbs.controller;

import com.itwillbs.domain.UserDTO;
import com.itwillbs.service.UserServiceImpl;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@Log4j2
@RequestMapping("/login/*")
@EnableAspectJAutoProxy(proxyTargetClass = true)
@AllArgsConstructor
public class LoginController {

    private UserServiceImpl userServiceImpl;

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

    @GetMapping("/checkUserId")
    @ResponseBody
    public ResponseEntity<Map<String, Boolean>> getUser(@RequestParam String userName) {
        log.info("getUser");

        UserDTO userDTO = new UserDTO();
        userDTO.setUserName(userName);

        Boolean result = userServiceImpl.checkId(userDTO) != null;
        Map<String, Boolean> resultMap = Map.of("result", result);  // JSON 형식으로 변환될 Map 반환
        return ResponseEntity.ok(resultMap);
    }

    @GetMapping("/checkUserEmail")
    @ResponseBody
    public ResponseEntity<Map<String, Boolean>> checkUserEmail(@RequestParam String userEmail) {
        log.info("checkUserEmail");

        UserDTO userDTO = new UserDTO();
        userDTO.setEmail(userEmail);

        Boolean result = userServiceImpl.checkEmail(userDTO) != null;
        Map<String, Boolean> resultMap = Map.of("result", result);  // JSON 형식으로 변환될 Map 반환
        return ResponseEntity.ok(resultMap);
    }

    @GetMapping("/logout")
    public void logout() {
        log.info("logout success");
    }


}
