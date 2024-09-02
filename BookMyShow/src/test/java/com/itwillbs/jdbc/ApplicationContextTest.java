package com.itwillbs.jdbc;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j2
@RequiredArgsConstructor
public class ApplicationContextTest {

    private final ApplicationContext ctx;

    // ApplicationContext 객체가 제대로 생성되었는지 확인
    // ApplicationContext 객체는 스프링 컨테이너의 루트 객체이다.
    // 스프링 컨테이너는 스프링 프레임워크의 핵심이며, 스프링 애플리케이션의 모든 객체를 생성, 관리한다.

    @Test
    public void testExist() {
        log.info(ctx);
    }

}
