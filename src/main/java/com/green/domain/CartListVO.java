package com.green.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class CartListVO {
	//private Long no;
	private String id;
	private Long productId;
	//private int price;
	private String productName;
	//private String brand;
	//private String category;
	//private String description;
	private int amount;
	private int total;
}
