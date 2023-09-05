package com.example.springlb.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class book {
    int id;
    String isbn;
    String name;
    float price;
    String author;
    String publisher;
    String status;
    int borrownum;
    String imgsrc;
}
