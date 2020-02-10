package kr.co.jejuolle.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.jejuolle.mvc.vo.HouseVO;
import kr.co.jejuolle.mvc.vo.ReservationVO;
import kr.co.jejuolle.mvc.vo.UsersVO;

@Repository
public class Mypage_DAO {

	@Autowired
	private SqlSessionTemplate ss;
	
	//�������� ������ - ȸ��������������
	public UsersVO selectUserInfo(int uno) {
		UsersVO vo = ss.selectOne("mypage.selectUserInfo", uno);
		return vo;
	}
	
	//ȸ��Ż��
	public void deleteUser(int uno) {
		ss.delete("mypage.deleteUser", uno);
	}
	
	//ȸ������ ����
	public void updateUser(UsersVO usersvo) {
		ss.update("mypage.userInfoUpdate",usersvo);
	}
	
	//��й�ȣ ����
	public void pwdUpdate(UsersVO usersvo) {
		ss.update("mypage.pwdUpdate", usersvo);
	}
	
	//������� ��������
	public List<HouseVO> selectReservation(int uno){
		return ss.selectList("mypage.selectReservation", uno);
	}
}
