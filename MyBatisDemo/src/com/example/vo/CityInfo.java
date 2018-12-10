package com.example.vo;

public class CityInfo {
	private int id,population;
	private String name,district,countryCode;
	
	public CityInfo() {}
	
	public CityInfo(int id, int population, String name, String district, String countryCode) {
		this.id = id;
		this.population = population;
		this.name = name;
		this.district = district;
		this.countryCode = countryCode;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getPopulation() {
		return population;
	}

	public void setPopulation(int population) {
		this.population = population;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getCountryCode() {
		return countryCode;
	}

	public void setCountryCode(String countryCode) {
		this.countryCode = countryCode;
	}

	@Override
	public String toString() {
		return "CityInfo [id=" + id + ", population=" + population + ", name=" + name + ", district=" + district
				+ ", countryCode=" + countryCode + "]";
	}
	
}
