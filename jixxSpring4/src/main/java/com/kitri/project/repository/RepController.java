package com.kitri.project.repository;

import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import vo.Channel;
import vo.Member;
import vo.Repository;

@Controller
public class RepController {
	@Resource(name = "repService")
	private Service service;
	@Inject
	private JavaMailSender mailSender;

	public void setService(Service service) {
		this.service = service;
	}
	//create workspace할때 url중복검사
	@RequestMapping(value = "repository/urlCheck.do")
	public ModelAndView urlCheck(HttpServletRequest req, @RequestParam(value = "url") String url) {
		System.out.println(url);
		HttpSession session = req.getSession(false);
		ModelAndView mav = new ModelAndView("workspace/urlcheck");
		String result = "";
		Repository r = service.selectRepByUrl(url);
		if (r == null) {
			result = "사용가능";
			session.setAttribute("urlCheck", true);
		} else {
			result = "사용불가";
			session.setAttribute("urlCheck", false);
		}
		System.out.println(session.getAttribute("urlCheck"));
		mav.addObject("result", result);
		return mav;
	}
	//저장소테이블에 행추가, 채널행추가, userMeta테이블 행추가, 기본게시글작성-->저장소만드는기능
	@RequestMapping(value = "createrep.do")
	public ModelAndView createRep(HttpServletRequest req, @RequestParam(value = "nickname") String nickname,
			Repository r) throws Exception {
		HttpSession session = req.getSession(false);
		int id = (int) session.getAttribute("id");
		ModelAndView mav = new ModelAndView("workspace/teaminvite");
		service.addRep(r);		
		Repository rep_id = service.getRepId(r);
		service.createCh(rep_id);
		int rep_id1 = rep_id.getRep_id();
		Channel chid = service.getChId(rep_id);
		int chid1 = chid.getCh_id();
		service.createUserMeta(id, rep_id1, chid1);
		service.addBoard(nickname, id, chid1);
		Repository r2 = service.selectRepByName(r);
		mav.addObject("r", r2);
		mav.addObject("rep_id",rep_id);
		return mav;
	}
	//로그인 이후에 자신의 workspace로 이동
	@RequestMapping(value = "gomain.do")
	public ModelAndView goMain(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		int id = (int) session.getAttribute("id");
		ModelAndView mav = new ModelAndView("template/main");
		mav.addObject("id", id);
		return mav;
	}
	//저장소에 회원초대하는기능
	@RequestMapping(value = "sendinvite.do")
	public ModelAndView emailAuth(HttpServletRequest req, String[] address, HttpServletResponse res,
			@RequestParam(value = "rep_name") String rep_name)
			throws MessagingException, UnsupportedEncodingException, Exception {
		HttpSession session = req.getSession(false);
		int id = (int) session.getAttribute("id");
		ModelAndView mav = new ModelAndView("template/main");
		Member user = service.getMember(id);
		String user_name = user.getName();
		int rep_id = service.getRepIdByRepNameUserMeta(rep_name);
		MailHandler sendMail = new MailHandler(mailSender);
		for (String str : address) {
			sendMail.setSubject(user_name + "님의 JIXX저장소 초대");
			sendMail.setText(new StringBuffer().append("<h1>" + user_name + "님의 jixx저장소 초대</h1>").append(
					"<a href='localhost:8080/project/invitesignup.do?rep_name=" + rep_name + "&rep_id=" + rep_id)
					.append("'target='_blenk'>초대 수락</a>").toString());
			sendMail.setFrom("gusdn4973@gmail.com", "jixx");
			sendMail.setTo(str);
			sendMail.send();
		}
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();
		out.println("<script>alert('친구초대완료'); </script>");
		out.flush();
		mav.addObject("id", id);
		return mav;
	}
	//저장소생성상황이아닌상황에서 회원초대기능
	@RequestMapping(value = "moreteam.do")
	public ModelAndView moreTeam(HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		int id = (int) session.getAttribute("id");
		Member user = service.getMember(id);
		String user_name = user.getName();
	/*	String rep_name = service.getRepNameById(id);*/
		ModelAndView mav = new ModelAndView("workspace/moreteammate");
		mav.addObject("id", id);
		mav.addObject("user_name", user_name);
		return mav;
	}
	//초대한메일의 링크를 클릭하면 회원가입 화면으로 이동
	@RequestMapping(value = "invitesignup.do")
	public ModelAndView inviteSignup(HttpServletRequest req, @RequestParam(value = "rep_name") String rep_name,
			@RequestParam(value = "rep_id") int rep_id) {
		ModelAndView mav = new ModelAndView("member/invitesignup");
		mav.addObject("rep_name", rep_name);
		mav.addObject("rep_id", rep_id);
		return mav;
	}
	//초대받은 사람이 회원가입하고, 기존의 session지우고 바로 로그인하고 저장소로이동
	@RequestMapping(value = "inviteinsert.do")
	public String add(HttpServletResponse res, @RequestParam(value = "rep_name") String rep_name,
			@RequestParam(value = "rep_id") int rep_id, @RequestParam(value = "email") String email,
			@RequestParam(value = "pwd") String pwd, @RequestParam(value = "name") String name, HttpServletRequest req,
			@RequestParam(value = "nickname") String nickname, Member m) throws Exception {
		HttpSession session = req.getSession(false);
		service.addMember(email, pwd, name);
		Member m2 = service.getMember(email);
		session.invalidate();
		session = req.getSession();
		session.setAttribute("id", m2.getId());
		session.setAttribute("email", m2.getEmail());
		int id = (int) session.getAttribute("id");
		ArrayList<Integer> chlist = service.getChList(rep_id);
		for (int i = 0; i < chlist.size(); i++) {
			int ch_id = chlist.get(i);
			System.out.println(ch_id);
			service.createUserMetaInvite(id, rep_id, ch_id);
			service.addBoard(nickname, id, ch_id);
		}
		res.setContentType("text/html; charset=UTF-8");
		PrintWriter out = res.getWriter();
		out.println("<script>alert('회원가입을 축하합니다'); </script>");
		out.flush();
		return "template/main";

	}

	@RequestMapping(value = "joinws.do")
	public String joinws() {
		return "workspace/joinworkspace";
	}

	@RequestMapping(value = "crch.do")
	public String crch() {
		return "workspace/createchannel";
	}

	@RequestMapping(value = "teaminvite.do")
	public String teamInvite() {
		return "workspace/teaminvite";
	}

	@RequestMapping(value = "wrokspaceurl.do")
	public String workspaceUrl() {
		return "workspace/workspaceurl";
	}

}
