package com.chenyou;

import com.chenyou.utils.DateUtil;
import com.chenyou.utils.StringUtils;

import java.sql.SQLOutput;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class DateUt {

    public static void main(String[] args) throws ParseException {
        //将传入的字符串的年月日时分秒，转换成年月日，时分秒
        Map <String, Object> map = gettime("2018-00-00 00:00:00");
        System.out.println(map.get("ymd"));
        System.out.println(map.get("hms"));
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




}
