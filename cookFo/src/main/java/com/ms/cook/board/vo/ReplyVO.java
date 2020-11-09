package com.ms.cook.board.vo;

import java.sql.Date;

public class ReplyVO {
	private int rno;		//RNO	NUMBER	No		1	댓글번호
	private int bno_num;	//BNO_NUM	NUMBER	Yes		2	원글 그룹
	private int depth;		//DEPTH	NUMBER	Yes		3	계층
	private String writer;	//WRITER	VARCHAR2(40 BYTE)	Yes		4	작성자
	private String content;	//CONTENT	VARCHAR2(3000 BYTE)	Yes		5	내용
	private String pw;		//PW	VARCHAR2(40 BYTE)	Yes		6	패스워드
	private Date cdate;		//CDATE	TIMESTAMP(6)	Yes	systimestamp 	7	작성일
	private int parent_id;	//PARENT_ID	NUMBER	No		8	부모글
	
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getBno_num() {
		return bno_num;
	}
	public void setBno_num(int bno_num) {
		this.bno_num = bno_num;
	}
	public int getDepth() {
		return depth;
	}
	public void setDepth(int depth) {
		this.depth = depth;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	public int getParent_id() {
		return parent_id;
	}
	public void setParent_id(int parent_id) {
		this.parent_id = parent_id;
	}
	
}
