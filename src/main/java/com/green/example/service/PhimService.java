package com.green.example.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.example.dao.PhimDao;
import com.green.example.entities.Phim;


@Transactional
@Service
public class PhimService {
    @Autowired
    private PhimDao dao;
    
    public List<Phim> findAllUsers() {
        return dao.getAll();
    }
    public void savePhim(Phim phim) {
        dao.persist(phim);
    }
    public void getIdPhim(){
    	
    }
}
