package com.kitri.project.post;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import vo.Post;

@Component("postService")
public class ServiceImpl implements Service {
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private Mapper mapper;
	
	@Override
	public void write(Post post) {
		mapper = sqlSession.getMapper(Mapper.class);
		if (post.getFile_thumbnail() == null) {
			post.setFile_thumbnail("no");
		}
		mapper.insert(post);
	}

	@Override
	public ArrayList<Post> show(int page) {
		return null;
	}

	@Override
	public Post change(Post post) {
		return null;
	}

	@Override
	public void delete(int Post_id) {
		
	}

}
