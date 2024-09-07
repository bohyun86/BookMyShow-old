package com.itwillbs.service;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.UserDTO;
import com.itwillbs.mapper.UserMapper;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@AllArgsConstructor
public class UserServiceImpl implements UserService {

    private UserMapper userMapper;

    @Transactional
    @Override
    public Boolean insertUser(UserDTO userDTO) {

        MemberDTO memberDTO = new MemberDTO();
        memberDTO.setUserId(userDTO.getUserId());
        return (userMapper.insertUser(userDTO) == 1 && userMapper.insertMember(memberDTO) == 1);
    }
}
