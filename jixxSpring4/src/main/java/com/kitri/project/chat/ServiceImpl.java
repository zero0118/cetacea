package com.kitri.project.chat;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;


import vo.Post;

public class ServiceImpl implements Service {
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private Mapper mapper;
	
	@Override
	public void write(Post post) {
		mapper = sqlSession.getMapper(Mapper.class);
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
