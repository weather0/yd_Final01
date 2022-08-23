package com.kcy.project;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.kcy.project.**.mapper")
public class KProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(KProjectApplication.class, args);
	}

}
