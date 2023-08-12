package com.kopo.hanaglobal.hana_global.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/")
    public String index() {
        System.out.println("index페이지");
        return "index";
    }

    @GetMapping("/exchange")
    public String exchange(){
        System.out.println("exchange 페이지");
        return "exchange";
    }
    @GetMapping("/account")
    public String account(){
        System.out.println("acount 페이지");
        return "account";
    }
    @GetMapping("/transfer")
    public String transfer(){
        System.out.println("transfer 페이지");
        return "transfer";
    }
    @GetMapping("/signUp")
    public String signUp(){
        System.out.println("signUp 페이지");
        return "signUp";
    }
    @GetMapping("/signUp_STEP1")
    public String signUp1(){
        System.out.println("signUp step1 페이지");
        return "signUp_STEP1";
    }
}