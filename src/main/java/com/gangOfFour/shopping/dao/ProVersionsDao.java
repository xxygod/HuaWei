package com.gangOfFour.shopping.dao;

import com.gangOfFour.shopping.pojo.ProVersions;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ProVersionsDao {
    List<ProVersions> selectByOCIdProVersions(@Param("oneCategoryId") int oneCategoryId);
    List<ProVersions> selectByCCIdProVersions(@Param("colorCentreId") int colorCentreId);
}
