package com.kjhe1234.homepage.dao;

public interface MemberDao {
	
	public void joinDao(String mid, String mpw, String mname, String memail); // 회원 가입
	public int idcheckDao(String mid); // 아이디 존재여부 반환

}
