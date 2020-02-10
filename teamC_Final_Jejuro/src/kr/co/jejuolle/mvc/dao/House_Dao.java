package kr.co.jejuolle.mvc.dao;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.jejuolle.mvc.vo.HouseLikeVO;
import kr.co.jejuolle.mvc.vo.HousePickVO;
import kr.co.jejuolle.mvc.vo.HouseVO;
import kr.co.jejuolle.mvc.vo.ReservationVO;
import kr.co.jejuolle.mvc.vo.RoomVO;

@Repository
public class House_Dao implements House_Inter {

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<HouseVO> houselise() {
		return ss.selectList("house.houselist");
	}

	@Override
	public List<RoomVO> room(int hNo) {
		return ss.selectList("house.room", hNo);
	}

	@Override
	public RoomVO roomDetail(int rNo) {
		return ss.selectOne("house.roomDetail", rNo);
	}

	@Override
	public void res_room(ReservationVO vo) {
		ss.insert("house.res_room", vo);
	}

	// ȣ�� �󼼺���
	@Override
	public HouseVO houseDetail(int hNo) {
		return ss.selectOne("house.houseDetail", hNo);
	}

	// ȣ�� ���ƿ�
	@Override
	public void houseLike(HouseLikeVO hlikevo) {
		ss.insert("house.houseLike", hlikevo);
	}

	// ȣ�� ���ƿ� üũ
	@Override
	public int LikeCheck(HouseLikeVO hlikevo) {
		return ss.selectOne("house.likecheck", hlikevo);
	}

	// ȣ�� ���ϱ�
	@Override
	public void housePick(HousePickVO hpickvo) {
		ss.insert("house.housepick", hpickvo);
	}

	// ȣ�� ���ϱ� üũ
	@Override
	public int PickCheck(HousePickVO hpickvo) {
		return ss.selectOne("house.pickcheck", hpickvo);
	}

	//��ȸ�� ����
	@Override
	public void houseHit(int hNo) {
		ss.update("house.houseHit", hNo);
	}

}
