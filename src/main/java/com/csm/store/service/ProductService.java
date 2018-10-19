package com.csm.store.service;

import com.csm.model.ProductDO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductService {
    //删除
    public void deleteProduct(ProductDO productDO);
    //增加
    public void saveProduct(ProductDO productDO);
    //修改
    public void updateProduct(ProductDO productDO);
    //数量
    public int countProduct(String search,int sid);
    //按id查询
    public ProductDO getProduct(ProductDO productDO);
    //模糊查询
    public List<ProductDO> listProduct(int sid,int offset, int pageCount, String search, String order) ;
}
