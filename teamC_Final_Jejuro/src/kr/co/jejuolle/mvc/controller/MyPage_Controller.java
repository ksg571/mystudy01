package kr.co.jejuolle.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPage_Controller {
	// 原戚凪戚走
	@RequestMapping("/mypage")
	public String mypage() {
		return "mypage/mypage";
	}

	// pick 淫韻走
	@RequestMapping("/pickTourspot")
	public String pickTourspot() {
		System.out.println("炎買崎 砺什瞳びびdddびびびびび");
		return "mypage/pickTourspot";
	}

	// pick 寿社
	@RequestMapping("/pickhouse")
	public String pickhouse() {
		return "mypage/pickHouse";
	}

	// 蟹税軒坂
	@RequestMapping("/myreview")
	public String myreview() {
		return "mypage/myReview";
	}

	// 呪舛馬奄
	@RequestMapping("/infoModify")
	public String infoModify() {
		return "mypage/infoModify";
	}
	// 噺据纏盗
	@RequestMapping("/user_delete")
	public String userDelete() {
		return "mypage/userDelete";
	}

}
