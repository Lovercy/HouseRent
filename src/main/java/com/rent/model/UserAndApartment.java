package com.rent.model;

public class UserAndApartment implements java.io.Serializable{
   
	private static final long serialVersionUID = -6463121824175220413L;

	private Integer id;

    private Integer riid;

    private Integer roid;

    private Integer apid;

    private Integer status;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getRiid() {
        return riid;
    }

    public void setRiid(Integer riid) {
        this.riid = riid;
    }

    public Integer getRoid() {
        return roid;
    }

    public void setRoid(Integer roid) {
        this.roid = roid;
    }

    public Integer getApid() {
        return apid;
    }

    public void setApid(Integer apid) {
        this.apid = apid;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}