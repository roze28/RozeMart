package com.rozemart.admin.user;

import static org.assertj.core.api.Assertions.assertThat;

import java.util.List;

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
		User userFiroze = new User("firoze.hossain01@outlook.com", "firoze28", "Firoze", "Ahmed");
		Role roleEditor = new Role(3);
		Role roleAssistant = new Role(5);
		userFiroze.addRole(roleEditor);
		userFiroze.addRole(roleAssistant);

		User savedUser = repo.save(userFiroze);
		assertThat(savedUser.getId()).isGreaterThan(0);
	}

	@Test
	public void testListAllUsers() {
		Iterable<User> listUsers = repo.findAll();
		listUsers.forEach(user -> System.out.println(user));

	}

	@Test
	public void testGetUserById() {
		User userFiroze = repo.findById(1).get();
		System.out.println(userFiroze);
		assertThat(userFiroze).isNotNull();
	}

	@Test
	public void testUpdateUserDetails() {
		User userFiroze = repo.findById(1).get();
		userFiroze.setEnabled(true);
		userFiroze.setEmail("roze2882@gmail.com");
		repo.save(userFiroze);
	}

	@Test
	public void testUpdateUserRoles() {
		User userFiroze = repo.findById(2).get();
		Role roleEditor = new Role(3);
		Role roleSlaesperson = new Role(2);
		userFiroze.getRoles().remove(roleEditor);
		userFiroze.addRole(roleSlaesperson);
		repo.save(userFiroze);

	}

	@Test
	public void testDeleteUser() {
		Integer userId = 2;
		repo.deleteById(userId);

	}

}
