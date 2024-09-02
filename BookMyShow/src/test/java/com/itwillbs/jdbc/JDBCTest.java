package com.itwillbs.jdbc;

import lombok.extern.log4j.Log4j2;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;


import javax.sql.DataSource;
import java.sql.Connection;

@ExtendWith(SpringExtension.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j2
public class JDBCTest {

    // DataSource 객체를 주입받아서 Connection 객체를 생성하는 코드
    // DataSource 객체는 스프링 컨테이너에 의해 생성되는 객체이다.
    // 스프링 컨테이너는 스프링 프레임워크의 핵심이며, 스프링 애플리케이션의 모든 객체를 생성, 관리한다.

    // oracle DataSource 객체를 리턴
    // DataSource 객체는 데이터베이스와 연결을 위한 Connection 객체를 생성하는 역할을 한다.
    @Autowired
    private DataSource dataSource;

    @Test
    public void testConnection() {
        try (Connection con = dataSource.getConnection()) {
            log.info(con);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


}
