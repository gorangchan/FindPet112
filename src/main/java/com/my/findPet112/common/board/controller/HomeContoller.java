package com.my.findPet112.common.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeContoller {
	@RequestMapping("/home")
	public String hme() {
		return "home";
	}
	
	@RequestMapping("/findings")
	public String findings() {
		return "findings";
	}
	
	@RequestMapping("/findings2")
	public String findings2() {
		return "findings2";
	}
}
