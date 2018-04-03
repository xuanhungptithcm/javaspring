package com.green.example.entities;

import javax.persistence.*;

@Entity
@Table(name = "Book")
public class Book {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_book", unique = true, nullable = false)
	private Long id;

	@Column(name = "namebook", nullable = false)
	private String namebook;

	@Column(name = "image", nullable = false)
	private String image;

	@Column(name = "price", nullable = false)
	private String price;

	@Column(name = "priceold", nullable = false)
	private String priceold;

	@Column(name = "date", nullable = false)
	private String date;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNamebook() {
		return namebook;
	}

	public void setNamebook(String namebook) {
		this.namebook = namebook;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getPriceold() {
		return priceold;
	}

	public void setPriceold(String priceold) {
		this.priceold = priceold;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@ManyToOne(cascade = CascadeType.DETACH, fetch = FetchType.EAGER)
	@JoinColumn(name = "id_DanhMuc")
	private DanhMuc danhmuc;

	public DanhMuc getDanhmuc() {
		return danhmuc;
	}

	public void setDanhmuc(DanhMuc danhmuc) {
		this.danhmuc = danhmuc;
	}

	public Book(Long id, String namebook, String image, String price, String priceold, String date, DanhMuc danhmuc) {
		this.id = id;
		this.namebook = namebook;
		this.image = image;
		this.price = price;
		this.priceold = priceold;
		this.date = date;
		this.danhmuc = danhmuc;
	}

	public Book() {

	}

}
