package com.ms.cook.jjim.vo;

import java.util.Date;

public class JjimVO {
	private int jno;		//JNO	NUMBER	No		1	시퀀스번호
	private String id;		//ID	VARCHAR2(40 BYTE)	Yes		2	사용자아이디
	private String name;	//NAME	VARCHAR2(100 BYTE)	Yes		3	레시피이름
	private Date cdate;		//CDATE	TIMESTAMP(6)	Yes	systimestamp 	4	등록일
	public int getJno() {
		return jno;
	}
	public void setJno(int jno) {
		this.jno = jno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getCdate() {
		return cdate;
	}
	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}
	
}
