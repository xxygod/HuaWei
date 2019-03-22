package com.gangOfFour.shopping.service;

import com.gangOfFour.shopping.pojo.PictureColor;

import java.util.List;

public interface PictureColorService {
    boolean addPictureColor(List<PictureColor> list, int productId, int productColorId);
}
