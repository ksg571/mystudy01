package kr.co.jejuolle.mvc.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.jejuolle.mvc.vo.LoginLogVO;
import kr.co.jejuolle.mvc.vo.UsersVO;

@Repository
public class Users_Imple implements Users_Inter {

	@Autowired
	private SqlSessionTemplate ss;
	//�Ϲ�ȸ�� ȸ������
	@Override
	public void addUser(UsersVO vo) {
		ss.insert("users.register_users", vo);
	}
	//�Ƶ�� �ߺ�Ȯ��
	@Override
	public int idCheck(String uuId) {
		return ss.selectOne("users.check_id", uuId);
	}
	//�α���
	@Override
	public UsersVO login(UsersVO vo) {
		return ss.selectOne("users.login", vo);
	}
	@Override
	public void addLoginLogging(LoginLogVO vo) {
		ss.insert("users.login_log", vo);
	}

}
