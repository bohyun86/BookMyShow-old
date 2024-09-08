package com.itwillbs.service;

import com.itwillbs.domain.UserDTO;

public interface UserService {

    Boolean insertUser(UserDTO userDTO);

    UserDTO getUser(UserDTO userDTO);
}
