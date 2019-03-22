package com.gangOfFour.shopping.dao;

import com.gangOfFour.shopping.pojo.VerCentre;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VerCentreDao {
    int insertVerCentre(VerCentre verCentre);
    VerCentre selectByIdVerCentre(int verCentreId);
    List<VerCentre> selectByOCIdVerCentre(@Param("colorCentreId") int colorCentreId);
    VerCentre selectByProductIdVerCentre(@Param("productId") int productId);
    VerCentre selectByIdProductInfo(@Param("verCentreId") int verCentreId);
}
