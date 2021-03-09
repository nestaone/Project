package com.green.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.green.domain.Cart;
import com.green.domain.CartProduct;
import com.green.domain.Member;
import com.green.domain.Product;
import com.green.domain.UploadVO;
import com.green.service.MemberService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/product/*")
public class ProductController {
	@Autowired
	private MemberService service;
	
	//제품 리스트 Get
	@GetMapping("/productList")
	public String getShop(Model model, String email, Product product, Cart cart) {
		
		List<Product> productList = service.productList();
		Member member = service.mypage(email);

		model.addAttribute("product", productList);
		model.addAttribute("member", member);
		
		System.out.println("productList.jsp product 정보 = " + productList);
		System.out.println("productList.jsp member 정보 = " + member);
		//-----------------------------------------------------------------------
		List<Cart> list = service.cartList(email);//장바구니 목록메뉴
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
		
		model.addAttribute("total", sumMoney);
		
		return "/product/productList";
	}

	private String getFolder() {//폴더를 연/월/일 로 생성하는 함수

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		Date date = new Date();

		String str = sdf.format(date);

		return str.replace("-", File.separator);
	}
	
	//제품 등록(관리자) Get
	@GetMapping("/addproduct")
	public String getAddProduct(Member member) {
		String email = member.getEmail();
		System.out.println("addproduct로 들어온 email은? : " + email);
		return "product/addproduct";
	}
	@PostMapping("/addproduct")
	public String postAddProduct(MultipartFile[] uploadFile, Product product, Member member, UploadVO vo) {
		//List<UploadVO> list = new ArrayList<>();

		log.info("uploadVO 는? : " + vo);
		
		String uploadFolder = "D://upload//temp";
		
		String uploadFolderPath = getFolder();
		
		//make folder
		File uploadPath = new File(uploadFolder, uploadFolderPath);
		log.info("업로드 경로 : " + uploadPath);
		
		if(uploadPath.exists() == false) {
			uploadPath.mkdirs();
		}//폴더 경로를 못 찾으면 연/월/일로 폴더를 새로 만듦
		
		//업로드 파일 정보 출력 및 폴더에 저장
		for(MultipartFile multipartFile : uploadFile) {
			UploadVO uploadVO = new UploadVO();
			
			log.info("File Name : " + multipartFile.getOriginalFilename());
			log.info("File Size : " + multipartFile.getSize());
			log.info("File Type : " + multipartFile.getContentType());
			
			String uploadFileName = multipartFile.getOriginalFilename();
			uploadFileName = uploadFileName.substring(uploadFileName.lastIndexOf("\\") +1);
			log.info("only file name : " + uploadFileName);
			
			uploadVO.setFileName(uploadFileName);
			
			//파일 이름 중복 방지
			UUID uuid = UUID.randomUUID();
			uploadFileName = uuid.toString() + "_" + uploadFileName;
			
			File saveFile = new File(uploadPath, uploadFileName);

			try {
				multipartFile.transferTo(saveFile);
				
				uploadVO.setUuid(uuid.toString());
				uploadVO.setUploadPath(uploadFolderPath);
			} catch(Exception e){
				log.error(e.getMessage());
			}
		}//end for
		
		service.addProduct(product);
		service.uploadFile(vo);
		return "redirect:/product/productList?email=" + member.getEmail();
	}
		

	@PostMapping("/category")
	public List<Product> category(String category) {
		return service.getCategory(category);
	}
}
