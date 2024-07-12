package com.kjhe1234.homepage.dao;

import java.util.ArrayList;

import com.kjhe1234.homepage.dto.BoardDto;

public interface BoardDao {
	
	public void writeDao(String bid, String bname, String btitle, String bcontent); // 게시판 글쓰기
	public ArrayList<BoardDto> listDao(int amount, int pageNum); // 게시판 리스트 가져오기
	// 페이징을 위해서 한페이지당 보여질 글의 개수, 사용자가 클릭한 페이지의 번호를 인수로 필요함
	public BoardDto contentViewDao(String bnum); // 글 내용 보기
	public void contentModifyDao(String bnum, String btitle, String bcontent); //글 내용 수정
	public void contentDeleteDao(String bnum); // 글 삭제하기
	public int boardTotalCountDao(); // 게시판에 저장된 모든글의 총 개수 확인
	public ArrayList<BoardDto> searchKeyDao(int amoint, int pageNum, String searchKey); // 게시판 제목 또는 내용 키워드 검색
	public int searchResultTotalDao(String searchKey); //게시판 검색 결과글 총 개수  
	
	
	
}
