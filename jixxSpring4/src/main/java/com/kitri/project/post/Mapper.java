package com.kitri.project.post;

import java.util.ArrayList;

import vo.Post;

public interface Mapper {
	public void insert(Post post);
	public ArrayList<Post> selectAll(int page);
	public Post update(Post post);
	public void delete(int post_id);
}
