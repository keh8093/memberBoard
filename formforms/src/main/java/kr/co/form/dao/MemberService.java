package kr.co.form.dao;

import javax.servlet.http.HttpSession;

import kr.co.form.vo.MemberVO;

public interface MemberService {

	public void joinMember(MemberVO vo);
	public int idCk(MemberVO vo);
	public MemberVO login(MemberVO vo, HttpSession session);
	MemberVO viewMember(MemberVO vo);
	public void modifMember(MemberVO vo);
	public void deleteMember(MemberVO vo);
	public int pwdCk(MemberVO vo);
	public void logout(HttpSession session);
}
