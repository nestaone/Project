package com.green.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.green.domain.Member;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class MemberMapperTests {
	@Setter(onMethod_=@Autowired)
	private MemberMapper mapper;
	
	//@Test
	public void testList() {
		mapper.memberList();
	}
	
	//@Test
	public void testInsert() {
		Member member = new Member();
		member.setEmail("green@naver.com");
		member.setPassword("1234");
		member.setName("조양현");
		member.setZipcode(12345);
		member.setAddress("쌍령동");
		member.setAddress2("포레힐스 1");
		member.setPhone("010-111-1111");
		mapper.regist(member);
	}
	
	//@Test
	public void testMypage() {
		mapper.mypage("nestaone");		
	}
	
	//@Test
	public void testModify() {
		Member member = new Member();
		member.setEmail("green2@gmail.com");
		member.setPassword("1234");
		member.setName("조양현");
		member.setZipcode(12345);
		member.setAddress("쌍령동");
		member.setAddress2("포레힐스 1");
		member.setPhone("010-222-2222");
		mapper.modify(member);
	}
	
	//@Test
	public void testRemove() {
		mapper.remove("green2");
	}
	
	//@Test
	public void testYourPage() {		
		mapper.yourPage("green3");
	}
}
