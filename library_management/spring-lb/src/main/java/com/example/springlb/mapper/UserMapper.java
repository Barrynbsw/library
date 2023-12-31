package com.example.springlb.mapper;
import com.example.springlb.controller.request.Pagerequest;
import com.example.springlb.entity.user;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;
@Mapper
public interface UserMapper {

//    @Select("select * from `user`")
    List<user> list();
    List<user> listByCondition(Pagerequest pagerequest);
    void add(user u);
    user getByid(String id);
    void update(user user);
    void delete(String id);
}
