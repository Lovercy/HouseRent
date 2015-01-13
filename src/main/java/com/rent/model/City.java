package com.rent.model;

public class City {
    private Integer cid;

    private String cityname;

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
}