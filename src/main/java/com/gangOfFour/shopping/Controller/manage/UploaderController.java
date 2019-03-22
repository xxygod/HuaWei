package com.gangOfFour.shopping.Controller.manage;

import com.alibaba.fastjson.JSONObject;
import com.gangOfFour.shopping.MyException.NullVaullException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/manage")
public class UploaderController {
    @RequestMapping("/uploaderFile")
    @ResponseBody
    public synchronized String  uploaderFile(@RequestParam("file")MultipartFile sortPicImg, HttpServletRequest request, HttpServletResponse response, HttpSession session)throws Exception{
        List<String> list=null;
        Object list1=session.getAttribute("list");
        if(list1!=null){
            list=(List<String>)list1;
        }else{
            list=new ArrayList<>();
        }
        ServletContext application=request.getServletContext();
        String path = application.getInitParameter("dir");//获取web.xml文件的dir的值
        String fileName = sortPicImg.getOriginalFilename();
        String name=fileName.substring(fileName.indexOf("."),fileName.length());
        String  newFileName = String.valueOf(((int)(Math.random()*8999)+1000))+System.currentTimeMillis()+name;
        File targetFile = new File(path, newFileName);
        if (!targetFile.exists()) {
            targetFile.mkdirs();
        }
        try {
            Thread.sleep(100);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        JSONObject json = new JSONObject();
        //保存
        try {
            sortPicImg.transferTo(targetFile);
        } catch (Exception e) {
            e.printStackTrace();
            json.put("msg","error");
            session.removeAttribute("list");
            return json.toJSONString();
        }
        list.add(newFileName);
        session.setAttribute("list",list);
        json.put("msg","success");
        return  json.toJSONString();
    }
}
