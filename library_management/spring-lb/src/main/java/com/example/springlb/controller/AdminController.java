package com.example.springlb.controller;

import com.example.springlb.common.result;
import com.example.springlb.controller.request.Pagerequest;
import com.example.springlb.entity.admin;
import com.example.springlb.service.IAdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin
@RestController
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    IAdminService adminService;
    @GetMapping("/list")
    public result list() {
        List<admin> admins = adminService.list();
        return result.success(admins);
    }
    @GetMapping("page")
    public result page(Pagerequest pagerequest) {
        return result.success(adminService.page(pagerequest));
    }
    @PostMapping("add")
    public result add(@RequestBody admin admin){
        adminService.add(admin);
        return result.success();
    }
    @GetMapping("getByid")
    public result getByid(String id){
        return result.success(adminService.getByid(id));
    }
    @PutMapping("update")
    public result update(@RequestBody admin admin){
        System.out.println(admin);
        adminService.update(admin);
        return result.success();
    }
    @DeleteMapping("delete")
    public result delete(String id){
        adminService.delete(id);
        return  result.success();
    }
}
