package kr.co.jejuolle.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BandAdmin_Controller {

	// ���� ������ - ����
	@RequestMapping("/bandbAdminMain")
	public String bandbAdminMain() {
		return "bandbadmin/bandbAdminMain";
	}

	// ���� ������ - ���� ���
	@RequestMapping("/bandbregisterform")
	public String bandbregisterform() {
		return "bandbadmin/bandbregisterform";
	}

	// ���� ������ - ��(��) ���
	@RequestMapping("/bandbroomregisterform")
	public String bandbroomregisterform() {
		return "bandbadmin/bandbroomregisterform";
	}

	// ���� ������ - ���� �����ϱ�(����Ʈ�� ����)
	@RequestMapping("/bandbreservationList")
	public String bandbreservationList() {
		return "bandbadmin/bandbreservationList";
	}

	// ���� ������ - ����� ���� �󼼺���
		@RequestMapping("/bandbdetail")
		public String bandbdetail() {
			return "bandbadmin/bandbdetail";
	}

	// ���� ������ - ��� ���� ��Ȳ ����
	@RequestMapping("/bandbAllList")
	public String test() {
		return "bandbadmin/bandbAllList";
	}

	// ���� ������ - ���ǻ���
	@RequestMapping("/bandbadminUserQuestion")
	public String bandbadminUserQuestion() {
		return "bandbadmin/bandbadminUserQuestion";
	}
	// ���� ������ - ���ǻ��� �� ����
	@RequestMapping("/bandbadminUserQuestionChk")
	public String bandbadminUserQuestionChk() {
		return "bandbadmin/bandbadminUserQuestionChk";
	}
}
