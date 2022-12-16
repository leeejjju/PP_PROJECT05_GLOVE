package com.example.product;

import java.util.Date;

public class ProductVO {
    private int seq;
    private String brand;
    private String product;
    private int price;
    private String img;
    private String info;

    public int getSeq() {
        return seq;
    }
    public void setSeq(int seq) {
        this.seq = seq;
    }
    public String getBrand() {
        return brand;
    }
    public void setBrand(String brand) {
        this.brand = brand;
    }
    public String getProduct() {
        return product;
    }
    public void setProduct(String product) {
        this.product = product;
    }
    public int getPrice() { return price; }
    public void setPrice(int price) { this.price = price; }
    public String getImg() {return img; }
    public void setImg(String img) {
        this.img = img;
    }
    public String getInfo() {return info; }
    public void setInfo(String info) {
        this.info = info;
    }

}