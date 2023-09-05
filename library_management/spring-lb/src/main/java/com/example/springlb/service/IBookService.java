package com.example.springlb.service;

import com.example.springlb.controller.request.BookPagerequest;

public interface IBookService {
   Object page(BookPagerequest bookPagerequest);
}
