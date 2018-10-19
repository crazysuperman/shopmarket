package com.csm.category.service;

import com.alibaba.fastjson.JSONObject;
import com.csm.model.CategoryDO;

import java.util.List;

public interface CategoryService {
    //添加分类
    void saveCategory(CategoryDO category) throws Exception;

    //删除分类
    void removeCategory(int id) throws Exception;

    //编辑分类
    void modifyCategory(CategoryDO category) throws Exception;

    //查询分类
    JSONObject findAll(JSONObject jsonObject) throws Exception;

    //查询count
    int findCount(JSONObject jsonObject) throws Exception;

    public List<CategoryDO> findCategoryAll();

    CategoryDO findByCid(CategoryDO category) throws Exception;
}
