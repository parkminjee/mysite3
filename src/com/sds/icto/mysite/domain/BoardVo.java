package com.sds.icto.mysite.domain;

public class BoardVo {
	private int no;
	private String title;
	private String content;
	private int member_no;
	private String member_name;
	private String reg_date;
	
	public BoardVo(int no, String title, String content, int member_no, String member_name, String reg_date){
		super();
		this.no = no;
		this.title = title;
		this.content=content;
		this.member_no=member_no;
		this.member_name=member_name;
		this.reg_date=reg_date;
	}
	
	public BoardVo(){
		
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}

	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	
	
}
