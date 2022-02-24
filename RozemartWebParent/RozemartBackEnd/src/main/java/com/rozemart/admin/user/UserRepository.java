package com.rozemart.admin.user;

import org.springframework.data.repository.CrudRepository;

import com.rozemart.common.entity.User;

public interface UserRepository extends CrudRepository<User, Integer>{

}
