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
	private Long cno, pno;
	private String email, pname;
	private int amount, price;
	private int total;
}
