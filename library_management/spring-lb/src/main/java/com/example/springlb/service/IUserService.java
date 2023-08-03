package com.example.springlb.service;

import com.example.springlb.controller.request.Pagerequest;
import com.example.springlb.entity.user;

import java.util.List;

public interface IUserService {
    List<user> list();
   Object page(Pagerequest pagerequest);
   void add(user user);
   user getByid(String id);
   void update(user user);
    void delete(String id);
}
