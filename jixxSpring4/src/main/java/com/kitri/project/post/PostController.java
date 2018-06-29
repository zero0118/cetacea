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
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import vo.Post;

@Controller
public class PostController implements ApplicationContextAware{
	@Resource(name="postService")
	private Service service;
	private WebApplicationContext context = null;
	
	@RequestMapping(value = "/post/write.do")
	public String write(Post post, HttpServletRequest req) {
		HttpSession session = req.getSession(false);
		MultipartFile file = post.getFile();
		System.out.println(file.getOriginalFilename());
		if (file.getOriginalFilename() != "") {
			int pos = file.getOriginalFilename().lastIndexOf( "." );
			String ext = file.getOriginalFilename().substring( pos );
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
	
	@RequestMapping(value = "/post/list.do", method=RequestMethod.GET)
	public ModelAndView list(@RequestParam(value = "page") int page, @RequestParam(value = "cn") int cn) {
		ArrayList<Post> list = service.show(page, cn);
		System.out.println(list);
		for (int i = 0; i < list.size(); i++) {			
			if (list.get(i).getFile_original() != null && !list.get(i).getFile_original().equals("x")) {
				System.out.println(list.get(i).getFile_original());
				String str = list.get(i).getFile_original();
				String name = str.substring(0, str.length()-36);
				list.get(i).setFileName(name);
			}
			System.out.println(list.get(i).getFileName());				
		}
		System.out.println(list);
		ModelAndView mav = new ModelAndView("/template/main");
		mav.addObject("list", list);
		return mav;
	}

	@Override
	public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
		this.context   = (WebApplicationContext) applicationContext;
	}
	
	@RequestMapping(value = "/psot/download.do")
	public ModelAndView download(@RequestParam("filename") String fileName) {
		File downloadFile = new File(fileName);
		return new ModelAndView("download", "downloadFile", downloadFile);
	}
	
}