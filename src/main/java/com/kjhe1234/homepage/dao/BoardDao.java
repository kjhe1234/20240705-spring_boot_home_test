package com.kjhe1234.homepage.dao;

import java.util.ArrayList;

import com.kjhe1234.homepage.dto.BoardDto;

public interface BoardDao {
	
	public void writeDao(String bid, String bname, String btitle, String bcontent); // 게시판 글쓰기
	public ArrayList<BoardDto> listDao(); // 게시판 리스트 가져오기
	public BoardDto contentViewDao(String bnum); // 글 내용 보기
	public void contentModifyDao(String bnum, String btitle, String bcontent); //글 내용 수정
	public void contentDeleteDao(String bnum); // 글 삭제하기
	public int boardTotalCountDao(); // 게시판에 저장된 모든글의 총 개수 확인
	
	
	
	
	
}
