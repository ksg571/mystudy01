package kr.co.jejuolle.mvc.dao;

import java.util.List;

import kr.co.jejuolle.mvc.vo.TourLikeVO;
import kr.co.jejuolle.mvc.vo.TourPickVO;
import kr.co.jejuolle.mvc.vo.TourSpotVO;

public interface Tourspot_Inter {
	public List<TourSpotVO> tourspotlist();

	// ������ �󼼺���
	public TourSpotVO tourspotDetail(int tNo);

	// ������ ���ƿ�
	public void tourspotLike(TourLikeVO tlikevo);

	// ������ ���ƿ� üũ
	public int LikeCheck(TourLikeVO tlikevo);

	// ������ ���ϱ�
	public void tourspotPick(TourPickVO tpickvo);

	// ������ ���ϱ� üũ
	public int PickCheck(TourPickVO tpickvo);

	//������ ��ȸ�� ����
	public void tourspotHit(int tNo);
}
