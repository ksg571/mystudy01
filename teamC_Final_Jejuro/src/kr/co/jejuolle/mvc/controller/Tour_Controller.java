package kr.co.jejuolle.mvc.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.jejuolle.mvc.dao.RvTourlistlog_Dao;
import kr.co.jejuolle.mvc.dao.Tourspot_Dao;
import kr.co.jejuolle.mvc.vo.RvTourlistlogVO;
import kr.co.jejuolle.mvc.vo.TourCountVO;
import kr.co.jejuolle.mvc.vo.TourLikeVO;
import kr.co.jejuolle.mvc.vo.TourPickVO;
import kr.co.jejuolle.mvc.vo.TourSpotVO;

@Controller
public class Tour_Controller {

	@Autowired
	private Tourspot_Dao tourspot_Dao;
	@Autowired
	private RvTourlistlog_Dao rvtDao;

	// ������������
	@RequestMapping("/tourList")
	public ModelAndView tourList(TourCountVO count) {

		List<TourSpotVO> list = tourspot_Dao.tourspotlist();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tour/tourList");
		mav.addObject("list", list);

		int rvcnt = rvtDao.Count();
		int start = rvcnt - 3;

		count.setStart(start);
		count.setCount(rvcnt);

		List<RvTourlistlogVO> rvlist = rvtDao.Rvtlist(count);
		mav.addObject("rvlist", rvlist);
		return mav;
	}

	// ������ ������
	@RequestMapping("/tourdetail")
	public String tourdetail(Model m, int tNo) {
		// �󼼺��� ������ �� ��ȸ�� ����
		tourspot_Dao.tourspotHit(tNo);

		TourSpotVO tvo = tourspot_Dao.tourspotDetail(tNo);
		System.out.println("info?" + tvo.gettInfo());
		String info = tvo.gettInfo();
		String array[] = info.split("/");
		for (int i = 0; i < array.length; i++) {
			System.out.println(array[i]);
		}
		m.addAttribute("tvo", tvo);
		return "tour/tourdetail";
	}

	// ���ƿ� �� ���ϱ�
	@GetMapping("/tourlikepick")
	public ModelAndView likePick(HttpServletRequest req, int tNo, int val) {
		ModelAndView mav = new ModelAndView();
		// ���ƿ��϶�
		if (val == 1) {
			System.out.println("���ƿ� ���ϴ�~");

			// ����ȣ ��������
			HttpSession session = req.getSession();
			int uno = (int) session.getAttribute("uNo");
			// ����ȣ�� ȣ�� ��ȣ
			TourLikeVO tlikevo = new TourLikeVO();
			tlikevo.settNo(tNo);
			tlikevo.setuNo(uno);

			// ���ƿ� ����
			int cnt = tourspot_Dao.LikeCheck(tlikevo);

			// ���ƿ䰡 �̹� ���������
			if (cnt == 1) {
				System.out.println("�̹� �Ǿ��ֽ��ϴ�.");

				// �̹� ���ִٸ� ajax�� cnt���� ����
				mav.setViewName("house/check");
				mav.addObject("cnt", cnt);

				// ���ƿ䰡 ������ �������
			} else {
				System.out.println("���ƿ���!");

				// ���ƿ� ���
				tourspot_Dao.tourspotLike(tlikevo);

				// cnt�� ������ ���ϱ� ����� �˸�
				mav.setViewName("tour/check");
				mav.addObject("cnt", cnt);
			}

			// ���ϱ��϶�
		} else if (val == 2) {
			System.out.println("���ϱ� ���ϴ�~");

			// �� ��ȣ ��������
			HttpSession session = req.getSession();
			int uno = (int) session.getAttribute("uNo");

			// ����ȣ�� ȣ�� ��ȣ
			TourPickVO tpickvo = new TourPickVO();
			tpickvo.settNo(tNo);
			tpickvo.setuNo(uno);

			// �̹� ���ϱ⸦ �������� üũ
			int cnt = tourspot_Dao.PickCheck(tpickvo);

			if (cnt == 1) {
				// �̹� ���ִٸ� ajax�� cnt���� ����
				mav.setViewName("tour/check");
				mav.addObject("cnt", cnt);
			} else {

				// ���� �ȵ��ִٸ� ���� ��Ű��
				tourspot_Dao.tourspotPick(tpickvo);

				// cnt�� ������ ���ϱ� ����� �˸�
				mav.setViewName("tour/check");
				mav.addObject("cnt", cnt);
			}
		}
		return mav;
	}

}
