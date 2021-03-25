package kr.co.form.impl;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.form.dao.MemberDAO;
import kr.co.form.dao.MemberService;
import kr.co.form.vo.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	MemberDAO dao;
	
	@Override
	public void joinMember(MemberVO vo) {
		dao.joinMember(vo);
	}

	@Override
	public int idCk(MemberVO vo) {
		int result= dao.idCk(vo);
		return result;
	}

	@Override
	public MemberVO login(MemberVO vo, HttpSession session) {
		return dao.login(vo);
	}

	@Override
	public MemberVO viewMember(MemberVO vo) {
		return dao.viewMember(vo);
	}

	@Override
	public void modifMember(MemberVO vo) {
		dao.modifMember(vo);
	}
	
	@Override
	public void deleteMember(MemberVO vo) {
		dao.deleteMember(vo);
	}

	@Override
	public int pwdCk(MemberVO vo) {
		int result= dao.pwdCk(vo);
		return result;
	}

	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}

}
