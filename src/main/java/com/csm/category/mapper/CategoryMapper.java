package com.csm.category.mapper;


import com.alibaba.fastjson.JSONObject;
import com.csm.model.CategoryDO;

import java.util.List;

public interface CategoryMapper {

    //添加分类
    void insertCategory(CategoryDO category) throws Exception;

    //删除分类
    void deleteCategory(int id) throws Exception;

    //编辑分类
    void updateCategory(CategoryDO category) throws Exception;

    //查询分类
    List<CategoryDO> selectAll(JSONObject jsonObject) throws Exception;

    //查询count
    int selectCount(JSONObject jsonObject) throws Exception;

    public List<CategoryDO> selectCategoryAll();

    CategoryDO selectByCid(CategoryDO category) throws Exception;
}
