package com.green.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Cart {
	private Long cno;
	private String email;
	private Long pno;
	private int amount;
	private int total;
	
	//테이블 join
	//private String name;
	//private String productName;
	//private int price;
	
	
}
