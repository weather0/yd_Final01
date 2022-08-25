package com.kcy;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootTest
public class secuTest {
	@Autowired
	BCryptPasswordEncoder password;
	
	@Test	
	public void test1() {
		String raw = password.encode("test2");
		System.out.println(raw);
	}
}
