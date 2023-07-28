package com.example.springlb.service.impl;

import com.example.springlb.controller.request.Pagerequest;
import com.example.springlb.service.IUserService;
import com.example.springlb.entity.user;
import com.example.springlb.mapper.UserMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserService implements IUserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public List<user> list() {
        return userMapper.list();
    }

    @Override
    public void insert(user u) {
        userMapper.insert(u);
    }

    @Override
    public void delete(Integer id) {
        userMapper.delete(id);
    }

    @Override
    public Object page(Pagerequest pagerequest) {
        PageHelper.startPage(pagerequest.getPageNum(),pagerequest.getPageSize());
        List<user> users=userMapper.listByCondition(pagerequest);
        return new PageInfo<>(users);
    }

}


