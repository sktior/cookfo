package com.ms.cook.recipe.vo;

import org.springframework.web.multipart.MultipartFile;

public class RecipeVO {
	private int rno;			//RNO	NUMBER	No		1	고유번호
	private String name;		//NAME	VARCHAR2(100 BYTE)	Yes		2	메뉴이름
	private String category;	//CATEGORY	VARCHAR2(100 BYTE)	Yes		3	종류
	private String way;			//WAY	VARCHAR2(3000 BYTE)	Yes		4	제조법
	private int kcal;			//KCAL	NUMBER	Yes		5	칼로리
	private int pro;			//PRO	NUMBER	Yes		6	단백질
	private int fat;			//FAT	NUMBER	Yes		7	지발
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	private String img5;
	private MultipartFile img1_t;		//IMG1	VARCHAR2(1000 BYTE)	Yes		8	메인사진
	private MultipartFile img2_t;		//IMG2	VARCHAR2(1000 BYTE)	Yes		9	사진2
	private MultipartFile img3_t;		//IMG3	VARCHAR2(1000 BYTE)	Yes		10	사진3
	private MultipartFile img4_t;		//IMG4	VARCHAR2(1000 BYTE)	Yes		11	사진4
	private MultipartFile img5_t;		//IMG5	VARCHAR2(1000 BYTE)	Yes		12	사진5
	
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getWay() {
		return way;
	}
	public void setWay(String way) {
		this.way = way;
	}
	public int getKcal() {
		return kcal;
	}
	public void setKcal(int kcal) {
		this.kcal = kcal;
	}
	public int getPro() {
		return pro;
	}
	public void setPro(int pro) {
		this.pro = pro;
	}
	public int getFat() {
		return fat;
	}
	public void setFat(int fat) {
		this.fat = fat;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
	public String getImg4() {
		return img4;
	}
	public void setImg4(String img4) {
		this.img4 = img4;
	}
	public String getImg5() {
		return img5;
	}
	public void setImg5(String img5) {
		this.img5 = img5;
	}
	public MultipartFile getImg1_t() {
		return img1_t;
	}
	public void setImg1_t(MultipartFile img1_t) {
		this.img1_t = img1_t;
	}
	public MultipartFile getImg2_t() {
		return img2_t;
	}
	public void setImg2_t(MultipartFile img2_t) {
		this.img2_t = img2_t;
	}
	public MultipartFile getImg3_t() {
		return img3_t;
	}
	public void setImg3_t(MultipartFile img3_t) {
		this.img3_t = img3_t;
	}
	public MultipartFile getImg4_t() {
		return img4_t;
	}
	public void setImg4_t(MultipartFile img4_t) {
		this.img4_t = img4_t;
	}
	public MultipartFile getImg5_t() {
		return img5_t;
	}
	public void setImg5_t(MultipartFile img5_t) {
		this.img5_t = img5_t;
	}
	@Override
	public String toString() {
		return rno + 
		name + 
		category+	
		way +		
		kcal +		
		pro +	
		fat +			
		img1 +	
		img2 +	
		img3 +	
		img4 +		
		img5 ;	
	}
}
