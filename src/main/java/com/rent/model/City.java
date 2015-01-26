package com.rent.model;

public class City implements java.io.Serializable{
   
	private static final long serialVersionUID = 9202464813821946744L;

	private Integer cid;

    private String cityname;
    
    private Integer proid;

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getCityname() {
        return cityname;
    }

    public void setCityname(String cityname) {
        this.cityname = cityname == null ? null : cityname.trim();
    }

	public Integer getProid() {
		return proid;
	}

	public void setProid(Integer proid) {
		this.proid = proid;
	}
}