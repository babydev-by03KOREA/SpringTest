package com.spring.mvc;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Products/")
public class ProductsController {

    private static final Logger logger = LoggerFactory.getLogger(ProductsController.class);

    @GetMapping("cardProducts.do")
    public String card() {
        return "Products/card";
    }
}
