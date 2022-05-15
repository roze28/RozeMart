package com.rozemart.admin;

import org.springframework.data.repository.PagingAndSortingRepository;


import com.rozemart.common.entity.Brand;

public interface BrandRepository extends PagingAndSortingRepository<Brand, Integer> {

}
