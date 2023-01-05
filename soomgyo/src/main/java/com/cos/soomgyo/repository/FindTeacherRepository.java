package com.cos.soomgyo.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.soomgyo.model.FindTeacher;
import com.cos.soomgyo.model.Users;

public interface FindTeacherRepository extends JpaRepository<FindTeacher, Integer> {
	Optional<FindTeacher> findByUsers(Users user);
}
