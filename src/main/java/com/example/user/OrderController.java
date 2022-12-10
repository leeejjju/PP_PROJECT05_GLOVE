//
//package com.example.user;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.ui.Model;
//import com.example.user.UserServiceImpl;
//import com.example.user.UserVO;
//
//import javax.servlet.http.HttpSession;
//
//
//@Controller
//@RequestMapping(value = "/login")
//public class LoginController {
//    //@Autowired
//    //UserServiceImpl userService;
//
//    @RequestMapping(value = "/login", method = RequestMethod.GET)
//    public String login(HttpSession session, UserVO vo){
////        if(session.getAttribute("login") != null){
////            session.removeAttribute("login");
////        }
//        return "login";
//    }
//
//    //try login
//    @RequestMapping(value = "/loginOK", method = RequestMethod.POST)
//    public String loginCheck(HttpSession session, UserVO vo){
//        String returnURL="";
////        if(session.getAttribute("login") != null){
////            session.removeAttribute("login");
////        }
////
////        UserVO loginvo = userService.getUser(vo);
////        if(loginvo != null){
////            System.out.println("login ok!");
////            session.setAttribute("login", loginvo);
////            returnURL = "redirect:/board/list";
////
////        }else{
////            System.out.println("login fail");
////            returnURL = "redirect:/login/login";
////        }
//        return returnURL;
//    }
//    //logout
//    @RequestMapping(value = "/logout", method = RequestMethod.GET)
//    public String logout(HttpSession sessioin){
//        //sessioin.invalidate();
//        return "redirect:/login/login";
//    }
//
//
//}