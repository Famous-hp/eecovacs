package com.entity;

public class Fast {
    private Integer fastId;

    private String name;

    public Integer getFastId() {
        return fastId;
    }

    public void setFastId(Integer fastId) {
        this.fastId = fastId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }


}