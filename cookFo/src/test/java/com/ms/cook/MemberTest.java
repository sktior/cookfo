package com.ms.cook;

import javax.inject.Inject;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.ms.cook.member.dao.MemberDAO;
import com.ms.cook.member.vo.MemberVO;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class MemberTest {
	@Inject
	//@Qualifier : spring 컨테이너에 동일타입의 bean이 존재할경우 명시적으로 참조하고자하는 bean을 지정할때사용
	//spring컨테이너에서 관리되는 bean이름은 특별히 지정해주지 않으면 클래스명을 기본값으로 갖는다(첫글자는 소문자)
	@Qualifier("memberDAOImpl")
	MemberDAO memberDAO;	
	
	@Test
	@DisplayName("회원등록")
	void newMember() {
		MemberVO memberVO = new MemberVO();
		memberVO.setId("eeee2");
		memberVO.setPw("123123");
		memberVO.setName("테스트");
		memberVO.setAddress("부산");
		memberVO.setProfile("경로");
		memberVO.setEmail("sktior@naver.com");
		
		int cnt = memberDAO.newMember(memberVO);
		Assertions.assertEquals(1, cnt);
	}
}
