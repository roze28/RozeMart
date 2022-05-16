package com.rozemart.admin.brand;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.rozemart.common.entity.Brand;
import com.rozemart.common.entity.Category;

public interface BrandRepository extends PagingAndSortingRepository<Brand, Integer> {
	
public Long countById(Integer id);

public Brand findByName(String name);

}
