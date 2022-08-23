package com.kcy.project.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Controller
public class testController {
	@GetMapping("/test/test1")
	@ResponseBody
	public String test1() {
		return "<h1>main</h1>";
	}
}
