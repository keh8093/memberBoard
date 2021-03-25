package kr.co.form.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sun.xml.internal.bind.v2.runtime.output.Encoded;

import kr.co.form.dao.MemberService;
import kr.co.form.vo.MemberVO;

@Controller
@RequestMapping
public class MemberController {

	@Autowired
	MemberService service;
	
	//회원가입 페이지 이동
	@RequestMapping(value="/join")
	public String join() {
		return "join";
	}
	

	
	//회원가입
	@RequestMapping(value="/joinck", method = RequestMethod.POST)
	public String joinMember(MemberVO vo) {
		int result=service.idCk(vo);
		if(result==1) {
			return "login"; //가입완료시 돌아가는 jsp
		}else if(result==0) {
			service.joinMember(vo);
		}
		return "login";
	}
	
	//id중복체크
	@ResponseBody
	@RequestMapping(value="/idCk", method = RequestMethod.POST)
	public int idCk(MemberVO vo) {
		return service.idCk(vo);
	}
	
	//로그인
	@RequestMapping("/login")
	public String loginpg() {
		return "login";
	}
	
	@RequestMapping(value="/loginCk") //로그인처리 컨트롤러
	public ModelAndView login(@ModelAttribute MemberVO vo, HttpSession session) {
		MemberVO result=service.login(vo, session);
		ModelAndView mav= new ModelAndView();
		if(result != null) {
			session.setAttribute("id", result.getMemId()); //아이디
			session.setAttribute("pwd", result.getMemPassword()); //비밀번호
			mav.setViewName("index"); //로그인 성공하면 이동하는 페이지
			mav.addObject("msg", "success"); //성공 
		}else {
			mav.setViewName("login"); //로그인실패시 로그인페이지 유지
			mav.addObject("msg", "fail"); //실패
		}
		return mav;
	}
	
	//로그아웃
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "/login"; //로그인페이지로 이동
	} 
	
	//회원정보조회
	@RequestMapping(value="/mypage")
	public String viewMember(MemberVO vo) {
		return "mypage";
	}
	
	
	//회원정보수정--비밀번호
	@RequestMapping(value="/mypageup")
	public String modifMember(MemberVO vo, HttpSession session) {
		service.modifMember(vo);
		return "/index";
	}
	
	
	// 회원 탈퇴
	@RequestMapping(value="/deleteMemberView.do")
	public String deleteMemberView(MemberVO vo){
		return "deleteMemberView";
	}
	
	// 회원 탈퇴 post
	@RequestMapping(value="/deleteMember", method = RequestMethod.POST)
	public String deleteMember(MemberVO vo, HttpSession session, RedirectAttributes rttr) {
		
		String memId = (String)session.getAttribute("id");
		String memPwd = (String)session.getAttribute("pwd");
		
		if(vo.getMemId().equals(memId)  &&  vo.getMemPassword().equals(memPwd)) {
			service.deleteMember(vo);
			session.invalidate();
		}else {
			return "redirect:deleteMemberView.do";
		}
		return "/login"; 
	}
	
	
	//비밀번호 체크
	@ResponseBody
	@RequestMapping(value="/pwdCk", method = RequestMethod.POST)
	public int pwdCk(MemberVO vo) {
		int result=service.pwdCk(vo);
		return result;
	}
	
}
