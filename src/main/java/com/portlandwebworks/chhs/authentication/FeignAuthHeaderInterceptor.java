package com.portlandwebworks.chhs.authentication;

import feign.RequestInterceptor;
import feign.RequestTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Simple feign interceptor that automatically adds the Token header to any 
 * requests if an Authentication principle is available in the SecurityContext.
 * 
 * @author nick
 */
public class FeignAuthHeaderInterceptor implements RequestInterceptor {

	private static Logger log = LoggerFactory.getLogger(FeignAuthHeaderInterceptor.class);
	
	@Override
	public void apply(RequestTemplate rt) {
		log.warn("Will add auth token to headers here.");
	}

}
