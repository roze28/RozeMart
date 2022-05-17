package com.rozemart.admin.product;

import org.springframework.data.repository.PagingAndSortingRepository;

import com.rozemart.common.entity.Product;

public interface ProductRepository extends PagingAndSortingRepository<Product, Integer> {

}
