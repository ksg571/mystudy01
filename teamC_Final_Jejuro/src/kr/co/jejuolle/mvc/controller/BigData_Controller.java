package kr.co.jejuolle.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BigData_Controller {
	// ������ - ��Ʈ
	@RequestMapping("/chart")
	public String chart() {
		return "bigdata/chart";
	}

	// ������ - ����
	@RequestMapping("/weather")
	public String weather() {
		return "bigdata/weather";
	}

	// ������ -
	@RequestMapping("/bigdata")
	public String bigdata() {
		return "bigdata/bigdata";
	}

}
