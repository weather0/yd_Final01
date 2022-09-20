package com.kcy.login.service;

import lombok.Data;
import lombok.NoArgsConstructor;

// 220828 황하경
// 임시 비밀번호 mailVo
@Data
@NoArgsConstructor
public class MailDto {
	private String address;
	private String title;
	private String message;
}
