package com.green.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Product {
	private Long pno;
    private String pname;
    private String brand;
    private String category;
    private int price;
    private String description;
    
}
