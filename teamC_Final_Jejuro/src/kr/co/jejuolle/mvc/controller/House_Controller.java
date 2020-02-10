package kr.co.jejuolle.mvc.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.jejuolle.mvc.dao.House_Dao;
import kr.co.jejuolle.mvc.dao.Reservation_Dao;
import kr.co.jejuolle.mvc.vo.HouseLikeVO;
import kr.co.jejuolle.mvc.vo.HousePickVO;
import kr.co.jejuolle.mvc.vo.HouseVO;
import kr.co.jejuolle.mvc.vo.ReservationVO;
import kr.co.jejuolle.mvc.vo.RoomVO;

@Controller
public class House_Controller {
	@Autowired
	private House_Dao house_Dao;

	@Autowired
	private Reservation_Dao reservation_Imple;

	// ����
	@RequestMapping("/house")
	public ModelAndView house() {
		List<HouseVO> list = house_Dao.houselise();
		System.out.println(list);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("house/house");
		mav.addObject("list", list);
		return mav;
	}

	// ���� ������
	@RequestMapping("/housedetail")
	public String housedetail(Model m, int hNo) {
		//�󼼺��⸦ ������ ��ȸ�� ����
		house_Dao.houseHit(hNo);

		// ȣ�� ����
		HouseVO hvo = house_Dao.houseDetail(hNo);
		m.addAttribute("hvo", hvo);

		List<RoomVO> rlist = house_Dao.room(hNo);
		m.addAttribute("rlist", rlist);

		return "house/housedetail";
	}

	//AJAX_��������
	@RequestMapping("/roomdetail")
	@ResponseBody
	public RoomVO roomdetail(int rNo) {
		System.out.println("??:" + rNo);
		RoomVO list = house_Dao.roomDetail(rNo);
		System.out.println("list :" + list);
		return list;
	}

	//���ҿ����ϱ�
	@RequestMapping("/res_room")
	public String res_room(ReservationVO vo, HttpSession session, Model m) throws ParseException {
		System.out.println("�����ϱ�");
		int uNo = (int) session.getAttribute("uNo");
		vo.setuNo(uNo);
		house_Dao.res_room(vo);
		String date1 = vo.getStartDate();
		String date2 = vo.getEndDate();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-mm-dd");
		Date StartDate = format.parse(date1);
		Date EndDate = format.parse(date2);
		long calDate = StartDate.getTime() - EndDate.getTime();
		long day = calDate / (24 * 60 * 60 * 1000);
		day = Math.abs(day) + 1;
		System.out.println("day");

		int rvNo = vo.getRvNo();
		RoomVO list = reservation_Imple.list_res(rvNo);
		int price = list.getrPrice();
		int want = (int) (day * price);
		session.setAttribute("day", day);
		session.setAttribute("want", want);

		m.addAttribute("rlist", list);
		return "house/checkout";
	}

	@RequestMapping("/checkout")
	public String test(Model m, ReservationVO vo) {

		return "house/checkout";

	}

	// ���ƿ� �� ���ϱ�
	@GetMapping("/houselikepick")
	public ModelAndView likePick(HttpServletRequest req, int hNo, int val) {
		ModelAndView mav = new ModelAndView();
		//���ƿ��϶�
		if (val == 1) {
			System.out.println("���ƿ� ���ϴ�~");

			//����ȣ ��������
			HttpSession session = req.getSession();
			int uno = (int) session.getAttribute("uNo");
			// ����ȣ�� ȣ�� ��ȣ
			HouseLikeVO hlikevo = new HouseLikeVO();
			hlikevo.sethNo(hNo);
			hlikevo.setuNo(uno);

			//���ƿ� ����
			int cnt = house_Dao.LikeCheck(hlikevo);

			//���ƿ䰡 �̹� ���������
			if (cnt == 1) {
				System.out.println("�̹� �Ǿ��ֽ��ϴ�.");

				//�̹� ���ִٸ� ajax�� cnt���� ����
				mav.setViewName("house/check");
				mav.addObject("cnt", cnt);

				//���ƿ䰡 ������ �������
			} else {
				System.out.println("���ƿ���!");

				//���ƿ� ���
				house_Dao.houseLike(hlikevo);

				//cnt�� ������ ���ϱ� ����� �˸�
				mav.setViewName("house/check");
				mav.addObject("cnt", cnt);
			}

			//���ϱ��϶�
		} else if (val == 2) {
			System.out.println("���ϱ� ���ϴ�~");

			// �� ��ȣ ��������
			HttpSession session = req.getSession();
			int uno = (int) session.getAttribute("uNo");

			// ����ȣ�� ȣ�� ��ȣ
			HousePickVO hpickvo = new HousePickVO();
			hpickvo.sethNo(hNo);
			hpickvo.setuNo(uno);

			// �̹� ���ϱ⸦ �������� üũ
			int cnt = house_Dao.PickCheck(hpickvo);

			if (cnt == 1) {
				//�̹� ���ִٸ� ajax�� cnt���� ����
				mav.setViewName("house/check");
				mav.addObject("cnt", cnt);
			} else {

				//���� �ȵ��ִٸ� ���� ��Ű�� 
				house_Dao.housePick(hpickvo);

				//cnt�� ������ ���ϱ� ����� �˸�
				mav.setViewName("house/check");
				mav.addObject("cnt", cnt);
			}
		}
		return mav;
	}

}
