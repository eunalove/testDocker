package com.example.testdocker;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping
public class HelloController {

    @GetMapping("")
    public String getDefault(){
        return "default";
    }

    @GetMapping("/hello")
    public String getMsg(){
        return "Hello World";
    }

}
