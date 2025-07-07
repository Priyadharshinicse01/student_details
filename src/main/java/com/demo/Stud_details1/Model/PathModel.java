package com.demo.Stud_details1.Model;

import java.sql.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "student")
public class PathModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column
    private String name;
    @Column
    private String age;
    @Column
    private String dob;
    @Column
	private String fathername;
    @Column
    private String mothername;


    public PathModel() {
        
    }

    public PathModel(int id, String name, String age,String dob, String fathername, String mothername) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.dob = dob;
        this.fathername = fathername;
        this.mothername= mothername;

    }

    @Override
    public String toString() {
        return "PathModel [id=" + id + ", name=" + name + ", age=" + age + 
               ", dob=" + dob + ", fathername=" + fathername + ", mothername=" + mothername + "]";
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }
    
    public String getdob() {
		return dob;
	}

	public void setdob(String dob) {
		this.dob = dob;
	}

	public String getfathername() {
		return fathername;
	}

	public void setfathername(String fathername) {
		this.fathername = fathername;
	}

	public String getmothername() {
		return mothername;
	}

	public void setmothername(String mothername) {
		this.mothername = mothername;
	}

}

