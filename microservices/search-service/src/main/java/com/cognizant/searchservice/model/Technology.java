package com.cognizant.searchservice.model;

import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "technology")
public class Technology {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "te_id")
	private Long id;
	
	@Column(name = "te_name")
	private String skillName;
	
	@Column(name = "te_duration")
	private String duration;
	
	@Column(name = "te_toc")
	private String tableOfContents;
	
	@Column(name = "te_prereq")
	private String prerequisites;
	
	@OneToMany(mappedBy = "skillId")
	@JsonIgnore
	private Set<MentorSkills> mentorSkillsList;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSkillName() {
		return skillName;
	}

	public void setSkillName(String skillName) {
		this.skillName = skillName;
	}

	
	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getTableOfContents() {
		return tableOfContents;
	}

	public void setTableOfContents(String tableOfContents) {
		this.tableOfContents = tableOfContents;
	}

	public String getPrerequisites() {
		return prerequisites;
	}

	public void setPrerequisites(String prerequisites) {
		this.prerequisites = prerequisites;
	}

	
	public Set<MentorSkills> getMentorSkillsList() {
		return mentorSkillsList;
	}

	public void setMentorSkillsList(Set<MentorSkills> mentorSkillsList) {
		this.mentorSkillsList = mentorSkillsList;
	}

	@Override
	public String toString() {
		return "Technology [id=" + id + ", skillName=" + skillName + ", duration=" + duration + ", tableOfContents="
				+ tableOfContents + ", prerequisites=" + prerequisites + "]";
	}

	
	
	
	

}
