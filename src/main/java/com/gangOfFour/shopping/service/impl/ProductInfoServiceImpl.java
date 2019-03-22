package com.gangOfFour.shopping.service.impl;

import com.gangOfFour.shopping.dao.ColorCentreDao;
import com.gangOfFour.shopping.dao.PictureInfoDao;
import com.gangOfFour.shopping.dao.ProductInfoDao;
import com.gangOfFour.shopping.dao.VerCentreDao;
import com.gangOfFour.shopping.pojo.*;
import com.gangOfFour.shopping.service.ProductInfoService;
import com.gangOfFour.shopping.vo.VoProduct;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@Service
public class ProductInfoServiceImpl implements ProductInfoService {
    @Autowired
    private ProductInfoDao productInfoDao;
    @Autowired
    private ColorCentreDao colorCentreDao;
    @Autowired
    private VerCentreDao verCentreDao;
    @Autowired
    private PictureInfoDao pictureInfoDao;

    @Override
    @Transactional
    public boolean addProductInfo(ProductInfo productInfo, ColorCentre colorCentre, VerCentre verCentre, List<PictureInfo> pictureInfos) {
        int con=productInfoDao.insertProductInfo(productInfo);
        if(con >0){
            colorCentre.setProductInfo(productInfo);
            int con1=colorCentreDao.insertColorCentre(colorCentre);
            if(con1>0){
                verCentre.setColorCentre(colorCentre);
                int con2=verCentreDao.insertVerCentre(verCentre);
                if(con2>0){
                    for(int i=0 ;i<pictureInfos.size();i++){
                        PictureInfo pictureInfo=pictureInfos.get(i);
                        pictureInfo.setProductInfo(productInfo);
                        int con3=pictureInfoDao.insertPictureInfo(pictureInfo);
                        if(!(con3 >0)){
                            return false;
                        }
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override
    public PageInfo<ProductInfo> queryProductInfo(int currentPage) {
        PageHelper.startPage(currentPage, 15);
        List<ProductInfo> productInfos = productInfoDao.selectAllProductInfo();
        PageInfo<ProductInfo> page = new PageInfo<>(productInfos);
        return  page;
    }

    @Override
    public List<VoProduct> queryByPatternProductInfo(int oneCategory, String pattern , int number,List<VoProduct> voProducts) {
        List<ProductInfo> list=new ArrayList<>();
        List<VoProduct> voProduct=new ArrayList<>();
        List<ProductInfo> list3=null;
        boolean con=true;
        int num=0;
        if(list.size() < number){
            do{
                List<ProductInfo> list2= queryProductInfo(oneCategory, pattern, number,voProducts);
                Iterator<ProductInfo> it = list2.iterator();
                while(it.hasNext()){
                    ProductInfo x = it.next();
                    if(list !=null) {
                        for (int j = 0; j < list.size(); j++) {
                            if (x.getProductId() == list.get(j).getProductId()) {
                                it.remove();
                            }
                        }
                    }
                }
                for (int i = 0; i < list2.size(); i++){
                    list.add(list2.get(i));
                    if (list.size() == number) {
                        con=false;
                        break;
                    }
                }
                num++;
                if(list.size() < number) {
                    if (num == 20) {
                        list3 = productInfoDao.selectProductInfo(oneCategory, null, number,voProducts);
                        con = false;
                    }
                }
            }while(con);
        }
        List<ProductInfo> list4=null;
        if(list.size()==number) {
            list4=list;
        }else if(list3.size()==number){
            list4=list3;
        }
        if(list4 != null) {
            for (int i = 0; i < list4.size(); i++) {
                VerCentre verCentre = verCentreDao.selectByProductIdVerCentre(list4.get(i).getProductId());
                VoProduct voProduct1 = new VoProduct();
                voProduct1.setProductId(list4.get(i).getProductId());
                voProduct1.setProductName(list4.get(i).getProductName());
                voProduct1.setPattern(list4.get(i).getPattern());
                voProduct1.setLogo(list4.get(i).getLogo());
                voProduct1.setProductPrice(verCentre.getProductPrice());
                voProduct.add(voProduct1);
            }
        }
        return voProduct;
    }

    @Override
    public ProductInfo queryByIdProductInfo(int productId) {
        return productInfoDao.selectByIdProductInfo(productId);
    }



    @Override
    public PageInfo<VoProduct> queryByOCIdProduct(int oneCategoryId,int currentPage,String order ,String by) {
        PageHelper.startPage(currentPage, 20);
        List<ProductInfo> productInfos=productInfoDao.selectByOCIdProduct(oneCategoryId,order,by);
        PageInfo page = new PageInfo<>(productInfos);
        List<VoProduct> voProducts=new ArrayList<>();
        for(int i=0;i<productInfos.size();i++){
            VerCentre verCentre=verCentreDao.selectByProductIdVerCentre(productInfos.get(i).getProductId());
            VoProduct voProduct = new VoProduct();
            voProduct.setProductId(productInfos.get(i).getProductId());
            voProduct.setProductName(productInfos.get(i).getProductName());
            voProduct.setPattern(productInfos.get(i).getPattern());
            voProduct.setLogo(productInfos.get(i).getLogo());
            voProduct.setProductPrice(verCentre.getProductPrice());
            voProducts.add(voProduct);
        }
        page.setList(voProducts);
        return page;
    }

    @Override
    public PageInfo queryByTCIdProduct(int twoCategoryId,int currentPage,String order ,String by) {
        PageHelper.startPage(currentPage, 20);
        List<ProductInfo> productInfos=productInfoDao.selectByTCIdProduct(twoCategoryId,order,by);
        PageInfo page= new PageInfo<>(productInfos);
        List<VoProduct> voProducts=new ArrayList<>();
        for(int i=0;i<productInfos.size();i++){
            VerCentre verCentre=verCentreDao.selectByProductIdVerCentre(productInfos.get(i).getProductId());
            VoProduct voProduct = new VoProduct();
            voProduct.setProductId(productInfos.get(i).getProductId());
            voProduct.setProductName(productInfos.get(i).getProductName());
            voProduct.setPattern(productInfos.get(i).getPattern());
            voProduct.setLogo(productInfos.get(i).getLogo());
            voProduct.setProductPrice(verCentre.getProductPrice());
            voProducts.add(voProduct);
        }
        page.setList(voProducts);
        return page;
    }

    @Override
    public PageInfo<VoProduct> queryLikeIdProduct(String productName,int currentPage,String order ,String by) {
        PageHelper.startPage(currentPage, 20);
        List<ProductInfo> productInfos=productInfoDao.selectLikeProduct(productName,order,by);
        PageInfo page = new PageInfo<>(productInfos);
        List<VoProduct> voProducts=new ArrayList<>();
        for(int i=0;i<productInfos.size();i++){
            VerCentre verCentre=verCentreDao.selectByProductIdVerCentre(productInfos.get(i).getProductId());
            VoProduct voProduct = new VoProduct();
            voProduct.setProductId(productInfos.get(i).getProductId());
            voProduct.setProductName(productInfos.get(i).getProductName());
            voProduct.setPattern(productInfos.get(i).getPattern());
            voProduct.setLogo(productInfos.get(i).getLogo());
            voProduct.setProductPrice(verCentre.getProductPrice());
            voProducts.add(voProduct);
        }
        page.setList(voProducts);
        return page;
    }

    @Override
    public List<TwoCategory> queryCategoryName(int oneCategoryId) {
        return productInfoDao.selectCategoryName(oneCategoryId);
    }




    public List<ProductInfo> queryProductInfo(int oneCategory, String pattern , int number,List<VoProduct> voProducts){
        List<ProductInfo> list=productInfoDao.selectByPatternProductInfo(oneCategory,pattern,number,voProducts);
        return list;
    }

}
