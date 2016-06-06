package com.portlandwebworks.chhs.authentication.feign;

import com.portlandwebworks.chhs.authentication.exceptions.InvalidCredentialsException;
import com.portlandwebworks.chhs.authentication.exceptions.RemoteClientException;
import feign.Response;
import feign.codec.ErrorDecoder;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.StringReader;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 *
 * @author nick
 */
public class GenericErrorDecoder implements ErrorDecoder {

	private Logger log = LoggerFactory.getLogger(GenericErrorDecoder.class);

	@Override
	public Exception decode(String method, Response rspns) {
			final String body = responseBody(rspns);
		log.info("Error happened. Seeing if it was bad credentials. \n{}", body);
		if (rspns.status() == 403) {
			log.info("Access denied exception, returning generic credentials exception.", body);
			return new InvalidCredentialsException(body);
		} else {
			return new RemoteClientException("Error during remote call.", method, rspns.status());
		}
	}

	private String responseBody(Response rsp) {
		try (BufferedReader reader = new BufferedReader(rsp.body().asReader())) {
			StringBuilder bld = new StringBuilder();
			String line;
			while ((line = reader.readLine()) != null) {
				bld.append(line);
			}
			return bld.toString();
		} catch (Exception ex) {
			log.error("Error reading response body.", ex);
			return null;
		}
	}

}
