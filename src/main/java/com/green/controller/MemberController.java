package com.green.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.green.domain.Cart;
import com.green.domain.CartProduct;
import com.green.domain.Member;
import com.green.domain.Product;
import com.green.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/member/*")
public class MemberController {

	@Autowired
	private MemberService service;
	
/* ------------------ 고객 관련(member 폴더) ------------------ */		
	//로그인
	@GetMapping("/login")
	public String getLogin() {
		System.out.println("여기 로그인 컨트롤러 get 들어오나");
		return "member/login";
	}
	@PostMapping("/login")
	public String postLogin(Model model, Member member, RedirectAttributes rttr) {
		System.out.println("------로그인 포스트가 들어오나----------"+member);
		try {
			Member person = service.getByEmail(member.getEmail());
			if(person.getPassword().equals(member.getPassword())) {
				rttr.addAttribute("email", member.getEmail());
				return "redirect:/";
			}
			else return "member/error";
		} catch (Exception e) {
			System.out.println("에외가 발생하였습니다.");
			return "member/error";
		}
	}
	
	//회원가입
	@GetMapping("/register")
	public String getRegister() {
		return "member/register";
	}
	@PostMapping("/register")
	public String postRegister(Model model, Member member) {
		int result = service.regist(member);
		System.out.println("여기 등록포스트 컨트롤러 회원등록 후 반환된 결과값 " +result);
		if(result == 1) {
			model.addAttribute("result",result);
			return "member/register";
		}
		else {
			return "member/register";
		}
	}
	
	//마이페이지 Get
	@GetMapping("/mypage")
	public String getMypage(Model model, String email) {
		System.out.println("email = " + email);
		Member member = service.mypage(email);
		System.out.println("member = " + member);
		model.addAttribute("mypage", member);
		
		List<Cart> list = service.cartList(email);//장바구니 목록
		List<CartProduct> cartProdList = new ArrayList<CartProduct>();
		list.forEach(i -> {
			
			System.out.println("cartList i : " + i + "cno" + i.getCno());
			System.out.println("pno에 따른 제품 목록" + service.productByPno(i.getPno()));
			
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
		
		int sumMoney = service.sumMoney(email);//결제할 금액 합계
		
		model.addAttribute("cart", cartProdList);
		model.addAttribute("email", email);
		model.addAttribute("total", sumMoney);
		
		return "member/mypage";
	}
	
	//고객정보 수정 Get
	@GetMapping("/modify")
	public String getModify(Model model, String email) {
		model.addAttribute("modify", service.mypage(email));
		return "member/modify";
	}
	//고객정보 수정 Post
	@PostMapping("/modify")
	public String postModify(Member member) {
		service.modify(member);
		return "redirect:/member/mypage?email="+member.getEmail();
	}
/* ------------------ 고객 관련 끝(member 폴더) ------------------ */	
	
}
