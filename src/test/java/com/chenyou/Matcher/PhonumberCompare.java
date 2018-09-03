package com.chenyou.Matcher;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class PhonumberCompare {
    public static void main(String[] args) {
        boolean b = isMobile("138");
        System.out.println("B"+b);
    }

    public static boolean isMobile(String mobile) {
        String regex = "^((13[0-9])|(14[5,7])|(15[0-3,5-9])|(17[0,3,5-8])|(18[0-9])|166|198|199|(147))\\d{8}$";
        Pattern p = Pattern.compile(regex, Pattern.CASE_INSENSITIVE);
        Matcher m = p.matcher(mobile);
        return m.matches();
    }
}
