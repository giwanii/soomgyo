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

@Table(name="files")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder //빌더 패턴
@Entity
@SequenceGenerator(
		name = "FILES_SEQ_GENERATOR"
	    , sequenceName = "FILES_SEQ2"
	    , initialValue = 1
	    , allocationSize = 1
	)
public class Files{
	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="FILES_SEQ_GENERATOR")
	private int id;
	
	private String filename;
	private String fileOriName;
	private String fileurl;
	
	
	
}
