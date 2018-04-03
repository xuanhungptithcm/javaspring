package com.green.example.entities;

import javax.persistence.*;

@Entity
@Table(name = "Phim")
public class Phim {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_phim", unique = true, nullable = false)
	private long id;

	@Column(name = "name", nullable = false)
	private String name;

	@Column(name = "image", nullable = false)
	private String image;

	@Column(name = "time", nullable = false)
	private String time;

	public long getId() {
		return id;
	}

	public void setId(long id) {
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

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	
}
