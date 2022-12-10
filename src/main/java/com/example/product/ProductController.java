package com.example.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/admin", method = RequestMethod.GET)
public class ProductController {

//    @Autowired
//    ProductServiceImpl productService;
//
//    @RequestMapping(value = "/list", method = RequestMethod.GET)
//    public String productlist(Model model){
//        model.addAttribute("list", productService.getProductList());
//        return "adminList";
//    }
//
//    @RequestMapping(value = "/add", method = RequestMethod.GET)
//    public String addProduct(){
//        return "addProduct";
//    }
//
//    @RequestMapping(value = "/addok", method = RequestMethod.POST)
//    public String addProductOK(ProductVO vo){
//        int i = productService.insertProduct(vo);
//        if(i == 0){
//            System.out.println("데이터 추가 실패");
//        }else{
//            System.out.println("데이터 추가 성공!!!");
//        }
//        return "redirect:list";
//    }
//
//    @RequestMapping(value = "/editpost/{id}", method = RequestMethod.GET)
//    public String editProduct(@PathVariable("id") int id, Model model){
//        ProductVO productVO = productService.getProduct(id);
//        model.addAttribute("productVO", productVO);
//        return "editProduct";
//    }
//
//    @RequestMapping(value = "/viewPost/{id}", method = RequestMethod.GET)
//    public String viewProduct(@PathVariable("id") int id, Model model){
//        ProductVO productVO = productService.getProduct(id);
//        model.addAttribute("productVO", productVO);
//        return "viewProduct";
//    }
//
//    @RequestMapping(value = "/editok", method = RequestMethod.POST)
//    public String editProductOK(ProductVO vo){
//        int i = productService.updateProduct(vo);
//        if(i == 0){
//            System.out.println("데이터 수정 실패");
//        }else{
//            System.out.println("데이터 수정 성공!!!");
//        }
//        return "redirect:list";
//    }
//
//    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
//    public String deleteProductOK(@PathVariable("id") int id){
//        int i = productService.deleteProduct(id);
//        if(i == 0){
//            System.out.println("데이터 삭제 실패");
//        }else{
//            System.out.println("데이터 삭제 성공!!!");
//        }
//        return "redirect:../list";
//    }

    @RequestMapping(value = "/list")
    public String adminList(Model model){
        return "list";
    }

    @RequestMapping(value = "/addProduct")
    public String add(Model model){
        return "addProduct";
    }


    @RequestMapping(value = "/editProduct")
    public String edit(Model model){
        return "editProduct";
    }

    @RequestMapping(value = "/editProduct/{id}", method = RequestMethod.GET)
    public String editProduct(@PathVariable("id") int id, Model model){
//        ProductVO productVO = productService.getProduct(id);
//        model.addAttribute("productVO", productVO);
        return "editProduct";
    }



}