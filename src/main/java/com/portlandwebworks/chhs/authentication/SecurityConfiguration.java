package com.portlandwebworks.chhs.authentication;

import com.portlandwebworks.chhs.authentication.token.TokenAuthFilter;
import java.util.Arrays;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.AuthenticationEntryPoint;
import org.springframework.security.web.authentication.Http403ForbiddenEntryPoint;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

/**
 *
 * @author nick
 */
@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	private JsonSuccessHandler successHandler;

	@Autowired
	private TokenAuthFilter tokenAuthFilter;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
				.csrf().disable()
				.formLogin()
				.and()
				.authorizeRequests()
				.antMatchers("/login").anonymous()
				.antMatchers(HttpMethod.POST, "/api/account").anonymous()
				.antMatchers("/api/**").authenticated()
				.anyRequest().permitAll()
				.and()
				.addFilterAfter(authFilter(), TokenAuthFilter.class)
				.addFilter(tokenAuthFilter)
				.exceptionHandling().authenticationEntryPoint(authenticationEntryPoint())
				.and()
				.sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS);
	}

	@Bean
	public JsonAuthFilter authFilter() {
		JsonAuthFilter jsonAuthFilter = new JsonAuthFilter(dummyProvider());
		jsonAuthFilter.setAuthenticationSuccessHandler(successHandler);
		jsonAuthFilter.setRequiresAuthenticationRequestMatcher(new AntPathRequestMatcher("/login", "POST"));
		return jsonAuthFilter;
	}

	@Bean
	public AuthenticationEntryPoint authenticationEntryPoint() {
		return new Http403ForbiddenEntryPoint();
	}

	@Bean
	public AuthenticationProvider dummyProvider() {
		return new AuthenticationProvider() {
			private Logger log = LoggerFactory.getLogger(AuthenticationProvider.class);

			@Override
			public Authentication authenticate(Authentication a) throws AuthenticationException {
				AuthenticatedUser u = new AuthenticatedUser(a.getName(), Arrays.asList("ROLE_USER"));
				log.warn("DUMMY LOGIN SUCCESS: {}", u.getUsername());
				return new UsernamePasswordAuthenticationToken(u, "", u.getAuthorities());
			}

			@Override
			public boolean supports(Class<?> type) {
				return true;
			}
		};
	}

}
