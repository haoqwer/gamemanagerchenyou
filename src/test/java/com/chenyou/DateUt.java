package com.chenyou;

import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUt {

    public static void main(String[] args) throws ParseException {
       //将年月日时分秒的时间转换为年月日时间格式
        String now = formate(new Date());
        System.out.println(now);
    }

    public  static  String formate(Date date){
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
        String format = sdf.format(date);
        return format;
    }


    public  static  Date parse(String date) throws ParseException {
        SimpleDateFormat  sdf=new SimpleDateFormat("yyyy-MM-dd");
        Date time = sdf.parse(date);
        return  time;
    }


}
