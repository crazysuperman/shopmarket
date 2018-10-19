package com.csm.product.mapper;

import com.csm.model.ProductDO;
import com.csm.product.vo.PageProduct;
import java.util.List;

/**
 * 商品类数据处理接口
 */
public interface ProductMapper2 {

    //分页查询
    public List<ProductDO> selectPageProduct(PageProduct pageProduct);

    //查询表中的符合当下条件下的总记录数
    public int selectTotalRecouds(PageProduct pageProduct);

    //根据商品名称进行模糊查询
    public List<ProductDO> selectLikePname(ProductDO productDO);

    //根据商品价格区间进行查询
    public List<ProductDO> selectByPrice(int pricea,int priceb);

}
