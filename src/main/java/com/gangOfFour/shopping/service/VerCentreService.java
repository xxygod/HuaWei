package com.gangOfFour.shopping.service;

import com.gangOfFour.shopping.MyException.NullVaullException;
import com.gangOfFour.shopping.pojo.VerCentre;

import java.util.List;

public interface VerCentreService {
    VerCentre queryByIdVerCentre(int verCentreId);
    List<VerCentre> queryByOCIdVerCentre(int colorCentreId);
    boolean addVerCentre(VerCentre verCentre);
}
