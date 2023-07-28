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
    @Delete("delete from user where id = #{id}")
    void delete(Integer id);

    @Insert("INSERT INTO `user` ( `username`, `name`, `age`, `sex`, `phone`, address)" +
            " VALUES ( #{username}, #{name}, #{age}, #{sex}, #{phone}, #{address})")
    void insert(user u);

//    @Select("select * from `user`")
    List<user> list();
    List<user> listByCondition(Pagerequest pagerequest);
}
