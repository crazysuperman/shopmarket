package com.csm.category.controller;


import com.alibaba.fastjson.JSONObject;
import com.csm.category.service.CategoryService;
import com.csm.model.CartDO;
import com.csm.model.CategoryDO;
import com.csm.model.UserDO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class IndexCategoryController {

    @Autowired
    CategoryService categoryService;

    @RequestMapping(value = "/category",method = RequestMethod.GET)
    public String toIndex2(){
        return "categoryTable";
    }


    @RequestMapping(value = "/getcategory",method = RequestMethod.GET)
    @ResponseBody
    public Object toCart(@RequestBody JSONObject jsonObject) throws Exception {
        jsonObject= categoryService.findAll(jsonObject);
        System.out.println(jsonObject.get("rows"));
        System.out.println(jsonObject.get("total"));
        return jsonObject;
    }

    @RequestMapping(value = "editcategory",method = RequestMethod.POST)

    public String editCategory(CategoryDO category) throws Exception {
        categoryService.modifyCategory(category);
        return "categoryTable";
    }


    @RequestMapping("/deletecategory")
    public String deleteCategory(CategoryDO category) throws Exception {
        categoryService.removeCategory(category.getCid());
        return "categoryTable";
    }


    @RequestMapping("/savecategory")
    public String saveUser(CategoryDO category) throws Exception {
        categoryService.saveCategory(category);
        return "categoryTable";
    }

    //通过cid查询分类
    @RequestMapping("/getcategorybycid")
    @ResponseBody
    public CategoryDO getUserByUid(CategoryDO category) throws Exception {
        return categoryService.findByCid(category);
    }

}
