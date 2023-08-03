package com.example.springlb.entity;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class user {
    private String id;
    private String username;
    private  String name;
    private Integer age;
    private String sex;
    private String phone;
    private String address;
    @JsonFormat(pattern="yyyy-MM-dd",timezone ="GTM+8")
    private Date createtime;
    @JsonFormat(pattern="yyyy-MM-dd",timezone ="GTM+8")
    private Date updatetime;
}
