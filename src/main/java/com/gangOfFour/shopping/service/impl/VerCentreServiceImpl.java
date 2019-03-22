package com.gangOfFour.shopping.service.impl;

import com.gangOfFour.shopping.dao.VerCentreDao;
import com.gangOfFour.shopping.pojo.VerCentre;
import com.gangOfFour.shopping.service.VerCentreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class VerCentreServiceImpl implements VerCentreService {
    @Autowired
    private VerCentreDao verCentreDao;
    @Override
    public VerCentre queryByIdVerCentre(int verCentreId) {
        return verCentreDao.selectByIdVerCentre(verCentreId);
    }

    @Override
    public List<VerCentre> queryByOCIdVerCentre(int colorCentreId) {
        return verCentreDao.selectByOCIdVerCentre(colorCentreId);
    }

    @Override
    @Transactional
    public boolean addVerCentre(VerCentre verCentre){
        int con=verCentreDao.insertVerCentre(verCentre);
        if(con>0)
            return true;
        return false;
    }
}
