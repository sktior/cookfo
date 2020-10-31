package com.ms.cook.member.vo;

import java.sql.Date;

public class MemberVO {
	private String id;				//ID	VARCHAR2(20 BYTE)	No		1	아이디
	private String pw;				//PW	VARCHAR2(300 BYTE)	Yes		2	비밀번호
	private String name;			//NAME	VARCHAR2(20 BYTE)	Yes		3	이름
	private String address;			//ADDRESS	VARCHAR2(500 BYTE)	Yes		4	주소
	private Date cdate;				//CDATE	TIMESTAMP(6)	Yes	systimestamp 	6	가입날짜
	private String email; 			//EMAIL	VARCHAR2(200 BYTE)	Yes		7	이메일
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getCdate() {
		return cdate;
	}
	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "id : " + id + " pw : " + pw + " name : " + name + " address : " + address + " cdate : " + cdate + 
				" email : " + email;
	}
	
}
