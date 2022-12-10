package com.example.product;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {

    @Autowired
    SqlSession sqlSession;


    //C
    public int insertProduct(ProductVO vo) {
        System.out.println("===> jdbcTemplate으로 insertProduct() 기능 처리");
        return sqlSession.insert("ProductDAO.insertProduct", vo);
    }

    //D
    public int deleteProduct(int seq) {
        System.out.println("===> jdbcTemplate으로 deleteProductProduct() 기능 처리");
        return sqlSession.insert("ProductDAO.deleteProduct", seq);
    }

    //U
    public int updateProduct(ProductVO vo) {
        System.out.println("===> jdbcTemplate으로 updateProduct() 기능 처리");
        return sqlSession.insert("ProductDAO.updateProduct", vo);
    }

    //R
    public ProductVO getProduct(int seq) {
        ProductVO one = new ProductVO();
        System.out.println("===> jdbcTemplate으로 getProduct() 기능 처리");
        return sqlSession.selectOne("ProductDAO.getProduct", seq);
    }

    //Rrrrr
    public List<ProductVO> getProductList(){
        System.out.println("===> jdbcTemplate으로 getProductList() 기능 처리");
        return sqlSession.selectList("ProductDAO.getProductList");
    }

    public List<ProductVO> getProductListByBrand(String brand){
        System.out.println("===> jdbcTemplate으로 getProductList() 기능 처리");
        return sqlSession.selectList("ProductDAO.getProductListByBrand", brand);
    }






}