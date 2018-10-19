package com.csm.store.mapper;

import com.csm.model.StoreDO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StoreMapper {
    //按id查询商铺信息
    public StoreDO getStoreById(StoreDO storeDO);
    //新增商铺信息
    public void saveStore(StoreDO storeDO);
    //删除商铺
    public void removeStore(StoreDO storeDO);
    //修改商铺信息
    public void updateStore(StoreDO storeDO);
    //商铺数量
    public int countStore(@Param("search") String search);
    //模糊查询
    public List<StoreDO> listStore(@Param("offset") int offset, @Param("pageCount") int pageCount, @Param("search") String search, @Param("order") String order);
}
