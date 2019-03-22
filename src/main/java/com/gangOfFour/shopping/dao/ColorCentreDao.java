package com.gangOfFour.shopping.dao;

import com.gangOfFour.shopping.pojo.ColorCentre;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ColorCentreDao {
    int insertColorCentre(ColorCentre colorCentre);
    ColorCentre selectByproIdAndcolorIdColorCentre(@Param("productId") int productId, @Param("productColorId") int productColorId);
    List<ColorCentre> selectByProductIdColorCentre(@Param("productId") int productId);
}
