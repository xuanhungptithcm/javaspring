package com.green.example.entities;

import javax.persistence.*;

@Entity
@Table(name = "food")
public class Food {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_food", unique = true, nullable = false)
	private Long id;

	@Column(name = "name", nullable = false)
	private String name;

	@Column(name = "image", nullable = false)
	private String image;

	@Column(name = "price", nullable = false)
	private String price;
	
	@Column(name = "namestore", nullable = false)
	private String namestore;
	
	@Column(name = "storeaddress", nullable = false)
	private String storeaddress;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getNamestore() {
		return namestore;
	}

	public void setNamestore(String namestore) {
		this.namestore = namestore;
	}

	public String getStore() {
		return storeaddress;
	}

	public void setStore(String store) {
		this.storeaddress = store;
	}

	public Food(Long id, String name, String image, String price, String namestore, String storeaddress) {
		super();
		this.id = id;
		this.name = name;
		this.image = image;
		this.price = price;
		this.namestore = namestore;
		this.storeaddress = storeaddress;
	}

	public Food() {
		
	}


	
	
}
