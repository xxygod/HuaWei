package com.gangOfFour.shopping.service.impl;

import com.gangOfFour.shopping.dao.*;
import com.gangOfFour.shopping.pojo.*;
import com.gangOfFour.shopping.service.OrderMasterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Random;
@Service
public class OrderMasterServiceImpl implements OrderMasterService {
    @Autowired
    private OrderMasterDao orderMasterDao;
    @Autowired
    private OrderDetailDao orderDetailDao;
    @Autowired
    private UserAddressDao userAddressDao;
    @Autowired
    private ShoppingCartDao shoppingCartDao;
    @Autowired
    private UserInfoDao userInfoDao;
    @Override
    @Transactional
    public String addOrderMaster(List<ShoppingCart> list, UserLogin userLogin, int addressId) {
        UserAddress userAddress=userAddressDao.selectByIdUserAddress(addressId);
        OrderMaster orderMaster=new OrderMaster();
        orderMaster.setConsignee(userAddress.getConsignee());//收货人
        orderMaster.setProvince(userAddress.getProvince());//省
        orderMaster.setCity(userAddress.getCity());//市
        orderMaster.setDistrict(userAddress.getDistrict());//区县
        orderMaster.setAddress(userAddress.getAddress());//详细地址
        orderMaster.setPhone(userAddress.getPhone());//电话号码
        orderMaster.setCode(userAddress.getCode());//邮编
        orderMaster.setUserLogin(userLogin);
        BigDecimal price=new BigDecimal("0");
        for (ShoppingCart shoppingCart : list) {
            BigDecimal number = new BigDecimal(shoppingCart.getProductNumber());
            price=(shoppingCart.getProductPrice().multiply(number)).add(price);
        }
        orderMaster.setOrderMoney(price);

        BigDecimal districtMoney=new BigDecimal(userLogin.getUserInfo().getUserPoint());
        orderMaster.setDistrictMoney(districtMoney.divide(new BigDecimal(10)));
        if(price.compareTo(districtMoney) > 0) {
            orderMaster.setPaymentMoney(price.subtract(districtMoney));//总金额减去积分  所得支付金额；
        }else if(price.compareTo(districtMoney) == 0){
            orderMaster.setPaymentMoney(price.subtract(districtMoney));//总金额减去积分  所得支付金额；
        }else{
            orderMaster.setPaymentMoney(new BigDecimal("0"));//当商品总价小于积分时应付金额为0；
        }
        int point = (int)Math.ceil(Double.valueOf(((price.divide(new BigDecimal("10"))).toString())));//没10园金额是1积分
        orderMaster.setOrderPoint(point);
        //生成当前时间
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
        String date = df.format(new Date());
        orderMaster.setCreateTime(date);
        //生成订单号
        DateFormat dn = new SimpleDateFormat("yyyyMMddHHmm");
        Calendar calendar = Calendar.getInstance();
        String dateName = dn.format(calendar.getTime());
        Random ne=new Random();//实例化一个random的对象ne
        int x = ne.nextInt(999-100+1)+100;//为变量赋随机值100-999
        String random_order = String.valueOf(x);
        String order_id = dateName+random_order;
        orderMaster.setOrderNo(order_id);
        //先添加订单信息
        int con=orderMasterDao.insertOrderMaster(orderMaster);
        if(con>0) {
            OrderDetail detail = new OrderDetail();
            for (ShoppingCart shoppingCart : list) {
                BigDecimal number = new BigDecimal(shoppingCart.getProductNumber());
                detail.setOrderMaster(orderMaster);
                detail.setProductColor(shoppingCart.getProductColor());
                detail.setProductInfo(shoppingCart.getProductInfo());
                detail.setProVersions(shoppingCart.getProVersions());
                detail.setProductNumber(shoppingCart.getProductNumber());
                detail.setSubtotal(shoppingCart.getProductPrice().multiply(number));
                detail.setUnitPrice(shoppingCart.getProductPrice());
                int con1 =orderDetailDao.insertOrderDetail(detail);
                shoppingCartDao.deleteByIdCart(shoppingCart.getShoppingCartId());
                if(!(con1 >0)){
                    return null;
                }
            }
        }
        return  order_id;
    }

    @Override
    public int modifyPayStatus(String orderNo,UserLogin userLogin) {
        orderMasterDao.updatePayStatus(orderNo);
        OrderMaster orderMaster=orderMasterDao.selectByOrderNoOrderMaster(orderNo);
        BigDecimal districtMoney=orderMaster.getDistrictMoney();
        //int jifen=(int)Math.ceil(Double.valueOf(districtMoney.toString()));
        //int con=userInfoDao.updateByLoginIdUserInfo(userLogin.getLoginId(),jifen*10);
        int jifen= (int)Math.ceil(Double.valueOf(districtMoney.multiply(new BigDecimal(10)).toString()));
        userInfoDao.updateByLoginIdUserInfo(userLogin.getLoginId(),jifen,"minus");
        userInfoDao.updateByLoginIdUserInfo(userLogin.getLoginId(), orderMaster.getOrderPoint(),"add");
        return 1;
    }
    @Override
    public int queryUnpaidNumber(int loginId) {
        return orderMasterDao.selectUnpaidNumber(loginId);
    }

    @Override
    public int selectReceivingNumber(int loginId) {
        return orderMasterDao.selectReceivingNumber(loginId);
    }

    @Override
    public int selectStocksNumber(int loginId) {
        return orderMasterDao.selectStocksNumber(loginId);
    }

    @Override
    public List<OrderMaster> queryUnpaidDetail(int loginId,String status) {
        return orderMasterDao.selectUnpaidDetail(loginId,status);
    }
}
