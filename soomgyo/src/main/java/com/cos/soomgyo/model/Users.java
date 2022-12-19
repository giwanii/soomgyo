package com.cos.soomgyo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.ColumnDefault;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="users")
@SequenceGenerator(
			name="USERS_SEQ_GENERATOR"
			,sequenceName = "USERS_SEQ"
			,initialValue = 1
			,allocationSize = 1
		)
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity


public class Users {
		@Id
		@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="USERS_SEQ_GENERATOR")
		private int id;
		
		@Column(nullable=false, length=30,unique = true)
		private String userid;//아이디

		@Column(nullable=false, length=100)//해쉬로 변경하여 암호화 length 크게
		private String password; 
		
		@Column(length=50)//해쉬로 변경하여 암호화 length 크게
		private String adr1;
		
		@Column(length=50)//해쉬로 변경하여 암호화 length 크게
		private String adr2; 
	
		
		@Column(nullable=false, length=15)
		private String name;
		
		@Column(nullable=false, length=50)
		private String email;
		
		@Column(length=100)
		private String phone;
		
		@Column(length=10)
		private int num;
		
		@Column(length=100)
		private String title;
		
		@Lob
		private String content;
		
		@Column(length=100)
		private String Profileimage;
		
		@Column(length=100)
		private String portfolio;
		
		@ColumnDefault("0")
		private int count;
		

}
