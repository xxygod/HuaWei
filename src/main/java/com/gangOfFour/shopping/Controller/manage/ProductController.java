package com.gangOfFour.shopping.Controller.manage;


import com.gangOfFour.shopping.MyException.NullVaullException;

import com.gangOfFour.shopping.pojo.*;
import com.gangOfFour.shopping.service.ProductInfoService;
import com.gangOfFour.shopping.service.VerCentreService;
import com.gangOfFour.shopping.vo.VoProduct;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;


@Controller
@RequestMapping("/manage")
public class ProductController {
    @Autowired
    private ProductInfoService productInfoService;
    @Autowired
    private VerCentreService verCentreService;

    /**
     * 管理员添加商品
     * @param file
     * @param request
     * @return
     */
    @RequestMapping("/addProduct")
    public String addProduct(@RequestParam("file") CommonsMultipartFile file, HttpServletRequest request, HttpSession session)throws Exception{
        //获取商品介绍图
        Object list1=session.getAttribute("list");
        session.removeAttribute("list");
        List<String> list=null;
        List<PictureInfo> pictureInfos=new ArrayList<>();
        if(list1!= null){
            list=(List<String>) list1;
            for(int i=0;i<list.size();i++){
                PictureInfo pictureInfo=new PictureInfo();
                pictureInfo.setProductUrl(list.get(i));
                pictureInfo.setPictureOrder(i);
                pictureInfos.add(pictureInfo);
            }
        }
        String productCore=request.getParameter("productCore");//商品编码
        String oneCategoryId=request.getParameter("oneCategoryId");//一级分类的id
        String pattern=request.getParameter("pattern");//销售模式
        String productName=request.getParameter("productName");//商品名
        String productDate=request.getParameter("productDate");//生产时间
        String twoCategoryId=request.getParameter("twoCategoryId");//二级分类的id

        String productColorId=request.getParameter("productColorId");//颜色id

        String inventory=request.getParameter("inventory");//库存
        String parament=request.getParameter("editorValue");//参数
        String proVersionsId=request.getParameter("proVersionsId");//版本id
        String productCost=request.getParameter("productCost");//原价
        String description=request.getParameter("description");//商品描述
        String productPrice=request.getParameter("productPrice");//商品价格
        if(productCore==null||oneCategoryId==null||pattern==null||productName==null||
                productDate==null||twoCategoryId==null||productColorId==null||inventory==null||
                parament==null||proVersionsId==null||productCost==null||description==null||
                productPrice==null){
            throw new NullVaullException("请填写完整商品信息");
        }
        ProductInfo productInfo=new ProductInfo();
        ColorCentre colorCentre=new ColorCentre();//颜色的中间表
        VerCentre verCentre =new VerCentre();//版本与颜色的中间表
        productInfo.setProductCore(productCore);
        OneCategory oneCategory=new OneCategory();
        oneCategory.setOneCategoryId(Integer.valueOf(oneCategoryId));
        productInfo.setOneCategory(oneCategory);
        productInfo.setPattern(pattern);
        productInfo.setProductName(productName);
        productInfo.setProductDate(productDate);
        TwoCategory twoCategory=new TwoCategory();
        twoCategory.setTwoCategoryId(Integer.valueOf(twoCategoryId));
        productInfo.setTwoCategory(twoCategory);

        ProductColor productColor=new ProductColor();
        productColor.setProductColorId(Integer.valueOf(productColorId));
        colorCentre.setProductColor(productColor);

        verCentre.setInventory(Integer.valueOf(inventory));
        verCentre.setParament(parament);
        verCentre.setProductCost(BigDecimal.valueOf(Double.valueOf(productCost)));
        verCentre.setDescription(description);
        verCentre.setProductPrice(BigDecimal.valueOf(Double.valueOf(productPrice)));
        ProVersions proVersions=new ProVersions();
        proVersions.setProVersionsId(Integer.valueOf(proVersionsId));
        verCentre.setProVersions(proVersions);

        ServletContext application=request.getServletContext();
        String path=application.getInitParameter("dir");//获取web.xml文件的dir的值；
        File file1=null;
        if(file.getSize()>0) {
            String fileName = file.getOriginalFilename();
            String name=fileName.substring(fileName.indexOf("."),fileName.length());
            String newFileName=String.valueOf(((int)(Math.random()*8999)+1000))+System.currentTimeMillis();
            path=path+newFileName+name;
            file1=new File(path);
            productInfo.setLogo(newFileName+name);
        }else{
            throw new NullVaullException("前选择图片");
        }
        try {
            file.transferTo(file1);
        } catch (IOException e) {
            throw new NullVaullException("图片上传失败");
        }
        boolean con= false;
        try {
            con = productInfoService.addProductInfo(productInfo,colorCentre,verCentre,pictureInfos);
        } catch (Exception e) {
            throw new NullVaullException("商品上传失败");
        }
        if(con){
            //新增成功
            return "/manage/product_add";
        }else{
            //新增失败
            return "/manage/product_add";
        }
}
    /**
     * 查询商品信息
     * @return
     */
    @RequestMapping("/queryAllProduct")
    public String queryAllProduct(ModelMap map,String currentPage){
        if(currentPage == null){
            currentPage="1";
        }
       PageInfo<ProductInfo> page =productInfoService.queryProductInfo(Integer.valueOf(currentPage));
        map.put("page", page);
        return "/manage/product_list";
   }

   @RequestMapping("/queryPrice")
   @ResponseBody
   public List<VerCentre> queryPrice(String proVersions){
        if(proVersions!=null){
            VerCentre verCentre=verCentreService.queryByIdVerCentre(Integer.valueOf(proVersions));
            List<VerCentre> list=new ArrayList<>();
            list.add(verCentre);
            Collection collection=list;
            return (List<VerCentre>)collection;
        }
        return null;
   }


    /**
     * 后台首页查询 根据id查询(搜索框)
     * @param oneCategoryId
     * @param map
     * @param session
     * @param currentPage
     * @return
     */
    @RequestMapping("/queryOphone")
    public String queryOCproduct(String oneCategoryId,ModelMap map,HttpSession session,String currentPage){
        if(currentPage == null){
            currentPage="1";
        }
        session.setAttribute("oneCategoryId",oneCategoryId);
        PageInfo<VoProduct> page=productInfoService.queryByOCIdProduct(Integer.valueOf(oneCategoryId),Integer.valueOf(currentPage),null,null);
        map.put("page",page);
        return "/manage/product_list";
    }


   public String query(){
        return null;
   }
}
