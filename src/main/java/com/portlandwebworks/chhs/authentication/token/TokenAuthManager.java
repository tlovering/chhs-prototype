/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.portlandwebworks.chhs.authentication.token;

import com.portlandwebworks.chhs.authentication.AuthenticatedUser;
import java.util.Arrays;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.stereotype.Component;

/**
 *
 * @author nick
 */
@Component
public class TokenAuthManager implements AuthenticationManager {

	private Logger log = LoggerFactory.getLogger(TokenAuthManager.class);
	
	@Override
	public Authentication authenticate(Authentication a) throws AuthenticationException {
		AuthenticatedUser user = new AuthenticatedUser("pre-auth", Arrays.asList("ROLES_USER"));
		log.warn("Dummy pre-auth setup. Always true if header set.");
		return new UsernamePasswordAuthenticationToken(user, a.getCredentials(), user.getAuthorities());
	}
}
