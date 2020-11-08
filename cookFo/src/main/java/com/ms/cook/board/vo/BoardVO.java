package com.ms.cook.board.vo;

import java.util.Date;

public class BoardVO {
	private int bno;			//BNO	NUMBER	No		1	글번호
	private String title;		//TITLE	VARCHAR2(100 BYTE)	Yes		2	글제목
	private String content;		//CONTENT	VARCHAR2(3000 BYTE)	Yes		3	글내용
	private String writer;		//WRITER	VARCHAR2(40 BYTE)	Yes		4	작성자
	private String pw;			//PW	VARCHAR2(40 BYTE)	Yes		5	비밀번호
	private Date cdate;			//CDATE	TIMESTAMP(6)	Yes	systimestamp 	6	작성일
	private int cnt;			//CNT	NUMBER	Yes	0 	7	조회수
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
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
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public Date getCdate() {
		return cdate;
	}
	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	
	
}
