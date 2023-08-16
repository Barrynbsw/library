package com.example.springlb.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class admin {
    private  int id;
    private String adminname;
    private String phone;
    private String email;
    private String password;
}
