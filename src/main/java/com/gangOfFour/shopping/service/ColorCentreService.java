package com.gangOfFour.shopping.service;

import com.gangOfFour.shopping.pojo.ColorCentre;

import java.util.List;

public interface ColorCentreService {
    Boolean addColorCentre(ColorCentre colorCentre);
    List<ColorCentre> queryByProductIdColorCentre(int productId);
    ColorCentre queryByproIdAndcolorIdColorCentre(int productId,int productColorId);
}
