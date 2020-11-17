package com.ms.cook.member.svc;

import java.util.HashMap;
import java.util.Map;

import com.ms.cook.member.vo.MemberVO;

public interface MemberSVC {
	public int newMember(MemberVO vo);
	public Map<String, String> chkID(String id);
	public Map<String, String> chkEMAIL(String email);
	public MemberVO login(String id);
	public int doMod(MemberVO vo);
	public String getPw(String id);
	public int doDel(HashMap<String,Object>param);
}
