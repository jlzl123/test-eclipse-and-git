package datagrid;

public class Person {
	private String name;
	private String sex;
	private String age;
    private String email;
    
    private String birthday;
    
    public Person(String name,String sex,String age,String email) {
		// TODO Auto-generated constructor stub
    	this.name=name;
    	this.sex=sex;
    	this.age=age;
    	this.email=email;
	}
    
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
    
    
}
