package com.cos.soomgyo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Table(name="myvideo")
@SequenceGenerator(
			name="MYVIDEO_SEQ_GENERATOR"
			,sequenceName = "USERS_SEQ"
			,initialValue = 1
			,allocationSize = 1
		)
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity

public class Myvideo {
	
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="MYVIDEO_SEQ_GENERATOR")
	private int id;
	
	
}
