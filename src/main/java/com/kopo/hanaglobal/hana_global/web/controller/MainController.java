package com.kopo.hanaglobal.hana_global.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import java.util.Map;

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
    @PostMapping("/signUp_STEP2")
    public String signUp2(@RequestParam(name="agreeYN", required=false) String agreeYN){
        System.out.println("signUp step2 페이지");

        if("Y".equals(agreeYN)){
            return "signUp_STEP2";
        } else {
            return "signUp"; // 약관에 동의하지 않은 경우 다시 초기 페이지로 리다이렉트
        }
    }
    @GetMapping("/signUp_STEP3")
    public String signUp3(){
        System.out.println("signUp step3 페이지");
        return "signUp_STEP3";
    }
    @PostMapping("/signUp_STEP3")
    public String processSignUp3(
            @RequestParam Map<String, String> params,
            @RequestParam("idCardImage") MultipartFile idCardImage,
            @RequestParam("visaImage") MultipartFile visaImage,
            @RequestParam("passportImage") MultipartFile passportImage) {
        System.out.println("Processing signUp step3");
        return "signUp_STEP3";
    }

}