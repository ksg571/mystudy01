package kr.co.jejuolle.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class Etc_Controller {
	// �����Ұ�
	@RequestMapping("/testimonials")
	public String testimonials() {
		return "etc/teamc";
	}

	// 404������
	@RequestMapping("/404")
	public String error() {
		return "etc/404";
	}
}
