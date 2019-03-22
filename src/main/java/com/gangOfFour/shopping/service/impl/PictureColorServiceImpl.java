package com.gangOfFour.shopping.service.impl;

import com.gangOfFour.shopping.dao.ColorCentreDao;
import com.gangOfFour.shopping.dao.PictureColorDao;
import com.gangOfFour.shopping.pojo.ColorCentre;
import com.gangOfFour.shopping.pojo.PictureColor;
import com.gangOfFour.shopping.pojo.ProductColor;
import com.gangOfFour.shopping.pojo.ProductInfo;
import com.gangOfFour.shopping.service.PictureColorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class PictureColorServiceImpl implements PictureColorService {
    @Autowired
    private ColorCentreDao colorCentreDao;
    @Autowired
    private PictureColorDao pictureColorDao;
    @Override
    @Transactional
    public boolean addPictureColor(List<PictureColor> list, int productId, int productColorId) {
        ColorCentre colorCentre=colorCentreDao.selectByproIdAndcolorIdColorCentre(productId,productColorId);
        if(colorCentre == null){
            //为空的话说明还没有添加颜色需要添加颜色中间表和颜色图片表
            colorCentre=new ColorCentre();
            ProductInfo productInfo=new ProductInfo();
            productInfo.setProductId(productId);
            colorCentre.setProductInfo(productInfo);
            ProductColor productColor=new ProductColor();
            productColor.setProductColorId(productColorId);
            colorCentre.setProductColor(productColor);
            int con=colorCentreDao.insertColorCentre(colorCentre);
            if(con>0){
                for(int i=0;i<list.size();i++){
                    list.get(i).setColorCentreId(colorCentre.getColorCentreId());
                    int con1=pictureColorDao.insertPictureColor(list.get(i));
                    if(con1 == 0){
                        return false;
                    }
                }
            }
        }else{
            //不为空说明已添加颜色，只需添加图片
            for(int i=0;i<list.size();i++){
                list.get(i).setColorCentreId(colorCentre.getColorCentreId());
                int con1=pictureColorDao.insertPictureColor(list.get(i));
                if(con1 == 0){
                    return false;
                }
            }
        }
        return true;
    }
}
