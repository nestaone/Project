package com.green.mapper;

import java.util.List;

import com.green.domain.Cart;
import com.green.domain.Product;

public interface CartMapper {
	public List<Cart> cartList(String email);//장바구니 목록
	public void cartInsert(Cart cart);//장바구니 추가
	public void cartDelete(Long cno);//장바구니 개별 삭제
	public void cartDeleteAll(String email);//장바구니 비우기
	public int sumMoney(String email);//장바구니 금액 합계
	public Product productByPno(Long pno);
}
