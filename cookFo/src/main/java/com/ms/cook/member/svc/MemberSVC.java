package com.ms.cook.member.svc;

import java.util.Map;

import com.ms.cook.member.vo.MemberVO;

public interface MemberSVC {
	public int newMember(MemberVO vo);
	public Map<String, String> chkID(String id);
	public Map<String, String> chkEMAIL(String email);
	public MemberVO login(String id);
}
