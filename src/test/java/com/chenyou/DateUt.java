package com.chenyou;

import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUt {

    public static void main(String[] args) throws ParseException {
        Date start = null;
        Date end = null;
        Date temp = null;
        if (!StringUtils.isEmpty("2018-09-12")) {
            start = DateUtil.parse("2018-09-12");
        }
        if (!StringUtils.isEmpty("2018-09-11")) {
            end = DateUtil.parse("2018-09-11");
        }
        System.out.println("没有转换之前的日期start"+formate(start));
        System.out.println("没有转换之前的日期end"+formate(end));
        if (start.after(end)) {
            temp = end;
            end = start;
            start = temp;
            System.out.println("转换之后的start"+formate(start));
            System.out.println("转换之后的end"+formate(end));
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
