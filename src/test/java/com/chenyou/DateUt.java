package com.chenyou;

import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;

import java.sql.SQLOutput;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUt {

    public static void main(String[] args) throws ParseException {
        String hao=null;
        if(hao==null){
            System.out.println("is null");
        }
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
