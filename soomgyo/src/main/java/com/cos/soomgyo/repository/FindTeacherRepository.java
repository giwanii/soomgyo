package com.cos.soomgyo.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.soomgyo.model.Community;
import com.cos.soomgyo.model.FindTeacher;

public interface FindTeacherRepository extends JpaRepository<FindTeacher, Integer> {
	Page<FindTeacher> findAll(Pageable pageable);
}
