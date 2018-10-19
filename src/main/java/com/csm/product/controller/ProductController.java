package com.csm.product.controller;

import com.alibaba.fastjson.JSONObject;
import com.csm.category.service.CategoryService;
import com.csm.model.CategoryDO;
import com.csm.product.service.IProductService;
import com.csm.product.vo.PageProduct;
import com.sun.org.apache.xpath.internal.SourceTree;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class ProductController {
    @Autowired
    private CategoryService ics;
    @Autowired
    private IProductService ips;




    @RequestMapping(value = "/tologinout",method = RequestMethod.GET)

    public String tologin(HttpSession session){
        session.removeAttribute("user");
        return "forward:/tologinuser";
    }

    /**跳转到首页head
     * @param request
     * @return获取所有种类category并以categorys的形式存在request中
     */
    @RequestMapping(value="/",method=RequestMethod.GET)
    public String head(HttpServletRequest request){
        List<CategoryDO> categoryAll = ics.findCategoryAll();
        request.setAttribute("categorys",categoryAll);

        return "product/head";
    }

    /**
     * 根据页码与商品种类查询商品
     * @param pageProduct
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/product/{cid}/{pageNumber}",method=RequestMethod.GET)
    public String findPage(PageProduct pageProduct,HttpServletRequest request) throws Exception{
        //分页vo信息封装进request域
        pageProduct = ips.findPageProduct(pageProduct);
        request.setAttribute("zpageProduct",pageProduct);
        //商品种类封装进request域
        List<CategoryDO> categoryAll = ics.findCategoryAll();
        request.setAttribute("categorys",categoryAll);
        System.out.println(pageProduct);
        return "product/index";
    }

    /**
     *根据页码与search来查询商品
     * @param pageProduct
     * @param request
     * @return
     * @throws Exception
     */
    @RequestMapping(value="/search/{search}/{pageNumber}",method=RequestMethod.GET)
    public String findSearch(PageProduct pageProduct,HttpServletRequest request) throws Exception{
        //分页vo信息封装进request域
        pageProduct = ips.findPageProduct(pageProduct);
        request.setAttribute("zpageProduct",pageProduct);
        //商品种类封装进request域
        List<CategoryDO> categoryAll = ics.findCategoryAll();
        request.setAttribute("categorys",categoryAll);

        return "product/index";
    }

    @RequestMapping(value="/price/{cid}/{search}/{headPrice}/{footPrice}/{pageNumber}",method=RequestMethod.GET)
    public String findPrice(PageProduct pageProduct,HttpServletRequest request) throws Exception{
        //分页vo信息封装进request域
        pageProduct = ips.findPageProduct(pageProduct);
        request.setAttribute("zpageProduct",pageProduct);
        //商品种类封装进request域
        List<CategoryDO> categoryAll = ics.findCategoryAll();
        request.setAttribute("categorys",categoryAll);

        return "product/index";
    }

}
