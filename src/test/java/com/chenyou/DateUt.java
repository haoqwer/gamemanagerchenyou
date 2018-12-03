package com.chenyou;


import com.chenyou.utils.DateUtil;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class DateUt {

    public static void main(String[] args) throws ParseException, UnsupportedEncodingException {
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
    
    public static Map<String,Object> gettime(String parse) throws ParseException {
        Map <String, Object> resultMap = new HashMap <>();
        String ymd = parse.substring(0, 10);
        String hms = parse.substring(11);
        resultMap.put("ymd", ymd);
        resultMap.put("hms", hms);
        return resultMap;
    }


    public  static boolean equalTime(String start,String end) throws ParseException {
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        boolean is = sdf.parse(start).after(sdf.parse(end));
        return  is;
    }

    public  static String  format(Date date){
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        return sdf.format(date);
    }





}
