package com.kitri.project.post;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import vo.Channel;
import vo.Post;

@Controller
public class PostController implements ApplicationContextAware {
	@Resource(name = "postService")
	private Service service;
	private WebApplicationContext context = null;

	@RequestMapping(value = "/post/write.do")
	public String write(Post post, HttpServletRequest req, @RequestParam(value = "ch_list") String ch_list,
			@RequestParam(value = "user_list") String user_list,RedirectAttributes redirectAttributes) {
		HttpSession session = req.getSession(false);
		redirectAttributes.addAttribute("user_list", user_list);
		redirectAttributes.addAttribute("ch_list", ch_list);
		MultipartFile file = post.getFile();
		System.out.println(file.getOriginalFilename());
		if (file.getOriginalFilename() != "") {
			int pos = file.getOriginalFilename().lastIndexOf(".");
			String ext = file.getOriginalFilename().substring(pos);
			String name = file.getOriginalFilename().substring(0, pos);
			String path = "D:\\files\\" + name + UUID.randomUUID().toString() + ext;
			File f = new File(path);
			try {
				file.transferTo(f);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			post.setFile_original(path);
		} else {
			post.setFile_original("x");
		}
		post.setUser_id(Integer.parseInt(session.getAttribute("id").toString()));
		service.write(post);
		return "redirect:/post/list.do?page=1&cn=1";
	}

	@RequestMapping(value = "/post/list.do", method = RequestMethod.GET)
	public ModelAndView list(HttpServletRequest req, @RequestParam(value = "page") int page,
			@RequestParam(value = "cn") int cn, @RequestParam(value = "ch_list") String ch_list,
			@RequestParam(value = "user_list") String user_list) {
		HttpSession session = req.getSession(false);
		int id = (int) session.getAttribute("id");
		int rep_id = (int) session.getAttribute("rep_id");
		ArrayList<Post> list = service.show(page, cn);
		System.out.println(list);
		for (int i = 0; i < list.size(); i++) {
			if (list.get(i).getFile_original() != null && !list.get(i).getFile_original().equals("x")) {
				System.out.println(list.get(i).getFile_original());
				String str = list.get(i).getFile_original();
				String name = str.substring(0, str.length() - 36);
				list.get(i).setFileName(name);
			}
			System.out.println(list.get(i).getFileName());
		}
		System.out.println(list);
		ModelAndView mav = new ModelAndView("/template/main");
		Channel ch = service.getChannel(cn);
	/*	String rep_name = service.getRepName(rep_id);
		mav.addObject("rep_name",rep_name);	*/	
		mav.addObject("ch",ch);
		mav.addObject("id", id);
		mav.addObject("rep_id", rep_id);
		mav.addObject("ch_list", ch_list);
		mav.addObject("user_list", user_list);
		mav.addObject("list", list);
		return mav;
	}

	@Override
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		this.context = (WebApplicationContext) applicationContext;
	}

	@RequestMapping(value = "/psot/download.do")
	public ModelAndView download(@RequestParam("filename") String fileName) {
		File downloadFile = new File(fileName);
		return new ModelAndView("download", "downloadFile", downloadFile);
	}
}