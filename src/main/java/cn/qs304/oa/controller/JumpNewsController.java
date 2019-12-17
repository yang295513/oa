package cn.qs304.oa.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/news")
public class JumpNewsController {

    @RequestMapping("/栏目管理")
    public String 栏目管理() {
        return "news/栏目管理";
    }

    @RequestMapping("/栏目添加")
    public String 栏目添加() {
        return "news/栏目添加";
    }
    @RequestMapping("/栏目修改")
    public String 栏目修改() {
        return "news/栏目修改";
    }
    @RequestMapping("/栏目审核")
    public String 栏目审核() {
        return "news/栏目审核";
    }
}
