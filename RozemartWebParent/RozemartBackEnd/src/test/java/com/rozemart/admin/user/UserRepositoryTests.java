package com.rozemart.admin.user;

import static org.assertj.core.api.Assertions.assertThat;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase;
import org.springframework.boot.test.autoconfigure.jdbc.AutoConfigureTestDatabase.Replace;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.boot.test.autoconfigure.orm.jpa.TestEntityManager;
import org.springframework.test.annotation.Rollback;

import com.rozemart.common.entity.Role;
import com.rozemart.common.entity.User;

@DataJpaTest
@AutoConfigureTestDatabase(replace = Replace.NONE)
@Rollback(false)
public class UserRepositoryTests {

	@Autowired
	private UserRepository repo;

	@Autowired
	private TestEntityManager entityManager;

	@Test
	public void testCreateNewUserWithOneRole() {
		Role roleAdmin = entityManager.find(Role.class, 1);
		User userFiroze = new User("firoze.hossain01@yahoo.com", "firoze28", "Md. Firoze", "Hossain");
		userFiroze.addRole(roleAdmin);
		User savedUser = repo.save(userFiroze);
		assertThat(savedUser.getId()).isGreaterThan(0);

	}
	
	@Test
	public void testCreateNewUserWithTwoRoles() {
		
	}
}
