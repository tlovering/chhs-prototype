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
	private final ObjectMapper mapper;

	@Autowired
	public AdoptionCenterResource(ObjectMapper mapper) {
		this.mapper = mapper;
	}

	@GET
	public List<AdoptionCenter> get() throws IOException{
		log.debug("Getting all adoption centers");
		InputStream sample = getClass().getClassLoader().getResourceAsStream("sample-centers.json");
		List<AdoptionCenter> centers = mapper.readValue(sample, new TypeReference<List<AdoptionCenter>>() {});
		return centers;
	}

	@GET
	@Path("/{postalCode}/{proximity}")
	public List<AdoptionCenter> nearMe(@PathParam("postalCode") String postalCode, @PathParam("proximity") String proximity) throws IOException{
		// TODO: Implement proximity search
		log.debug("Looking for adoption centers near: {}", postalCode);
		InputStream sample = getClass().getClassLoader().getResourceAsStream("sample-centers.json");
		List<AdoptionCenter> centers = mapper.readValue(sample, new TypeReference<List<AdoptionCenter>>() {});
		return centers;
	}
	
}
