//package com.example.product;
//import java.sql.ResultSet;
//import java.sql.SQLException;
//import java.util.List;
//import java.sql.Connection;
//import java.sql.PreparedStatement;
//
//import org.apache.ibatis.session.SqlSession;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.jdbc.core.JdbcTemplate;
//import org.springframework.jdbc.core.RowMapper;
//import org.springframework.stereotype.Repository;
//
//@Repository
//public class ProductDAO {
//
//    @Autowired
//    SqlSession sqlSession;
//
//    //C
//    public int insertProduct(ProductVO vo) {
//        System.out.println("===> insertProduct() 기능 처리");
//        return sqlSession.insert("ProductDAO.insertProduct", vo);
//    }
//
//    //D
//    public int deleteProduct(int seq) {
//        System.out.println("===> deleteProduct() 기능 처리");
//        return sqlSession.insert("ProductDAO.deleteProduct", seq);
//    }
//
//    //U
//    public int updateProduct(ProductVO vo) {
//        System.out.println("===> updateProduct() 기능 처리");
//        return sqlSession.insert("ProductDAO.updateProduct", vo);
//    }
//
//    //R
//    public ProductVO getProduct(int seq) {
//        ProductVO one = new ProductVO();
//        System.out.println("===> getProduct() 기능 처리");
//        return sqlSession.selectOne("ProductDAO.getProduct", seq);
//    }
//
//
//    //Rrrrr
//    public List<ProductVO> getProductList(){
//        System.out.println("===> getProductList() 기능 처리");
//        return sqlSession.selectList("ProductDAO.getProductList");
//    }
//
//
//
//
//}