package com.portlandwebworks.chhs.adoptioncenters.model;

import java.math.BigDecimal;

/**
 *
 * @author nick
 */
public class AdoptionCenter {
	private String name;
	private String id;
	private BigDecimal lat;
	private BigDecimal lng;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public BigDecimal getLat() {
		return lat;
	}

	public void setLat(BigDecimal lat) {
		this.lat = lat;
	}

	public BigDecimal getLng() {
		return lng;
	}

	public void setLng(BigDecimal lng) {
		this.lng = lng;
	}
}
