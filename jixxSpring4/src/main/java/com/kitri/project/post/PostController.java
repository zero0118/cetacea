package com.kitri.project.post;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import vo.Post;

@Controller
public class PostController {
	@Resource(name="postService")
	private Service service;
	
	@RequestMapping(value = "/post/write.do")
	public String write(Post post, HttpServletRequest req) {
		System.out.println("컨트롤러 들어옹");
		HttpSession session = req.getSession(false);
		
		MultipartFile file = post.getFile();
		int pos = file.getOriginalFilename().lastIndexOf( "." );
		String ext = file.getOriginalFilename().substring( pos );
		String name = file.getOriginalFilename().substring(0, pos);
		String path = "D:\\files\\" + name + UUID.randomUUID().toString() + ext;
		if (file != null) {
			File f = new File(path);
			try {
				file.transferTo(f);
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			post.setFile_original(path);
		}
		post.setUser_id(1);
		post.setUser_id(Integer.parseInt(session.getAttribute("id").toString()));
		System.out.println(post);
		service.write(post);
		return "template/main";
	}
}