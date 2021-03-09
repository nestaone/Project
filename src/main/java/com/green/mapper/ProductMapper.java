package com.green.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.green.domain.Product;

public interface ProductMapper {
	public List<Product> productList();//상품목록 조회
	public Product detail(Long pno);//상품정보 조회
	public void addProduct(Product product);//상품 등록
	public int update(Product product);//수정
	public int delete(Long pno);//삭제
	
	public List<Product> getCategory(@Param("category") String category);
}
