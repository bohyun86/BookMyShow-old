package com.itwillbs.controller;


import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

@ExtendWith(SpringExtension.class)
@Log4j2
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@WebAppConfiguration
@RequiredArgsConstructor
public class UserControllerTests {

    private final WebApplicationContext ctx;

    private MockMvc mockMvc;

    @BeforeEach
    public void setup() {
        this.mockMvc = MockMvcBuilders.webAppContextSetup(ctx).build();
    }

    @Test
    public void testExist() {
        log.info(ctx);
    }

    @Test
    public void testInsertUser() throws Exception {
        String resultPage = mockMvc.perform(
                MockMvcRequestBuilders.post("/user/joinPro")
                        .param("userId", "0")
                        .param("password", "test")
                        .param("email", "test")
                        .param("name", "test")
                        .param("userRole", "member")
                        .param("phoneNumber", "test"))
                .andReturn().getModelAndView().getViewName();

        log.info(resultPage);
    }


}
