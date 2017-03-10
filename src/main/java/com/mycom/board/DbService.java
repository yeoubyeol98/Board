package com.mycom.board;

import java.util.HashMap;
import javax.servlet.http.HttpServletRequest;


public interface DbService {
	public HashMap<String , Object> getBlockList(HttpServletRequest req);
	public void insert(HttpServletRequest req);
	public HashMap<String , Object> textView(HttpServletRequest req);
}
