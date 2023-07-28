package com.example.springlb.entity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class user {
    private Integer id;
    private String username;
    private  String name;
    private Integer age;
    private String sex;
    private String phone;
    private String address;
}
