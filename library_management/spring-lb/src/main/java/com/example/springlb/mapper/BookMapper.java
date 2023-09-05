package com.example.springlb.mapper;

import com.example.springlb.controller.request.BookPagerequest;
import com.example.springlb.controller.request.Pagerequest;
import com.example.springlb.entity.admin;
import com.example.springlb.entity.book;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
@Mapper
public interface BookMapper {
    List<book> listByCondition(BookPagerequest bookpagerequest);
}
