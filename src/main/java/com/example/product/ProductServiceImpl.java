package com.example.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl{


    @Autowired
    ProductDAO productDAO;

    public int insertProduct(ProductVO vo) {
        return productDAO.insertProduct(vo);
    }

    public int deleteProduct(int seq) {
        return productDAO.deleteProduct(seq);
    }

    public int updateProduct(ProductVO vo) {
        return productDAO.updateProduct(vo);
    }

    public ProductVO getProduct(int seq) {
        return productDAO.getProduct(seq);
    }

    public List<ProductVO> getProductList() {
        return productDAO.getProductList();
    }

    public List<ProductVO> getProductListByBrand(String brand) {
        return productDAO.getProductListByBrand(brand);
    }



}