package kr.co.jejuolle.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPage_Controller {
	// ����������
	@RequestMapping("/mypage")
	public String mypage() {
		return "mypage/mypage";
	}

	// pick ������
	@RequestMapping("/pickTourspot")
	public String pickTourspot() {
		System.out.println("����� �׽�Ʒ�Ӥ�ddd�ӤӤӤӤ�");
		return "mypage/pickTourspot";
	}

	// pick ����
	@RequestMapping("/pickhouse")
	public String pickhouse() {
		return "mypage/pickHouse";
	}

	// ���Ǹ���
	@RequestMapping("/myreview")
	public String myreview() {
		return "mypage/myReview";
	}

	// �����ϱ�
	@RequestMapping("/infoModify")
	public String infoModify() {
		return "mypage/infoModify";
	}
	// ȸ��Ż��
	@RequestMapping("/user_delete")
	public String userDelete() {
		return "mypage/userDelete";
	}

}
