package com.csm.product.vo;

import com.csm.model.ProductDO;
import java.util.List;

public class PageProduct {
    private int pageSize = 12;                              //每页显示多少条数据
    private int pageNumber = 1;                             //页码 从客户端传来
    private int totalRecouds;                               //表中的总记录数
    private int totalPages;                                 //总页数
    private List<ProductDO> products;                       //每页商品信息
    private int offset;                                     //数据起始位置
    private int cid=-1;                                        // 种类ID
    private String search;                                  //查询的字段
    private double headPrice = -1;                           //查询时的最低价格
    private double footPrice = -1;              //查询时的最高价格

    //计算出总页数
    public int getTotalPages() {
        double i = totalRecouds;
        totalPages =(int) Math.ceil(i/pageSize);

        return totalPages;
    }

    //计算出offset分页起始位置
    public int getOffset(){
        offset=(pageNumber-1)*pageSize;
        return offset;
    }
    public String getSearch() {
        return search;
    }

    public void setSearch(String search) {
        this.search = search;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getPageSize() {
        return pageSize;
    }

    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }

    public int getTotalRecouds() {
        return totalRecouds;
    }

    public void setTotalRecouds(int totalRecouds) {
        this.totalRecouds = totalRecouds;
    }

    public List<ProductDO> getProducts() {
        return products;
    }

    public void setProducts(List<ProductDO> products) {
        this.products = products;
    }

    public int getPageNumber() {
        return pageNumber;
    }

    public void setPageNumber(int pageNumber) {
        this.pageNumber = pageNumber;
    }

    public double getHeadPrice() {
        return headPrice;
    }

    public void setHeadPrice(double headPrice) {
        this.headPrice = headPrice;
    }

    public double getFootPrice() {
        return footPrice;
    }

    public void setFootPrice(double footPrice) {
        this.footPrice = footPrice;
    }

    @Override
    public String toString() {
        final StringBuffer sb = new StringBuffer("PageProduct{");
        sb.append("pageSize=").append(pageSize);
        sb.append(", pageNumber=").append(pageNumber);
        sb.append(", totalRecouds=").append(totalRecouds);
        sb.append(", totalPages=").append(totalPages);
        sb.append(", products=").append(products);
        sb.append(", offset=").append(offset);
        sb.append(", cid=").append(cid);
        sb.append(", search='").append(search).append('\'');
        sb.append(", headPrice=").append(headPrice);
        sb.append(", footPrice=").append(footPrice);
        sb.append('}');
        return sb.toString();
    }
}
