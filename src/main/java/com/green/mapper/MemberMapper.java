package com.green.mapper;

import java.util.List;

import com.green.domain.Member;

public interface MemberMapper {
	
	public List<Member> memberList();//목록조회
	public Member mypage(String email);//고객정보 조회
	public int regist(Member member);//회원가입
	public int modify(Member member);//수정
	public int remove(String email);//삭제
	public Member getByEmail(String email);//이메일 주소와 비밀번호 일치 여부 확인
	
	public Member yourPage(String email);//임시 로그인(삭제 예정)
	
}
