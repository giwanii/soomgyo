package com.cos.soomgyo.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
@Table(name="Room")
@SequenceGenerator(
			name="LESSON_SEQ_GENERATOR"
			,sequenceName = "LESSON_SEQ"
			,initialValue = 1
			,allocationSize = 1
		)
@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Entity

public class Room {

			@Id
			@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="LESSON_SEQ_GENERATOR")
			private int id;
			
			@ManyToOne
		    @JoinColumn(name = "StudentID")
		    private Users Student;

		    @ManyToOne
		    @JoinColumn(name = "TeacherID")
		    private Users Teacher;
		    
}