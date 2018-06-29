package com.kitri.project.repository;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;

import vo.Channel;
import vo.Member;
import vo.Repository;

@Component("repService")
public class ServiceImpl implements Service{
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	private Mapper repMapper;
	
	public void setSqlSession(SqlSession sqlSession){
		this.sqlSession=sqlSession;
	}
	
	@Override
	public Repository selectRepByUrl(String url) {
		repMapper = sqlSession.getMapper(Mapper.class);
		Repository r = repMapper.getRepositoryByUrl(url);
		return r;
	}

	@Override
	public void addRep(Repository r) {
		repMapper = sqlSession.getMapper(Mapper.class);
		repMapper.insertRep(r);
	}
	@Override
	public Repository selectRepByName(Repository r) {
		repMapper = sqlSession.getMapper(Mapper.class);
		Repository r2 = repMapper.getRepositoryByName(r);
		return r2;
	}
	
	@Override
	public Repository getRepId(Repository r) {
		repMapper = sqlSession.getMapper(Mapper.class);
		Repository r2 = repMapper.getRepIdByRepName(r);
		return r2;
	}	
	
	@Override
	public void createCh(Repository r) {
		repMapper = sqlSession.getMapper(Mapper.class);
		repMapper.insertCh(r);		
	}
	@Override
	public Channel getChId(Repository rep_id) {
		repMapper = sqlSession.getMapper(Mapper.class);
		Channel ch = repMapper.getChByRepId(rep_id);
		return ch;
	}
	@Override
	public void createUserMeta(int id, int rep_id1, int chid1) {
		repMapper = sqlSession.getMapper(Mapper.class);
		Map<String, Integer> map = new HashMap<String, Integer>(); 
		map.put("user_id", id);
		map.put("rep_id", rep_id1);
		map.put("ch_id", chid1);		
		repMapper.insertUserMeta(map);	
		
	}
	@Override
	public void addBoard(String nickname, int id, int chid1) {
		repMapper = sqlSession.getMapper(Mapper.class);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("nickname", nickname);
		map.put("user_id", id);
		map.put("ch_id", chid1);
		repMapper.insertBoard(map);
		
	}
	
	@Override
	public Member getMember(int id) {
		repMapper = sqlSession.getMapper(Mapper.class);
		Member m = repMapper.getNameById(id);
		return m;
	}


	

	@Override
	public void editRep(Repository r) {
		repMapper = sqlSession.getMapper(Mapper.class);
		repMapper.update(r);
	}

	@Override
	public void delRep(int rep_id) {
		repMapper = sqlSession.getMapper(Mapper.class);
		repMapper.delete(rep_id);
	}

	


	

	
	

	

	

	

}
