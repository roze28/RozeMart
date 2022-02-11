package com.rozemart.admin;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;

@SpringBootApplication
@EntityScan({"com.rozemart.common.entity","com.rozemart.admin.user"})
public class RozemartBackEndApplication {

	public static void main(String[] args) {
		SpringApplication.run(RozemartBackEndApplication.class, args);
	}

}
