package com.green.example.entities;

import javax.persistence.*;

@Entity
@Table(name = "DanhMuc")
public class DanhMuc {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_DanhMuc", unique = true, nullable = false)
	private Long id;

	@Column(name = "tendanhmuc", nullable = false)
	private String tendanhmuc;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTendanhmuc() {
		return tendanhmuc;
	}

	public void setTendanhmuc(String tendanhmuc) {
		this.tendanhmuc = tendanhmuc;
	}

}
