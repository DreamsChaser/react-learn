package cn.com.leon.react.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author leon
 */
@Controller
public class day0901 {

    @RequestMapping("/test")
    public String test(){
        return "index";
    }

    @RequestMapping("/0901")
    public String helloWorld(){
        return "day0901/helloworld";
    }
}
