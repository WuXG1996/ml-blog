package com.extlight;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.scheduling.annotation.EnableAsync;

@Slf4j
@EnableAsync
@EnableCaching
@SpringBootApplication
public class MlBlogApplication extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        log.trace("this is trace level!!");
        log.debug("this is debug level!!");
        log.info("this is info level!!");
        log.warn("this is warn level!!");
        log.error("this is error level!!");

		return application.sources(MlBlogApplication.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(MlBlogApplication.class, args);
	}
}
