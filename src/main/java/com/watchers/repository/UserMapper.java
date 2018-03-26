package com.watchers.repository;

import org.apache.ibatis.annotations.Mapper;

import com.watchers.model.Users;

import java.util.Map;

@Mapper
public interface UserMapper {
    public Users getByEmail(String email);
    public void updateToken(Map<String, Object> param);
    public void addUser(Map<String, Object> param);
}
