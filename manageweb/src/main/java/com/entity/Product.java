package com.entity;

public class Product {
    private Integer prid;

    private Integer uid;

    private String function;

    private Integer endurance;

    private Integer typeId;

    private Integer cellId;

    private Integer mah;

    private Integer w;

    private Integer time;

    private String v;

    private Integer overTime;

    private Integer sound;

    private Integer brush;

    private Double l;

    private Integer kg;

    private String describes;

    @Override
    public String toString() {
        return "Product{" +
                "prid=" + prid +
                ", uid=" + uid +
                ", function='" + function + '\'' +
                ", endurance=" + endurance +
                ", typeId=" + typeId +
                ", cellId=" + cellId +
                ", mah=" + mah +
                ", w=" + w +
                ", time=" + time +
                ", v='" + v + '\'' +
                ", overTime=" + overTime +
                ", sound=" + sound +
                ", brush=" + brush +
                ", l=" + l +
                ", kg=" + kg +
                ", describes='" + describes + '\'' +
                '}';
    }

    public Product(Integer prid, Integer uid, String function, Integer endurance, Integer typeId, Integer cellId, Integer mah, Integer w, Integer time, String v, Integer overTime, Integer sound, Integer brush, Double l, Integer kg, String describes) {
        this.prid = prid;
        this.uid = uid;
        this.function = function;
        this.endurance = endurance;
        this.typeId = typeId;
        this.cellId = cellId;
        this.mah = mah;
        this.w = w;
        this.time = time;
        this.v = v;
        this.overTime = overTime;
        this.sound = sound;
        this.brush = brush;
        this.l = l;
        this.kg = kg;
        this.describes = describes;
    }

    public Integer getPrid() {
        return prid;
    }

    public void setPrid(Integer prid) {
        this.prid = prid;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getFunction() {
        return function;
    }

    public void setFunction(String function) {
        this.function = function == null ? null : function.trim();
    }

    public Integer getEndurance() {
        return endurance;
    }

    public void setEndurance(Integer endurance) {
        this.endurance = endurance;
    }

    public Integer getTypeId() {
        return typeId;
    }

    public void setTypeId(Integer typeId) {
        this.typeId = typeId;
    }

    public Integer getCellId() {
        return cellId;
    }

    public void setCellId(Integer cellId) {
        this.cellId = cellId;
    }

    public Integer getMah() {
        return mah;
    }

    public void setMah(Integer mah) {
        this.mah = mah;
    }

    public Integer getW() {
        return w;
    }

    public void setW(Integer w) {
        this.w = w;
    }

    public Integer getTime() {
        return time;
    }

    public void setTime(Integer time) {
        this.time = time;
    }

    public String getV() {
        return v;
    }

    public void setV(String v) {
        this.v = v == null ? null : v.trim();
    }

    public Integer getOverTime() {
        return overTime;
    }

    public void setOverTime(Integer overTime) {
        this.overTime = overTime;
    }

    public Integer getSound() {
        return sound;
    }

    public void setSound(Integer sound) {
        this.sound = sound;
    }

    public Integer getBrush() {
        return brush;
    }

    public void setBrush(Integer brush) {
        this.brush = brush;
    }

    public Double getL() {
        return l;
    }

    public void setL(Double l) {
        this.l = l;
    }

    public Integer getKg() {
        return kg;
    }

    public void setKg(Integer kg) {
        this.kg = kg;
    }

    public String getDescribes() {
        return describes;
    }

    public void setDescribes(String describes) {
        this.describes = describes == null ? null : describes.trim();
    }
}