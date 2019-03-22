package com.gangOfFour.shopping.service;

import com.gangOfFour.shopping.pojo.ProVersions;

import java.util.List;

public interface ProVersionsService {
    List<ProVersions> queryByOCIdProVersions(int oneCategory);
    List<ProVersions> queryByCCIdProVersions(int colorCentreId);
}
