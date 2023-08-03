package com.example.springlb.controller;
import com.example.springlb.common.result;
import com.example.springlb.controller.request.Pagerequest;
import com.example.springlb.entity.user;
import com.example.springlb.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@CrossOrigin
@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    IUserService userService;
    @GetMapping("/list")
    public result list() {
        List<user> users = userService.list();
        return result.success(users);
    }
    @GetMapping("page")
    public result page(Pagerequest pagerequest) {
        return result.success(userService.page(pagerequest));
    }
    @PostMapping("add")
    public result add(@RequestBody user user){
        userService.add(user);
        return result.success();
    }
    @GetMapping("getByid")
    public result getByid(String id){
        return result.success(userService.getByid(id));
    }
    @PutMapping("update")
    public result update(@RequestBody user user){
        System.out.println(user);
        userService.update(user);
        return result.success();
    }
    @DeleteMapping("delete")
    public result delete(String id){
        userService.delete(id);
        return  result.success();
    }
}
