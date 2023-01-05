package com.cos.soomgyo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.soomgyo.model.Room;
import com.cos.soomgyo.model.Users;

public interface RoomRepository extends JpaRepository<Room, Integer> {
	boolean existsByStudentAndTeacher(Users Student,Users Teacher);
	List<Room> findByTeacher(Users user);
	boolean existsByTeacher(Users Teacher);
}
