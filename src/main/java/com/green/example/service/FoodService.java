package com.green.example.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.green.example.dao.FoodDao;
import com.green.example.entities.Food;



@Transactional
@Service
public class FoodService {
	@Autowired
	private FoodDao dao;

	public List<Food> findAllUsers() {
		return dao.getAll();
	}

	public void savePhim(Food food) {
		dao.persist(food);
	}

	public Food findById(Long id) {
		Food food = dao.getByKey(id);
		return food;
	}

	public void updateFood(Long id, Food food) {
		Food entity = dao.getByKey(id);
		entity.setImage(food.getImage());
		entity.setPrice(food.getPrice());
		entity.setName(food.getName());
		entity.setNamestore(food.getNamestore());
		entity.setStore(food.getStore());
		dao.update(entity);

	}
    public void deleteUser(Long id) {
        Food entity = dao.getByKey(id);
        if (entity != null) {
            dao.delete(entity);
        }
    }
}
