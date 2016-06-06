package com.portlandwebworks.chhs.adoptioncenters;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.portlandwebworks.chhs.adoptioncenters.model.AdoptionCenter;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestTemplate;

/**
 *
 * @author nick
 */
@Component
@Path("/adoption-centers")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class AdoptionCenterResource {
	
	private final Logger log = LoggerFactory.getLogger(AdoptionCenterResource.class);
	private final AdoptionCenterLocator locator;

	@Autowired
	public AdoptionCenterResource(AdoptionCenterLocator locator) {
		this.locator = locator;
	}

	@GET
	public List<AdoptionCenter> get() throws IOException{
		log.debug("Getting all adoption centers");
		return locator.findCentersNear("94203", null);
	}

	@GET
	@Path("/{postalCode}/{proximity}")
	public List<AdoptionCenter> nearMe(@PathParam("postalCode") String postalCode, @PathParam("proximity") Integer proximity) throws IOException{
		// TODO: Implement proximity search
		log.debug("Looking for adoption centers near: {}", postalCode);
		return locator.findCentersNear(postalCode, proximity);
	}
	
}
