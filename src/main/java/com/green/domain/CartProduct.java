package com.green.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class CartProduct {
	
	private Long cno;
	private String email;
	private Long pno;
	private int amount;
	private int total;
	
    private String pname;
    private int price;

}
