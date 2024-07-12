package com.kjhe1234.homepage.dto;

public class PageDto {
	
	private int startPage;  // 화면에 보여질 하단 페이지 번호 중 시작 페이지 번호
	private int endPage;    // 화면에 보여질 하단 페이지 번호 중 끝 페이지 번호
	private boolean next; // 현재 보여지고 있는 페이지 이상으로 페이지가 더 있는지의 여부
	private boolean prev; // 현재 보여지고 있는 페이지 이하로 페이지가 더 있는지의 여부
	private int total; // 총 글의 개수
	private Criteria criteria; // criteria 내의 변수 값들을 불러오기 위한 객체 선언
	
	public PageDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PageDto(int startPage, int endPage, boolean next, boolean prev, int total, Criteria criteria) {
		super();
		this.startPage = startPage;
		this.endPage = endPage;
		this.next = next;
		this.prev = prev;
		this.total = total;
		this.criteria = criteria;
	}

	public PageDto(int total, Criteria criteria) {
		//super();
		this.total = total;
		this.criteria = criteria;
		
		this.endPage = (int) ((Math.ceil(criteria.getPageNum()/10.0))*10);
		// Math.ceil -> 올림 페이지 값이 1~10일때 endPage 값이 10으로 셋팅
		// 페이지 값이 11~20일때 endPage 값이 20으로 셋팅
		this.startPage = this.endPage -9;
		// 총 128개의 글이 존재
		// 1 2 3 4 5 6 7 8 9 10 next
		// prev 11 12 13
		int realEndPage = (int) Math.ceil(total*1.0 /criteria.getAmount());
		// 실제 총 글 수로 계산한 페이지 번호 -> 총글의 개수가 128개면 13페이지 까지만 출력되어야 함
		
		if(realEndPage < this.endPage) {  // 실제 페이지의 개수가 계산한 endPage 수보다 작을때만 교체
			this.endPage = realEndPage;
		}
		this.prev = this.startPage > 1; //startPage 값이 1만 아니면 prev 가 true로 저장되어야 함
		this.next = realEndPage > this.endPage;
		// 마지막 페이지 번호가 실제 페이지 번호보다 작은 경우메만 next가 true로 저장되어야 함
		
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public Criteria getCriteria() {
		return criteria;
	}

	public void setCriteria(Criteria criteria) {
		this.criteria = criteria;
	}
	
	
	
	
	
	
	
}
