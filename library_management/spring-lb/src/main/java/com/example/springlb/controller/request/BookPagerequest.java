package com.example.springlb.controller.request;

import lombok.Data;

@Data
public class BookPagerequest extends Baserequest{
    String isbn;
    String name;
    String author;
}
