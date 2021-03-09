package com.green.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Member {
	private Long no;
	private String email;
	private String password;
	private String name;
	private String address;
	private String address2;
	private int zipcode;
	private String phone;
}
