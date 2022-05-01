package com.rozemart.admin.category;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import com.rozemart.common.entity.Category;

@Repository
public interface CategoryRepository extends PagingAndSortingRepository<Category, Integer> {
     @Query("SELECT c FROM Category c WHERE c.parent.id is NULL")
	public List<Category> findRootCategories(Sort sort);
     
     public Long countById(Integer id);
     
     public Category findByName(String name);
     
     public Category findByAlias(String alias);
     
     @Query("UPDATE Category c SET c.enabled = ?2 WHERE c.id = ?1")
     @Modifying
     public void updateEnabledStatus(Integer id,boolean enabled);
}
