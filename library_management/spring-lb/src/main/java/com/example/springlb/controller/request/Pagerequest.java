package com.example.springlb.controller.request;

import lombok.Data;

@Data
public class Pagerequest extends Baserequest{
    private String name;
    private String adminname;
    private String phone;
}
