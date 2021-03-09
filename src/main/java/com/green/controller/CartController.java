package com.green.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.green.domain.Cart;
import com.green.domain.CartProduct;
import com.green.domain.Member;
import com.green.domain.Product;
import com.green.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/cart/*")
public class CartController {
	@Autowired
	private MemberService service;
	
	@GetMapping("/cartInsert")
	public String cartInsert(Model model, Product product, Cart cart) {
		
		int sumMoney = service.sumMoney(cart.getEmail());
		cart.setTotal(sumMoney);
		cart.setCno(100L);
		//System.out.println("cartInset : "+ cart);
		
		service.cartInsert(cart);
		return "redirect:/cart/cartList?email="+cart.getEmail();
	}
	
	@GetMapping("/cartList")
	public String cartList(Model model, Product product, Cart cart) {
		
		//System.out.println("cartList cart 정보 : " + cart);
		
		String email = cart.getEmail();
		//System.out.println("cart에 저장된 유저 id : " + email);
		
		List<Cart> list = service.cartList(email);//장바구니 목록
		List<CartProduct> cartProdList = new ArrayList<CartProduct>();
		list.forEach(i -> {
			
			//System.out.println("cartList i : " + i + "cno" + i.getCno());
			//System.out.println("pno에 따른 제품 목록" + service.productByPno(i.getPno()));
			
			Product getProduct = service.productByPno(i.getPno());
			
			//product 정보를 담음
			CartProduct cartProd = new CartProduct();
			cartProd.setAmount(i.getAmount());
			cartProd.setCno(i.getCno());
			cartProd.setEmail(i.getEmail());
			cartProd.setPno(i.getPno());
			
			//cart 정보를 담음
			cartProd.setPname(getProduct.getPname());
			cartProd.setPrice(getProduct.getPrice());
			
			cartProdList.add(cartProd);
		});
		
		//System.out.println("cart에 담긴 제품 리스트 : " + cartProdList);
		int sumMoney = service.sumMoney(email);//결제할 금액 합계
		
		//System.out.println("cartList product 정보 " + product);
		
		model.addAttribute("cart", cartProdList);
		model.addAttribute("email", email);
		model.addAttribute("total", sumMoney);
		
		return "/cart/cartList";
			
	}
	
	@GetMapping("/cartDelete")//장바구니 개별 삭제
	public String getCartDelete(Long cno, Cart cart) {
		System.out.println("delete cno : " + cno);
		System.out.println("delete : " + cart.getEmail());
		service.cartDelete(cno);
		return "redirect:/cart/cartList?email="+cart.getEmail();
	}
	
	
	@GetMapping("/cartDeleteAll")//장바구니 전체 삭제
	public String gettCartDeleteAll(String email) {
		System.out.println("deleteAll email : " + email);
		service.cartDeleteAll(email);
		return "redirect:/?email="+email;
	}
	
	@GetMapping("/a")
	public String aaa() {
		return "/cart/1";
	}
}
