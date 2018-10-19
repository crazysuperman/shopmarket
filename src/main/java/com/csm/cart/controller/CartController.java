package com.csm.cart.controller;

import com.csm.cart.service.CartService;
import com.csm.category.service.CategoryService;
import com.csm.model.CartDO;
import com.csm.model.CategoryDO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class CartController {

    @Autowired
    CartService cartService;
    @Autowired
    CategoryService categoryService;




    @RequestMapping(value = "/cart",method = RequestMethod.GET)
    public String toIndex(){
        return "cart";
    }

    @RequestMapping(value = "/cart2",method = RequestMethod.GET)
    public String toIndex2() throws Exception {
        return "cart2";
    }

    @RequestMapping(value = "/cart/{uid}",method = RequestMethod.GET)
    public String toCart(@PathVariable int uid, HttpSession session) throws Exception {
        List<CartDO> products = cartService.findByUid2(uid);
        session.setAttribute("carts",products);
        List<CategoryDO> categoryAll = categoryService.findCategoryAll();
        session.setAttribute("categorys",categoryAll);
        return "redirect:/cart";
    }

    @RequestMapping(value = "/getCart",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String getCart(@RequestBody CartDO[] carts, HttpSession session) throws Exception {
        int[] arr = new int[carts.length];
        for (int i= 0;i<carts.length;i++){
            arr[i]=carts[i].getId();
        }
        List<CartDO> products = cartService.findByIds(arr);
        session.setAttribute("carts",products);
        return "0";
    }

    @RequestMapping(value = "/deletefromcart/{id}",method = RequestMethod.DELETE,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String deleteFromCart(@PathVariable("id") int id) throws Exception {
        int[] arr = {id};
        cartService.removeByItem(arr);
        return "0";
    }

    @RequestMapping(value = "/editcart",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String editCart(@RequestBody CartDO[] carts) throws Exception {
        for (int i= 0;i<carts.length;i++){
            cartService.modifyCart(carts[i]);
        }
        return "0";
    }

    @RequestMapping(value = "addcart",method = RequestMethod.POST)
    @ResponseBody
    public String addCart(CartDO cart) throws Exception {
        cartService.saveCart(cart);
        return "0";
    }
}
