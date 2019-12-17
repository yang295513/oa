package cn.qs304.oa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JumpController {

    @RequestMapping("/index")
    public String index() {
        return "index";
    }
    @RequestMapping("/label")
    public String label() {
        return "label";
    }
    @RequestMapping("/left")
    public String left() {
        return "left";
    }
    @RequestMapping("/login")
    public String login() {
        return "login";
    }
    @RequestMapping("/main")
    public String main() {
        return "main";
    }
    @RequestMapping("/middle")
    public String middle() {
        return "middle";
    }
    @RequestMapping("/time")
    public String time() {
        return "time";
    }
    @RequestMapping("/top")
    public String top() {
        return "top";
    }
}
