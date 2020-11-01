package com.ms.cook.member.dao;

import java.util.Map;

import com.ms.cook.member.vo.MemberVO;

public interface MemberDAO {
	public int newMember(MemberVO vo);
	public Map<String, String> chkID(String id);
	public Map<String, String> chkEMAIL(String email);
	public MemberVO login(String id);
	public int doMod(MemberVO vo);
}
