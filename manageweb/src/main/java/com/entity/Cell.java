package com.entity;

public class Cell {
    private Integer cellId;

    private String cellName;

    @Override
    public String toString() {
        return "Cell{" +
                "cellId=" + cellId +
                ", cellName='" + cellName + '\'' +
                '}';
    }

    public Integer getCellId() {
        return cellId;
    }

    public void setCellId(Integer cellId) {
        this.cellId = cellId;
    }

    public String getCellName() {
        return cellName;
    }

    public void setCellName(String cellName) {
        this.cellName = cellName == null ? null : cellName.trim();
    }
}