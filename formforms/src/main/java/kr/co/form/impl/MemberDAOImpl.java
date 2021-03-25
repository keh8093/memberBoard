package kr.co.form.impl;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.form.dao.MemberDAO;
import kr.co.form.vo.MemberVO;

@Repository("memberDAO")
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public void joinMember(MemberVO vo) {
		sqlSession.insert("mem.joinMember", vo);
	}

	@Override
	public int idCk(MemberVO vo) {
		int result= sqlSession.selectOne("mem.idCk", vo);
		return result;
	}

	@Override
	public MemberVO login(MemberVO vo) {
		MemberVO member= sqlSession.selectOne("mem.login", vo);
		return member;
	}

	@Override
	public MemberVO viewMember(MemberVO vo) {
		MemberVO member= sqlSession.selectOne("mem.selectMember", vo);
		return member;
	}

	@Override
	public void modifMember(MemberVO vo) {
		sqlSession.update("mem.modifMember", vo);
	}
	
	@Override
	public void deleteMember(MemberVO vo) {
		sqlSession.delete("mem.deleteMember", vo);
	}

	@Override
	public int pwdCk(MemberVO vo) {
		int result= sqlSession.selectOne("mem.pwdCk", vo);
		return result;
	}

	@Override
	public void logout(HttpSession session) {
	}

	
}
