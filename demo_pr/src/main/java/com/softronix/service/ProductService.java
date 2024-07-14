package com.softronix.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.softronix.entity.Product;
import com.softronix.repository.ProductRepository;

@Service
public class ProductService {
	@Autowired
	ProductRepository repo;
	
	public  Product savePro(Product product)
	{
		return repo.save(product);
	}
	
	public String deletePro(int id)
	{
		repo.deleteById(id);
		
		return "success";
	}
	public Product finds(int id)
	{
		return repo.findById(id).orElse(null);
	}
	
	public Product update(Product products)
	{
		Product exist = repo.findById(products.getId()).orElse(null);
		exist.setName(products.getName());
		exist.setCost(products.getCost());
		exist.setQuantity(products.getQuantity());
		return repo.save(exist);
	}

}

