package kr.co.jejuolle.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class Header_Controller {





	// �˻�â
	@RequestMapping("/search")
	public String search() {
		return "header/search";
	}
	//�˻�
	@RequestMapping("/lang")
	public String lang() {
		return "header/lang";
	}
}
