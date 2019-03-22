package com.gangOfFour.shopping.service.impl;

import com.gangOfFour.shopping.dao.ColorCentreDao;
import com.gangOfFour.shopping.pojo.ColorCentre;
import com.gangOfFour.shopping.service.ColorCentreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ColorCentreServiceImpl implements ColorCentreService {

    @Autowired
    private ColorCentreDao colorCentreDao;
    @Override
    @Transactional
    public Boolean addColorCentre(ColorCentre colorCentre) {
        int con= 0;
            con = colorCentreDao.insertColorCentre(colorCentre);
        if(con>0)
            return true;
        return false;
    }

    @Override
    public List<ColorCentre> queryByProductIdColorCentre(int productId) {
        return colorCentreDao.selectByProductIdColorCentre(productId);
    }

    @Override
    public ColorCentre queryByproIdAndcolorIdColorCentre(int productId, int productColorId) {
        return colorCentreDao.selectByproIdAndcolorIdColorCentre(productId,productColorId);
    }
}
