package kr.co.jejuolle.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Admin_Controller {

	// �����ڸ���/�ʱ�ȭ��
	@RequestMapping("/adminMain")
	public String adminMain() {
		return "admin/adminMain";
	}
	// ������ �������� ����Ʈ
	@RequestMapping("/adminNoticeList")
	public String adminNoticeList() {
		return "admin/adminNoticeList";
	}
	// ������ ������ ����Ʈ
	@RequestMapping("/adminTouristSpot")
	public String adminTouristSpot() {
		return "admin/adminTouristSpot";
	}
	// ������ ����Ű� ����Ʈ Ȯ��
	@RequestMapping("/adminReviewReport")
	public String adminReviewReport() {
		return "admin/adminReviewReport";
	}
	// ������ ���� ���� Ȯ�� ����Ʈ
	@RequestMapping("/adminUserInfo")
	public String adminUserInfo() {
		return "admin/adminUserInfo";
	}

	// ������ �������ǻ��� ����Ʈ Ȯ��
	@RequestMapping("/adminUserQuestion")
	public String adminUserQuestion() {
		return "admin/adminUserQuestion";
	}
	// ������ �������ǻ��� ����Ʈ���� �󼼺���
	@RequestMapping("/adminUserQuestionChk")
	public String adminUserQuestionChk() {
		return "admin/adminUserQuestionChk";
	}
	// ������ ���������
	@RequestMapping("/adminTouristSpotWrite")
	public String adminTouristSpotWrite() {
		return "admin/adminTouristSpotWrite";
	}
    // ������ �������� ���
	@RequestMapping("/adminNoticeWrite")
	public String adminNoticeWrite() {
		return "admin/adminNoticeWrite";
	}
	// ������ �������� �󼼺���
	@RequestMapping("/adminNoticeInfo")
	public String adminNoticeInfo() {
		return "admin/adminNoticeInfo";
	}
	// ������ �������� ����
	@RequestMapping("/adminNoticeModify")
	public String adminNoticeModify() {
		return "admin/adminNoticeModify";
	}
	// ������ ���ڰ����ڰ� ����ϰ��ִ� ���ھ��ҵ��� ����ƮȮ��
	@RequestMapping("/adminManagerHotelList")
	public String adminManagerHotelList() {
		return "admin/adminManagerHotelList";
	}
	// ������ ���ھ��� ����Ʈ����
	@RequestMapping("/adminHotelList")
	public String adminHotelList() {
		return "admin/adminHotelList";
	}
	// ������ ���ھ��� ������ ����Ʈ
	@RequestMapping("/adminManagerList")
	public String adminManagerList() {
		return "admin/adminManagerList";
	}
	// ������ ����Ű��� �������� ����Ʈ
	@RequestMapping("/adminReportUserList")
	public String adminReportUserList() {
		return "admin/adminReportUserList";
	}
}
