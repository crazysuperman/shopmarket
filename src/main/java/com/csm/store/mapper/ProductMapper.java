package com.csm.store.mapper;

import com.csm.model.ProductDO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProductMapper {
    //删除
    public void deleteProduct(ProductDO productDO);
    //增加
    public void saveProduct(ProductDO productDO);
    //修改
    public void updateProduct(ProductDO productDO);
    //按id查询
    public ProductDO getProduct(ProductDO productDO);
    //数量
    public int countProduct(@Param("search") String search,@Param("sid") int sid);
    //模糊查询
    public List<ProductDO> listProduct(@Param("sid") int sid,@Param("offset") int offset, @Param("pageCount") int pageCount, @Param("search") String search, @Param("order") String order) ;
}
