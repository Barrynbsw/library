package com.example.springlb.service.impl;

import com.example.springlb.controller.request.BookPagerequest;
import com.example.springlb.entity.admin;
import com.example.springlb.entity.book;
import com.example.springlb.mapper.AdminMapper;
import com.example.springlb.mapper.BookMapper;
import com.example.springlb.service.IBookService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class BookService implements IBookService {
    @Autowired
    BookMapper bookMapper;
   @Override
   public Object page(BookPagerequest bookPagerequest){
       PageHelper.startPage( bookPagerequest.getPageNum(),bookPagerequest.getPageSize());
       List<book> books=bookMapper.listByCondition(bookPagerequest);

       for (book b:books
            ) {
           b.setImgsrc("@/assets/pic/6.png");
       }
       return new PageInfo<>(books);
   }
}
