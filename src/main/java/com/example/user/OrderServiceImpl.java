package com.example.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl{


    @Autowired
    OrderDAO orderDAO;

    public int insertOrder(OrderVO vo) {
        return orderDAO.insertOrder(vo);
    }

    public int deleteOrder(int seq) {
        return orderDAO.deleteOrder(seq);
    }

    public int updateOrder(OrderVO vo) {
        return orderDAO.updateOrder(vo);
    }

    public OrderVO getOrder(int seq) {
        return orderDAO.getOrder(seq);
    }

    public List<OrderVO> getOrderList() {
        return orderDAO.getOrderList();
    }

    public List<OrderVO> getProductInfoByOrderList() {
        return orderDAO.getProductInfoByOrderList();
    }




}