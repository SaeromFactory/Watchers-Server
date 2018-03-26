package com.watchers.service;

import com.watchers.model.CommonResponse;
import com.watchers.model.Users;
import com.watchers.repository.UserMapper;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired private UserMapper userMapper;

    public CommonResponse login(Users user){
        if(user.getEmail() == null)
            return new CommonResponse(CommonResponse.fail,"이메일이 없습니다");

        Users user2 = userMapper.getByEmail(user.getEmail());
        if(user2 != null) {
            if (user.getPw().equals(user2.getPw())) {
                user.setPw(null);
                return new CommonResponse(user, "로그인에 성공하였슴니다.");
            }
        }
        return new CommonResponse(CommonResponse.fail, "패스워드가 틀렸슴니다.");
    }
    
    public void addUser(Map<String, Object> param) {
    		userMapper.addUser(param);
    }
    
}
