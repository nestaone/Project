package com.green.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.green.domain.Cart;
import com.green.domain.Member;
import com.green.domain.Product;
import com.green.domain.UploadVO;
import com.green.mapper.CartMapper;
import com.green.mapper.MemberMapper;
import com.green.mapper.ProductMapper;
import com.green.mapper.UploadMapper;

import lombok.Setter;

@Service
@Transactional(propagation=Propagation.REQUIRED)
public class MemberServiceImpl implements MemberService{
	@Setter(onMethod_=@Autowired)
	private MemberMapper memberMapper;
	
	@Setter(onMethod_=@Autowired)
	private ProductMapper productMapper;
	
	@Setter(onMethod_=@Autowired)
	private CartMapper cartMapper;
	
	@Setter(onMethod_=@Autowired)
	private UploadMapper uploadMapper;
	
	
//---------- 고객 메서드 ----------
	@Override //회원 목록
	public List<Member> memberList() { return memberMapper.memberList(); }

	@Override //마이페이지
	public Member mypage(String email) { return memberMapper.mypage(email); }

	@Override //회원가입
	public int regist(Member member) { int result = memberMapper.regist(member); return result; }

	@Override //회원정보 수정
	public int modify(Member member) { return memberMapper.modify(member); }

	@Override //회원정보 삭제
	public int remove(String email) { return memberMapper.remove(email); }
	
	@Override//이메일과 비밀번호 일치 여부 확인
	public Member getByEmail(String email) { return memberMapper.getByEmail(email); }
//---------- 고객 메서드 끝 ----------
	
	
//---------- 제품 메서드 ----------
	@Override //제품 목록
	public List<Product> productList() { return productMapper.productList(); }

	@Override //제품 상세
	public Product detail(Long pno) { return productMapper.detail(pno); }

	@Override //제품 추가
	public void addProduct(Product product) { productMapper.addProduct(product); }

	@Override //제품정보 수정
	public int update(Product product) { return productMapper.update(product); }

	@Override //제품 삭제
	public int delete(Long pno) { return productMapper.delete(pno); }
	
	@Override //카테고리
	public List<Product> getCategory(String category){ return productMapper.getCategory(category); }
//---------- 제품 메서드 끝 ----------

	
//---------- 장바구니 메서드 ----------	
	@Override //장바구니 리스트
	public List<Cart> cartList(String email) { return cartMapper.cartList(email); }
	
	@Override //장바구니에 추가
	public void cartInsert(Cart cart) { cartMapper.cartInsert(cart); }
	
	@Override //장바구니 개별 삭제
	public void cartDelete(Long cno) { cartMapper.cartDelete(cno); }
	
	@Override //장바구니 비우기
	public void cartDeleteAll(String email) { cartMapper.cartDeleteAll(email); }
	
	@Override //장바구니 금액 합계
	public int sumMoney(String email) { return cartMapper.sumMoney(email); }
	
	@Override
	public Product productByPno(Long pno) { return cartMapper.productByPno(pno); }
//---------- 장바구니 메서드 끝 ----------
	
	
//---------- 파일 업로드 메서드 ----------
		@Override
		public List<UploadVO> fileList() { return uploadMapper.fileList(); }

		@Override
		public void uploadFile(UploadVO vo) { uploadMapper.uploadFile(vo); }

		@Override
		public void deleteFile(String uuid) { uploadMapper.deleteFile(uuid); }
//---------- 파일 업로드 메서드 끝 ----------	
	
	
	//임시 로그인(삭제 예정)
	@Override
	public Member yourPage(String email) { return memberMapper.yourPage(email); }
}
