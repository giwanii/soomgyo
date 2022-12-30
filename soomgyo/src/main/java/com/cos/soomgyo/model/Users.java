package com.cos.soomgyo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
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
		@Column(length=100)
		private String category;
		
		@Column(nullable=false, length=15)
		private String name;
		
		@Column(nullable=false, length=50)
		private String email;
		
		@Column(length=100)
		private String phone;
		
		@Enumerated(EnumType.STRING)
		private RoleType roles; //Enum을 쓰는게 좋다. //도메인 사용해야해서. 
				
		//회원정보수정에 들어가는 프로필 사진
		private String profilefilename;	
		private String profilefileOriName;
		private String profilefileurl;
		
		
		@ColumnDefault("0")
		private int count;
		
		
		
		

}
