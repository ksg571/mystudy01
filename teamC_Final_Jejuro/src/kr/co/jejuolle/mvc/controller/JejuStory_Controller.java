package kr.co.jejuolle.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class JejuStory_Controller {
	// �����̾߱�
	@RequestMapping("/jejustory")
	public String jejustory() {
		return "jejustory/jejustory";
	}

	// ��α�
	@RequestMapping("/blog")
	public String blog() {
		return "jejustory/blog";
	}

	// ��Ÿ���
	@RequestMapping("/etc")
	public String etc() {
		return "jejustory/etc";
	}
}
