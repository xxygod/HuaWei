package com.gangOfFour.shopping.service.impl;

import com.gangOfFour.shopping.dao.OneCategoryDao;
import com.gangOfFour.shopping.pojo.OneCategory;
import com.gangOfFour.shopping.service.OneCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class OneCategoryServiceImpl implements OneCategoryService {
    @Autowired
    private OneCategoryDao dao;
    @Override
    public List<OneCategory> getAllOneCategory() {
        return dao.selectAllOneCategory();
    }
}
