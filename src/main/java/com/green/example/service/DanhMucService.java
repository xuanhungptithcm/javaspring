package com.green.example.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.example.dao.DanhMucDao;
import com.green.example.entities.DanhMuc;



@Transactional
@Service
public class DanhMucService {
	@Autowired
	private DanhMucDao dao;

	public List<DanhMuc> findAllDanhMuc() {
		return dao.getAll();
	}

	public void saveDanhMuc(DanhMuc dm) {
		dao.persist(dm);
	}

	public DanhMuc findById(Long id) {
		DanhMuc food = dao.getByKey(id);
		return food;
	}

	public void updateDanhMuc(Long id, DanhMuc dm) {
		DanhMuc entity = dao.getByKey(id);
		entity.setTendanhmuc(dm.getTendanhmuc());
		dao.update(entity);

	}
    public void deleteDanhMuc(Long id) {
    	DanhMuc entity = dao.getByKey(id);
        if (entity != null) {
            dao.delete(entity);
        }
    }
}
