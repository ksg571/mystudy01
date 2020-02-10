package kr.co.jejuolle.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Notice_Controller {
	// ��������������
	@RequestMapping("/notice")
	public String notice() {
		return "notice/notice";
	}

	// ���ǻ���
	@RequestMapping("/contact")
	public String contact() {
		return "notice/contact";
	}

	// ���ֹ�������
	@RequestMapping("/faq")
	public String faq() {
		return "notice/faq";
	}

}
