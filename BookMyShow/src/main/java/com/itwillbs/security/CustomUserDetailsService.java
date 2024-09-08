package com.itwillbs.security;

import com.itwillbs.domain.UserDTO;
import com.itwillbs.service.UserServiceImpl;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class CustomUserDetailsService implements UserDetailsService {

    private final UserServiceImpl userServiceImpl;

    public CustomUserDetailsService(UserServiceImpl userServiceImpl) {
        this.userServiceImpl = userServiceImpl;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        // userServiceImpl을 이용해 DB에서 사용자 정보를 조회

        UserDTO userDTO = new UserDTO();
        userDTO.setUserName(username);
        userDTO = userServiceImpl.checkId(userDTO);
        if (userDTO == null) {
            throw new UsernameNotFoundException("User not found");
        }
        return new CustomUserDetails(userDTO);
    }
}
