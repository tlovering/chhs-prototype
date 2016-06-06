/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.portlandwebworks.chhs.authentication.token;

import com.portlandwebworks.chhs.authentication.AuthenticatedUser;
import com.portlandwebworks.chhs.authentication.AuthenticationResponse;
import com.portlandwebworks.chhs.authentication.TokenClient;
import com.portlandwebworks.chhs.authentication.exceptions.InvalidCredentialsException;
import java.util.List;
import java.util.stream.Collectors;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.stereotype.Component;

/**
 *
 * @author nick
 */
@Component
public class TokenAuthManager implements AuthenticationManager {

	private final static Logger log = LoggerFactory.getLogger(TokenAuthManager.class);

	private final TokenClient tokenClient;

	@Autowired
	public TokenAuthManager(TokenClient tokenClient) {
		this.tokenClient = tokenClient;
	}

	@Override
	public Authentication authenticate(Authentication a) throws AuthenticationException {
		try {
			log.debug("Checking to see if token {} is valid.", a.getPrincipal());
			AuthenticationResponse currentAuth = tokenClient.currentAuth((String) a.getPrincipal());
			AuthenticatedUser user =  new AuthenticatedUser(currentAuth.getUsername(), currentAuth.getRoles());
			log.debug("User details: {}", ToStringBuilder.reflectionToString(currentAuth, ToStringStyle.MULTI_LINE_STYLE));
			final UsernamePasswordAuthenticationToken userToken = new UsernamePasswordAuthenticationToken(user, currentAuth.getToken(), user.getAuthorities());
			userToken.setDetails(user);
			log.debug("Token valid, returning authentication details.");
			return userToken;
		} catch (InvalidCredentialsException ex) {
			throw new BadCredentialsException("Token is no longer valid.");
		} catch (Exception ex) {
			log.error("Error getting pre-auth info.", ex);
			throw new BadCredentialsException("Token is no longer validsss.");

		}
	}
}
