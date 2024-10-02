package beans;

import java.io.Serializable;

public class Person implements Serializable{
	
	private static final long serialVersionUID = 2256302236160606476L;
	
	private String name;
	private int age;
	
	
	// 기본 생성자
	public Person() {
		this.name = "김조은";
		this.age = 20;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}
	
	
	
	
}
