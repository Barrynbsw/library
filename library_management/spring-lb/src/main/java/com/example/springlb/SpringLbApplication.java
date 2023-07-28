package com.example.springlb;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SpringLbApplication {
    @RequestMapping("/")
    public String healthy(){
        return "sad";
    }
    @RequestMapping("/jj")
    public String health(){
        return "Success";
    }
    public static void main(String[] args) {
        SpringApplication.run(SpringLbApplication.class, args);
    }


}
