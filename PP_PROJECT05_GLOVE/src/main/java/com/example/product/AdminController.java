package com.example.product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AdminController {

    @Autowired
    ProductServiceImpl productService;

    //admin용 상품전체조회
    @RequestMapping(value = "admin/list", method = RequestMethod.GET)
    public String adminList(Model model){
        model.addAttribute("list", productService.getProductList());
        return "list";
    }



    //user용 브랜드별 상품 조회
    @RequestMapping(value = "user/list/{brand}", method = RequestMethod.GET)
    public String productList(@PathVariable("brand") String brand, Model model){
        model.addAttribute("list", productService.getProductListByBrand(brand));
        return "productList";
    }

    //user용 개별 상품 보기
    @RequestMapping(value = "user/view/{id}", method = RequestMethod.GET)
    public String viewProduct(@PathVariable("id") int id, Model model){
        ProductVO productVO = productService.getProduct(id);
        model.addAttribute("productVO", productVO);
        return "viewProduct";
    }

    //user용 해당 상품 주문폼으로 넘어가기
    @RequestMapping(value = "user/order", method = RequestMethod.POST)
    public String gotoForm(ProductVO vo){
        int pid = vo.getSeq();
        return "redirect:order/" + pid;
    }

    /*
    @RequestMapping(value = "user/order/add", method = RequestMethod.POST)
    public String addPost(){
        return "addOrder";
    }
    */

    @RequestMapping(value = "user/order/{pid}", method = RequestMethod.GET)
    public String add(@PathVariable("pid") int pid, Model model){
        ProductVO productVO = productService.getProduct(pid);
        model.addAttribute("productVO", productVO);
        model.addAttribute("pid", pid);
        return "addOrder";
    }


    //상품 추가하기
    @RequestMapping(value = "admin/add", method = RequestMethod.GET)
    public String add(Model model){
        return "addProduct";
    }

    //상품추가 처리
    @RequestMapping(value = "admin/addok", method = RequestMethod.POST)
    public String addok(ProductVO vo){
        int i = productService.insertProduct(vo);
        if(i == 0){
            System.out.println("데이터 추가 실패");
        }else{
            System.out.println("데이터 추가 성공!!!");
        }
        return "redirect:list";
    }

    //상품정보 수정하기
    @RequestMapping(value = "admin/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") int id, Model model){
        ProductVO productVO = productService.getProduct(id);
        model.addAttribute("productVO", productVO);
        return "editProduct";
    }

    //상품정보 수정 처리
    @RequestMapping(value = "admin/editok", method = RequestMethod.POST)
    public String editok(ProductVO vo){
        int i = productService.updateProduct(vo);
        if(i == 0){
            System.out.println("상품데이터 수정 실패");
        }else{
            System.out.println("상품데이터 수정 성공!!!");
        }
        return "redirect:list";
    }

    //상품삭제처리
    @RequestMapping(value = "admin/delete/{id}", method = RequestMethod.GET)
    public String deleteok(@PathVariable("id") int id){
        int i = productService.deleteProduct(id);
        if(i == 0){
            System.out.println("데이터 삭제 실패");
        }else{
            System.out.println("데이터 삭제 성공!!!");
        }
        return "redirect:../list";
    }


}