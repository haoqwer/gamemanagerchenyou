package com.chenyou;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUt {

    public static void main(String[] args) throws ParseException {
        Date date = parse("2018-09-11");
        String formate = formate(date);
        System.out.println(formate);
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
