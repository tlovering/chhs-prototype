package com.portlandwebworks.chhs;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;

/**
 *
 * @author nick
 */
@SpringBootApplication
@EnableWebSecurity
public class FrontEndApp {

	public static void main(String... args) {
		SpringApplication app = new SpringApplication(FrontEndApp.class);
		app.run(args);
	}

}
