package com.csm.cart.controller;

import com.csm.cart.service.CartService;
import com.csm.model.CartDO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class IndexController {

    @Autowired
    CartService cartService;

    /*@RequestMapping(value = "/",method = RequestMethod.GET)
    public String toIndex(){
        return "cart";
    }

    @RequestMapping(value = "/{uid}",method = RequestMethod.GET)
    public String toCart(@PathVariable int uid, HttpSession session) throws Exception {
        List<CartDO> products = cartService.findByUid2(uid);
        session.setAttribute("carts",products);
        return "forward:/";
    }*/
}
