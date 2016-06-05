package com.portlandwebworks.chhs.messages;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.portlandwebworks.chhs.messages.model.Message;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@Component
@Path("/messages")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class MessageResource {

	private final Logger log = LoggerFactory.getLogger(MessageResource.class);
	private final ObjectMapper mapper;

	@Autowired
	public MessageResource(ObjectMapper mapper) {
		this.mapper = mapper;
	}

	@GET
	public List<Message> get() throws IOException{
		log.debug("Getting all messages");
		InputStream sample = getClass().getClassLoader().getResourceAsStream("sample-messages.json");
		List<Message> messages = mapper.readValue(sample, new TypeReference<List<Message>>() {});
		return messages;
	}

	@POST
	public Response register(Message message) {
		log.info("Sending message.");
		return Response.ok(message).build();
	}
	
}
