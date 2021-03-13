package com.green.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.green.domain.Cart;
import com.green.domain.Member;
import com.green.domain.Product;
import com.green.domain.UploadVO;

public interface MemberService {
	//회원
	public List<Member> memberList();//목록조회
	public Member mypage(String email);//고객정보 조회
	public int regist(Member member);//회원가입
	public int modify(Member member);//수정
	public int remove(String email);//삭제
	public Member getByEmail(String email);//이메일 주소와 비밀번호 일치 여부 확인
	
	//제품
	public List<Product> productList();//제품 목록
	public Product detail(Long pno);//제품 상세정보
	public void addProduct(Product product);//제품 추가
	public int update(Product product);//수정
	public int delete(Long pno);//삭제
	
	public List<Product> getCategory(String category);//카테고리
	
	//장바구니
	public List<Cart> cartList(String email);//장바구니 목록
	public void cartInsert(Cart cart);//장바구니 추가
	public void cartDelete(Long cno);//장바구니 개별 삭제
	public void cartDeleteAll(String email);//장바구니 비우기
	public int sumMoney(String email);//장바구니 합계
	public Product productByPno(Long pno);
	
	//파일 업로드
	public List<UploadVO> fileList();
	public void uploadFile(UploadVO vo);
	public void deleteFile(String uuid);
}
