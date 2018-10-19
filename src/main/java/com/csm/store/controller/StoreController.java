package com.csm.store.controller;

import com.alibaba.fastjson.JSONObject;
import com.csm.model.PageBean;
import com.csm.model.ProductDO;
import com.csm.model.StoreDO;
import com.csm.model.UserDO;
import com.csm.store.service.ProductService;
import com.csm.store.service.StoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller
public class StoreController {
    @Autowired
    private StoreService service;
    @Autowired
    private ProductService productService;

    @RequestMapping(value = "/{path}",method = RequestMethod.GET)
    public String toforward(@PathVariable String path, HttpSession session){

        return path;
    }
    /*@RequestMapping("/webmaster")
    public String storemanage(Model model){
        UserDO userDO = new UserDO();
        userDO.setUsername("xiaoming");


        model.addAttribute("user",userDO);
        return "webmaster";
    }*/
    @ResponseBody
    @RequestMapping(value = "/liststore",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public Object listStore(@RequestBody JSONObject jsonFactory){
        String string = jsonFactory.getString("offset");
        String string2 = jsonFactory.getString("limit");
        String search = jsonFactory.getString("search");
        String order = jsonFactory.getString("order");
        int findlike = service.countStore(search);
        int offset = Integer.parseInt(string);
        int pageCount = Integer.parseInt(string2);
        List<StoreDO> list = service.listStore(offset,pageCount,search,order);
        PageBean<StoreDO> page = new PageBean<>();
        page.setTotal(findlike);
        page.setRows(list);
        //System.out.print(page);
        return page;

    }
    @RequestMapping(value = "/deletestore",method = RequestMethod.POST)
    public String toget(StoreDO storeDO) {

        service.removeStore(storeDO);
       // System.out.println(storeDO);
        return "store2";
    }
    @RequestMapping(value = "/savestore",method = RequestMethod.POST)
    public String saveStore(StoreDO storeDO){
        //System.out.println(storeDO);
       service.saveStore(storeDO);
        return "store2";
    }
    @RequestMapping(value = "/updatestore",method = RequestMethod.POST)
    public String uudateStore(StoreDO storeDO){
        //System.out.println(storeDO);
        service.updateStore(storeDO);
        return "store2";
    }
    //商品模块
    //跳转到商品页面
    @RequestMapping("/productmanage")
    public String productmanage(StoreDO storeDO,HttpSession session){
        StoreDO storeById = service.getStoreById(storeDO);
        session.setAttribute("sessionstore",storeById);
        return "forward:/toproduct";
    }
    @RequestMapping("/toproductmanage")
    public String toproductmanage(StoreDO storeDO,HttpSession session){
        StoreDO storeById = service.getStoreById(storeDO);
        session.setAttribute("sessionstore",storeById);
        return "productmanage";
    }
    //商品表
    @ResponseBody
    @RequestMapping(value = "/listproduct",method = RequestMethod.POST,produces = "application/json;charset=UTF-8")
    public Object listProduct(@RequestBody JSONObject jsonFactory,int sid){
        String string = jsonFactory.getString("offset");
        String string2 = jsonFactory.getString("limit");
        String search = jsonFactory.getString("search");
        String order = jsonFactory.getString("order");
        int findlike = productService.countProduct(search,sid);
        int offset = Integer.parseInt(string);
        int pageCount = Integer.parseInt(string2);
        List<ProductDO> list = productService.listProduct(sid,offset,pageCount,search,order);
        PageBean<ProductDO> page = new PageBean<>();
        page.setTotal(findlike);
        page.setRows(list);
        //System.out.print(page);
        return page;
    }
    //删除商品
    @RequestMapping("/deleteProduct")
    public String deleteProduct(ProductDO productDO){
        productService.deleteProduct(productDO);
        return "produ2";
    }
    //添加商品
    @RequestMapping("/saveproduct")
    public String saveproduct(ProductDO productDO,MultipartFile files, HttpServletRequest request){
        String path = request.getServletContext().getRealPath("/picture/product/"+files.getOriginalFilename());
        File file = new File(path);
        if(files.getOriginalFilename()!=""){
            try {
                files.transferTo(file);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        String pimage = "picture/product/"+files.getOriginalFilename();
        productDO.setPimage(pimage);
        productDO.setPdate(new Date());
        //System.out.println(files.getOriginalFilename());
        //System.out.println(productDO);
        productService.saveProduct(productDO);
        return "produ2";
    }
    //添加商品
    @RequestMapping("/updateproduct")
    public String updateproduct(ProductDO productDO,MultipartFile files, HttpServletRequest request){
        System.out.println(productDO);
        //System.out.println(files.getOriginalFilename().contains("."));
        String path = request.getServletContext().getRealPath("/picture/product/"+files.getOriginalFilename());
        File file = new File(path);
        ProductDO product = productService.getProduct(productDO);

        if(files.getOriginalFilename().contains(".")==true){
            //System.out.println("t");
            try {
               files.transferTo(file);
               String pimage = "picture/product/"+files.getOriginalFilename();
               productDO.setPimage(pimage);
           } catch (IOException e) {
               e.printStackTrace();
           }
       }else {
            //System.out.println("f");
            productDO.setPimage(product.getPimage());
        }
        productDO.setPdate(new Date());
        //System.out.println(files.getOriginalFilename());
        //System.out.println(productDO);
        productService.updateProduct(productDO);
        return "produ2";
    }
    @RequestMapping("/tostore")
    public String toStore(){
        return "store2";
    }

    @RequestMapping("/toproduct")
    public String toProdu(){
        return "produ2";
    }
}
