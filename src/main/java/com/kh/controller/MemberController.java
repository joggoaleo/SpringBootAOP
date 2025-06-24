package com.kh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.domain.Member;
import com.kh.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/member")
public class MemberController {
 @Autowired
 private MemberService service;
 
 @GetMapping("/registerForm")
 public void registerForm(Member member, Model model) {
	 log.info("Get registerForm");
	 
 }
 @PostMapping("/register")
 public String register(Member member, Model model) {
	 log.info("Post register");
	 service.register(member);
	 model.addAttribute("msg", "등록완료");
	 return "/member/success";
	 
 }
 
 @GetMapping("/list")
 public void list(Member member, Model model) {
	 log.info("Get list");
	 model.addAttribute("list",service.list());
	 
 }
 @GetMapping("/read")
 public void read(Member member ,Model model) {
	 log.info("Get read");
	 model.addAttribute("member", service.read(member));
 }
 @GetMapping("/modifyForm")
 public void modifyForm(Member member, Model model) {
	 log.info("Get modifyForm");
	 model.addAttribute("member", service.read(member));
 }
 @PostMapping("/modify")
 public String modify(Member member,Model model) {
	 log.info("Post modify");
	 service.modify(member);
	 model.addAttribute("msg", "수정완료");
	 return "/member/success";
 }
 @PostMapping("/remove")
 public String remove(Member member, Model model) {
	 log.info("Post remove");
	 service.remove(member);
	 model.addAttribute("msg", "삭제완료");
	 return "/member/success";
 }
 
 
 
	
}
