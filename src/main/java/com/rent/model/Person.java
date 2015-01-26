package com.rent.model;

public class Person implements java.io.Serializable{
	
	private static final long serialVersionUID = 4024862001975165310L;

	private Integer id;

    private Integer userid;

    private String personname;

    private Integer sex;

    private Integer age;

    private Integer homecity;

    private String telphone;

    private Integer iswork;

    private String workname;

    private Integer newhome;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getPersonname() {
        return personname;
    }

    public void setPersonname(String personname) {
        this.personname = personname == null ? null : personname.trim();
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public Integer getHomecity() {
        return homecity;
    }

    public void setHomecity(Integer homecity) {
        this.homecity = homecity;
    }

    public String getTelphone() {
        return telphone;
    }

    public void setTelphone(String telphone) {
        this.telphone = telphone == null ? null : telphone.trim();
    }

    public Integer getIswork() {
        return iswork;
    }

    public void setIswork(Integer iswork) {
        this.iswork = iswork;
    }

    public String getWorkname() {
        return workname;
    }

    public void setWorkname(String workname) {
        this.workname = workname == null ? null : workname.trim();
    }

    public Integer getNewhome() {
        return newhome;
    }

    public void setNewhome(Integer newhome) {
        this.newhome = newhome;
    }
}