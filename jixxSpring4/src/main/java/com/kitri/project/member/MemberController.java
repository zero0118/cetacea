package com.kitri.project.member;

import java.io.UnsupportedEncodingException;
import java.util.Random;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kitri.project.repository.MailHandler;
import com.kitri.project.repository.TempKey;

import vo.Member;

@Controller
public class MemberController {
	@Resource(name="memService")
	private Service service;
	@Inject
	private JavaMailSender mailSender;
	
	public void setService(Service service) {
		this.service= service;
	}
	@RequestMapping(value="verifyForm.do")
	public String verifyForm() {
		return "member/verify";
	}	
	@RequestMapping(value="home.do")
	public String home() {
		return "template/home";
	}
	@RequestMapping(value="member/loginForm.do")
	public String loginForm() {
		return "member/login";
	}
	@RequestMapping(value="member/signup.do")
	public String signupForm() {
		return "member/signup";
	}	
	@RequestMapping(value = "/member/insert.do")
	public String add(@ModelAttribute("xxx") Member m) { 
		service.addMember(m);		
		return "member/login";
	}
	@RequestMapping(value = "/idCheck.do")
	public ModelAndView idCheck(HttpServletRequest req, @RequestParam(value = "email") String email) {
	
		HttpSession session = req.getSession(false);
		ModelAndView mav = new ModelAndView("member/idCheck");
		String str = "";
		Member m = service.getMemberEmail(email);		
		if (m == null) {
			str = "사용가능한아이디";
		} else {
			str = "사용불가능한 아이디";
		}
		mav.addObject("str", str);
		return mav;		
	}
	
	@RequestMapping(value = "/login.do")
	public String login(HttpServletRequest req, Member m) {
		Member m2 = service.getMemberEmail(m.getEmail());
		if (m2 == null || !m2.getPwd().equals(m.getPwd())) {
			System.out.println("로그인 실패");
			return "member/login";
		} else {
			HttpSession session = req.getSession();
			session.setAttribute("id", m.getId());	
			session.setAttribute("email", m.getEmail());
			return "template/index";
		}
	}
	@RequestMapping(value = "/member/editForm.do")
	public ModelAndView editForm(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView("member/editForm");
		HttpSession session = req.getSession(false);
		String id = (String) session.getAttribute("id");
		Member m = service.getMemberId(Integer.parseInt(id));
		mav.addObject("m", m);
		return mav;
	}
	@RequestMapping(value = "/member/edit.do")
	public String edit(Member m) {
		service.editMember(m);
		return "member/main";
	}	
	@RequestMapping(value = "/member/logout.do")
	public String logout(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		session.removeAttribute("id");
		session.invalidate();
		return "member/login";
	}
	@RequestMapping(value = "/member/out.do")
	public String out(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		String id = (String) session.getAttribute("id");
		service.delMember(Integer.parseInt(id));
		session.removeAttribute("id");
		session.invalidate();
		return "member/login";
	}
	
	@RequestMapping(value="crw1.do")
	public ModelAndView crw1(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView("workspace/createworkspace1");
		HttpSession session = req.getSession(false);
		String  email = (String) session.getAttribute("email");
		Member m = service.getMemberEmail(email);
		mav.addObject("m", m);
		return mav;
	}
	@RequestMapping(value="emailauth.do")
	public String emailAuth(HttpServletRequest req, Member m) throws MessagingException, UnsupportedEncodingException{
		HttpSession session = req.getSession(false);
		int id =  (int)session.getAttribute("id");
		MailHandler sendMail = new MailHandler(mailSender);
		Random ran = new Random();
		int ran2 = 0;
		while (ran2<=100000) {
			ran2 =ran.nextInt(1000000);
		}
		sendMail.setText(new StringBuffer().append("<h1>이메일인증</h1>").append("<a href='localhost:8080/project/verifyForm.do")
						.append("'target='_blenk'>이메일 인증 확인</a>").append(ran2).toString());
		sendMail.setFrom("gusdn4973@gmail.com", "jixx");
		sendMail.setTo(m.getEmail());
		sendMail.send();
		service.setTempkey(ran2, id);
		return "member/verify";
	}
	@RequestMapping(value="verify.do")
	public String verify(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		String  email = (String) session.getAttribute("email");
		Member m = new Member();
		m.setEmail(email);
		service.verifyMember(m);
		return "workspace/createworkspace2";
	}
}
