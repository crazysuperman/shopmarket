package com.csm.category.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.csm.category.mapper.CategoryMapper;
import com.csm.category.service.CategoryService;
import com.csm.model.CategoryDO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(isolation = Isolation.REPEATABLE_READ,propagation = Propagation.REQUIRED)
public class CategoryServiceImpl implements CategoryService{

    @Autowired
    CategoryMapper mapper;

    @Override
    public void saveCategory(CategoryDO category) throws Exception {
        mapper.insertCategory(category);
    }

    @Override
    public void removeCategory(int id) throws Exception {
        mapper.deleteCategory(id);
    }

    @Override
    public void modifyCategory(CategoryDO category) throws Exception {
        mapper.updateCategory(category);
    }

    @Override
    @Transactional(readOnly = true)
    public JSONObject findAll(JSONObject jsonObject) throws Exception {
        List<CategoryDO> lists = mapper.selectAll(jsonObject);
        jsonObject.put("rows",lists);
        jsonObject.put("total",findCount(jsonObject));
        return jsonObject;
    }

    @Override
    @Transactional(readOnly = true)
    public int findCount(JSONObject jsonObject) throws Exception {
        return mapper.selectCount(jsonObject);
    }

    @Override
    public List<CategoryDO> findCategoryAll() {
        List<CategoryDO> list = mapper.selectCategoryAll();

        return list;
    }

    @Override
    public CategoryDO findByCid(CategoryDO category) throws Exception {
        return mapper.selectByCid(category);
    }
}
