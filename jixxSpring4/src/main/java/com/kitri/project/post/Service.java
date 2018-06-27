package com.kitri.project.post;

import java.util.ArrayList;

import vo.Post;

public interface Service {
	public void write(Post post);
	public ArrayList<Post> show(int page);
	public Post change(Post post);
	public void delete(int Post_id);
}
