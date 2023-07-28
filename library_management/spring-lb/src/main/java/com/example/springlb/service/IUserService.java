package com.example.springlb.service;

import com.example.springlb.controller.request.Pagerequest;
import com.example.springlb.entity.user;

import java.util.List;

public interface IUserService {
    List<user> list();
    void insert(user u);
   void delete(Integer id) ;
   Object page(Pagerequest pagerequest);
}
