package com.gangOfFour.shopping.dao;

import com.gangOfFour.shopping.pojo.ProductInfo;
import com.gangOfFour.shopping.pojo.TwoCategory;
import com.gangOfFour.shopping.vo.VoProduct;
import org.apache.ibatis.annotations.Param;
import java.util.List;

public interface ProductInfoDao {

    /**
     * 新增商品
     * @param productInfo
     * @return
     */
    int insertProductInfo(ProductInfo productInfo);

    /**
     * 分页查询所有的商品
     * @return
     */
    List<ProductInfo> selectAllProductInfo();

    /**
     * 随机查询数据
     * @param oneCategoryId  一级分类id
     * @param pattern  销售方式
     * @param number  查询数量
     * @return
     */
    List<ProductInfo> selectByPatternProductInfo(@Param("oneCategoryId") int oneCategoryId,@Param("pattern") String pattern,@Param("number") int number, @Param("voProducts") List<VoProduct> voProducts);

    /**
     * 当随机查询数据达不到要求时采用常规查询方法
     * @param oneCategoryId  一级分类id
     * @param pattern  销售方式
     * @param number  查询数量
     * @return
     */
    List<ProductInfo> selectProductInfo(@Param("oneCategoryId") int oneCategoryId,@Param("pattern") String pattern,@Param("number") int number,@Param("voProducts") List<VoProduct> voProducts);

    /**
     * 根据商品id 查询详细信息
     * @param productId
     * @return
     */
    ProductInfo selectByIdProductInfo(@Param("productId") int productId);


    /**
     * 根据一级分类ID查询所有一级分类商品
     * order 用什么排序
     * by 是升还是降
     * @param
     * @return
     */
    List<ProductInfo> selectByOCIdProduct(@Param("oneCategoryId") int oneCategoryId,@Param("order") String order,@Param("by") String by);

    /**
     * 根据二级分类ID查询所有一级分类商品
     * order 用什么排序
     * by 是升还是降
     * @param
     * @return
     */

    List<ProductInfo> selectByTCIdProduct(@Param("twoCategoryId") int twoCategoryId,@Param("order") String order,@Param("by") String by);

    /**
     * 根据搜索框模糊查询所有商品
     * order 用什么排序
     * by 是升还是降
     * @param
     * @return
     */
    List<ProductInfo> selectLikeProduct(@Param("productName") String productName,@Param("order") String order,@Param("by") String by);

    /**
     * 根据二级分类id查询所有二级分类名
     * @param
     * @return
     */
    List<TwoCategory> selectCategoryName(@Param("oneCategoryId") int oneCategoryId);



}
