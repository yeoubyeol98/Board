package com.mycom.board;

import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DbServiceImp implements DbService{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public HashMap<String , Object> getBlockList(HttpServletRequest req) {
		
		HashMap<String , Object> map = new HashMap<String , Object>();
		List<HashMap> outputs = sqlSession.selectList("select");
		System.out.println(outputs);
		map.put("result",outputs);
		System.out.println(map);
		return map;
		
	}
	
	@Override
	public void insert(HttpServletRequest req) {
		HashMap<String , Object> map = new HashMap<String , Object>();
		map.put("title", req.getParameter("title"));
		map.put("text", req.getParameter("text"));
		map.put("user_id", req.getParameter("user_id"));
		sqlSession.insert("insert",map);		
	}
	
	@Override
	public HashMap<String , Object> textView(HttpServletRequest req) {
		
		HashMap<String , Object> map = new HashMap<String , Object>();
		map.put("id", req.getParameter("id"));
		System.out.println(req.getParameter("id"));
		List<HashMap> outputs = sqlSession.selectList("textView",map);
		System.out.println(outputs);
		map.put("result",outputs);
		System.out.println(map);
		return map;
		
	}
	

}
