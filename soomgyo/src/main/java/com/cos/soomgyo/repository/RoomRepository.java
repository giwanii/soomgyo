package com.cos.soomgyo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.cos.soomgyo.model.Room;

public interface RoomRepository extends JpaRepository<Room, Integer> {
}
