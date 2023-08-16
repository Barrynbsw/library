package com.example.springlb.service;

import com.example.springlb.controller.request.Pagerequest;
import com.example.springlb.entity.admin;

import java.util.List;

public interface IAdminService {
    List<admin> list();
    Object page(Pagerequest pagerequest);
    void add(admin admin);
    admin getByid(String id);
    void update(admin admin);
    void delete(String id);
}
