package com.example.springlb.mapper;

import com.example.springlb.controller.request.Pagerequest;
import com.example.springlb.entity.admin;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface AdminMapper {
    List<admin> list();
    List<admin> listByCondition(Pagerequest pagerequest);
    void add(admin u);
    admin getByid(String id);
    void update(admin admin);
    void delete(String id);
    admin login(admin admin);
}
