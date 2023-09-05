package com.example.springlb.controller;

import com.example.springlb.common.result;
import com.example.springlb.controller.request.BookPagerequest;
import com.example.springlb.service.IBookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin
@RestController
@RequestMapping("/book")
public class BookController {
    @Autowired
    IBookService bookService;
    @GetMapping("page")
    public result page(BookPagerequest bookPagerequest) {
        return result.success(bookService.page(bookPagerequest));
    }
}
