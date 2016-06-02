package com.portlandwebworks.chhs.jersey;

import com.portlandwebworks.chhs.account.AccountResource;
import com.portlandwebworks.chhs.adoptioncenters.AdoptionCenterResource;
import javax.ws.rs.ApplicationPath;
import org.glassfish.jersey.server.ResourceConfig;
import org.springframework.stereotype.Component;

/**
 *
 * @author nick
 */
@Component
@ApplicationPath("/api")
public class JerseyConfig extends ResourceConfig {

	public JerseyConfig() {
		register(AccountResource.class);
		register(AdoptionCenterResource.class);
	}
	
}
