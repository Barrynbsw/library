package com.example.springlb.controller;
import com.example.springlb.common.result;
import com.example.springlb.controller.request.Pagerequest;
import com.example.springlb.entity.user;
import com.example.springlb.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
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
}
