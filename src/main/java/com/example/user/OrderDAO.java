package com.example.user;
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
public class OrderDAO {

    @Autowired
    SqlSession sqlSession;


    //C
    public int insertOrder(OrderVO vo) {
        System.out.println("===> insertOrder() 기능 처리");
        return sqlSession.insert("OrderDAO.insertOrder", vo);
    }

    //D
    public int deleteOrder(int seq) {
        System.out.println("===> deleteOrderOrder() 기능 처리");
        return sqlSession.insert("OrderDAO.deleteOrder", seq);
    }

    //U
    public int updateOrder(OrderVO vo) {
        System.out.println("===> updateOrder() 기능 처리");
        return sqlSession.insert("OrderDAO.updateOrder", vo);
    }

    //R
    public OrderVO getOrder(int seq) {
        OrderVO one = new OrderVO();
        System.out.println("===> getOrder() 기능 처리");
        return sqlSession.selectOne("OrderDAO.getOrder", seq);
    }

    //Rrrrr
    public List<OrderVO> getOrderList(){
        System.out.println("===> getOrderList() 기능 처리");
        return sqlSession.selectList("OrderDAO.getOrderList");
    }

    // 브랜드 별로 모아서 보기
    public List<OrderVO> getOrderListByBrand(){
        System.out.println("===> getOrderListByBrand() 기능 처리");
        return sqlSession.selectList("OrderDAO.getOrderListByBrand");
    }




}