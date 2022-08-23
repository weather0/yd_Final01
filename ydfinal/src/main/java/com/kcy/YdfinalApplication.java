package com.kcy;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.kcy.**.mapper")
public class YdfinalApplication {

	public static void main(String[] args) {
		SpringApplication.run(YdfinalApplication.class, args);
	}

}
