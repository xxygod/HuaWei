package com.gangOfFour.shopping.service;

import com.gangOfFour.shopping.pojo.*;
import com.gangOfFour.shopping.vo.VoProduct;
import com.github.pagehelper.PageInfo;

import java.util.List;


public interface ProductInfoService {

    /**
     * 插入数据
     * @param productInfo  商品
     * @param colorCentre  颜色中间表
     * @param verCentre  版本中间表
     * @param pictureInfos  商品图片介绍表
     * @return
     */
    boolean addProductInfo(ProductInfo productInfo, ColorCentre colorCentre, VerCentre verCentre, List<PictureInfo> pictureInfos);
    PageInfo<ProductInfo> queryProductInfo(int currentPage);

    /**
     *  根据一级分类和销售模式查询商品
     * @param oneCategory 一級分類
     * @param pattern   销售模式
     * @param number  数量
     * @return
     */
    List queryByPatternProductInfo(int oneCategory , String pattern, int number, List<VoProduct> voProducts);

    /**
     * 根据id查询商品详细信息
     * @param productId
     * @return
     */
    ProductInfo queryByIdProductInfo(int productId);

    /**
     * 根据一级分类ID查询所有一级分类商品
     * @param
     * @param currentPage  当前页数
     * @return
     */
    PageInfo<VoProduct> queryByOCIdProduct( int oneCategoryId,int currentPage, String order,String by);
    /**
     * 根据二级分类ID查询所有一级分类商品
     * @param
     * @return
     */
    PageInfo<VoProduct> queryByTCIdProduct( int twoCategoryId,int currentPage,String order,String by);

    /**
     * 根据搜索框模糊查询所有商品
     * @param
     * @return
     */
    PageInfo<VoProduct> queryLikeIdProduct(String productName,int currentPage,String order,String by);

    /**
     * 根据一级分类id查询二级分类名
     * @param oneCategoryId
     * @return
     */
    List<TwoCategory> queryCategoryName(int oneCategoryId);



}
