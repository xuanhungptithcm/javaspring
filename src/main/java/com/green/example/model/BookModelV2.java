package com.green.example.model;

import org.springframework.web.multipart.MultipartFile;

public class BookModelV2 {
	private MultipartFile file;
	private  String namebook;
	private  String date;
	private String priceold;
	private String price;
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public String getNamebook() {
		return namebook;
	}
	public void setNamebook(String namebook) {
		this.namebook = namebook;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getPriceold() {
		return priceold;
	}
	public void setPriceold(String priceold) {
		this.priceold = priceold;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
}
