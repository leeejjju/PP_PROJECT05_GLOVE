package com.example.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.PathVariable;
import javax.servlet.http.HttpSession;
import org.springframework.ui.Model;
import com.example.user.OrderServiceImpl;
import com.example.user.OrderVO;


//Order와 관련된 링크들을 다룸.
//user일지라도 product 관련은 adminController에서 다룸. (@Autowired가 하나밖에 안 돼가지구...)
@Controller
@RequestMapping(value = "/user/order", method = RequestMethod.GET)
public class UserController {

    @Autowired
    OrderServiceImpl orderService;

    //주문목록 리스트
    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String orderList(Model model){
        model.addAttribute("list", orderService.getOrderList());
        return "orderList";
    }

    //주문 추가하기, id는 상품id(pid)
    @RequestMapping(value = "add/{id}", method = RequestMethod.GET)
    public String add(@PathVariable("id") int id, Model model){
        model.addAttribute("pid", id); //해당 폼에 hidden으로 pid를 숨겨놓고 주문정보와 함꼐 넘길 것!!
        return "addOrder";
    }

    //주문정보 수정
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") int id, Model model){
        OrderVO orderVO = orderService.getOrder(id);
        model.addAttribute("orderVO", orderVO);
        return "editOrder";
    }


    //주문정보 수정 처리
    @RequestMapping(value = "/editok", method = RequestMethod.POST)
    public String editok(OrderVO vo){
        int i = orderService.updateOrder(vo);
        if(i == 0){
            System.out.println("주문 수정 실패");
        }else{
            System.out.println("주문 수정 성공!!!");
        }
        return "redirect:list";
    }


    //주문 취소
    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String deleteok(@PathVariable("id") int id){
        int i = orderService.deleteOrder(id);
        if(i == 0){
            System.out.println("주문 취소 실패");
        }else{
            System.out.println("주문 취소 성공!!!");
        }
        return "redirect:../list";
    }

}