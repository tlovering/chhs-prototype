package com.portlandwebworks.chhs.account;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.portlandwebworks.chhs.account.model.User;
import java.io.IOException;
import java.io.InputStream;
import javax.ws.rs.Consumes;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.WebApplicationException;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

/**
 *
 * @author nick
 */
@Component
@Path("/account")
@Consumes(MediaType.APPLICATION_JSON)
@Produces(MediaType.APPLICATION_JSON)
public class AccountResource {

	private final Logger log = LoggerFactory.getLogger(AccountResource.class);
	private final ObjectMapper mapper;
	private final AccountClient accountClient;

	@Autowired
	public AccountResource(ObjectMapper mapper, AccountClient accountClient) {
		this.mapper = mapper;
		this.accountClient = accountClient;
	}

	@GET
	public User get() throws IOException {
		InputStream sample = getClass().getClassLoader().getResourceAsStream("sample-user.json");
		log.info("Getting current user.");
		return mapper.readValue(sample, User.class);
	}

	@POST
	public Response register(User user) {
		log.info("Registering user.");
		accountClient.registerAccount(user);
		user.setNewPassword(null);
		user.setNewPasswordConfirmation(null);
		return Response.ok(user).build();
	}

	@PUT
	public Response update(User user) {
		log.info("Updating user.");
		return Response.ok(user).build();
	}

	@PUT
	@Path("/password")
	public Response updatePassword(User user) {
		if (StringUtils.isEmpty(user.getNewPassword())
				|| StringUtils.isEmpty(user.getNewPassword())
				|| StringUtils.isEmpty(user.getNewPassword())) {
			throw new WebApplicationException(Response.Status.BAD_REQUEST);
		} else if (!user.getNewPassword().equals(user.getNewPasswordConfirmation())) {
			throw new WebApplicationException(Response.Status.BAD_REQUEST);
		}
		return Response.ok().build();
	}

}
