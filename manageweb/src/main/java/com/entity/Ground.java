package com.entity;

public class Ground {
    private Integer gid;

    private String title;

    private Double price;

    private Integer sales;

    private Integer stockNum;

    private Integer sortId;

    private Integer productId;

    public Ground(Integer gid, String title, Double price, Integer sales, Integer stockNum, Integer sortId, Integer productId) {
        this.gid = gid;
        this.title = title;
        this.price = price;
        this.sales = sales;
        this.stockNum = stockNum;
        this.sortId = sortId;
        this.productId = productId;
    }

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getSales() {
        return sales;
    }

    public void setSales(Integer sales) {
        this.sales = sales;
    }

    public Integer getStockNum() {
        return stockNum;
    }

    public void setStockNum(Integer stockNum) {
        this.stockNum = stockNum;
    }

    public Integer getSortId() {
        return sortId;
    }

    public void setSortId(Integer sortId) {
        this.sortId = sortId;
    }

    public Integer getProductId() {
        return productId;
    }

    public void setProductId(Integer productId) {
        this.productId = productId;
    }
}