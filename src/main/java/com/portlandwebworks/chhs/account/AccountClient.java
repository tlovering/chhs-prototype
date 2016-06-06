package com.portlandwebworks.chhs.account;

import com.portlandwebworks.chhs.authentication.feign.FeignAuthConfiguration;
import com.portlandwebworks.chhs.account.model.User;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author nick
 */
@FeignClient(name = "backend", url = "${backend.url}", configuration = {FeignAuthConfiguration.class})
public interface  AccountClient {
	
	@RequestMapping(method = RequestMethod.GET, path = "/api/account", produces = "application/json", consumes = "application/json")
	public User getCurrent();
	
	@RequestMapping(method = RequestMethod.POST, path = "/api/account", produces = "application/json", consumes = "application/json")
	public void registerAccount(User account);
	
}
