package com.example.springlb.service.impl;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.IdUtil;
import com.example.springlb.controller.request.Pagerequest;
import com.example.springlb.service.IUserService;
import com.example.springlb.entity.user;
import com.example.springlb.mapper.UserMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
@Service
public  class UserService implements IUserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public List<user> list() {
        return userMapper.list();
    }

    @Override
    public Object page(Pagerequest pagerequest) {
        PageHelper.startPage(pagerequest.getPageNum(),pagerequest.getPageSize());
        List<user> users=userMapper.listByCondition(pagerequest);
        return new PageInfo<>(users);
    }

    @Override
    public void add(user u) {
        Date date = new Date();
        u.setId(DateUtil.format(date,"yyMMdd")+ IdUtil.fastSimpleUUID());
        userMapper.add(u);
    }
    @Override
    public user getByid(String id){
        return userMapper.getByid(id);
    }
    @Override
    public void update(user user){
        userMapper.update(user);
    }
    @Override

    public void delete(String id){userMapper.delete(id);}
}


