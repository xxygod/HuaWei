package com.gangOfFour.shopping.service.impl;

import com.gangOfFour.shopping.dao.ProVersionsDao;
import com.gangOfFour.shopping.pojo.ProVersions;
import com.gangOfFour.shopping.service.ProVersionsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ProVersionsServiceImpl implements ProVersionsService {
    @Autowired
    private ProVersionsDao proVersionsDao;
    @Override
    public List<ProVersions> queryByOCIdProVersions(int oneCategoryId) {
        return proVersionsDao.selectByOCIdProVersions(oneCategoryId);
    }

    @Override
    public List<ProVersions> queryByCCIdProVersions(int colorCentreId) {
        return proVersionsDao.selectByCCIdProVersions(colorCentreId);
    }
}
