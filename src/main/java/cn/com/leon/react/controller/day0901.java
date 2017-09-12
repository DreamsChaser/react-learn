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

    @RequestMapping("/0907/demo5")
    public String demo5(){
        return "day0907/demo5";
    }

    @RequestMapping("/0907/demo6")
    public String demo6(){
        return "day0907/demoproptypes";
    }
    @RequestMapping("/0907/demo7")
    public String demo7(){
        return "day0907/demodom";
    }
}
