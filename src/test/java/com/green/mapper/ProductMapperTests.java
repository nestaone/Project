package com.green.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.green.domain.Product;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductMapperTests {
	@Setter(onMethod_=@Autowired)
	private ProductMapper mapper;
	
	//@Test
	public void testList() {
		mapper.productList();
	}
	
	//@Test
	public void testInsert() {
		Product product = new Product();
		product.setPname("rtx 3090");
		product.setBrand("이엠텍");
		product.setCategory("그래픽 카드");
		product.setPrice(200);
		mapper.addProduct(product);
	}
	
	//@Test
	public void testMypage() {
		mapper.detail(22L);		
	}
	
	//@Test
	public void testModify() {
		Product product = new Product();
		product.setPno(22L);
		product.setPname("rtx 3090");
		product.setBrand("갤럭시");
		product.setCategory("그래픽 카드");
		product.setPrice(190);
		mapper.update(product);
	}
	
	//@Test
	public void testRemove() {
		mapper.delete(22L);
	}
	
	@Test
	public void testCategory() {
		
		mapper.getCategory("모니터");
	}
}
