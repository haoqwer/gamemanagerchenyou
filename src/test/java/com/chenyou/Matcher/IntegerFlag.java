package com.chenyou.Matcher;


import com.chenyou.base.BizException;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class IntegerFlag {
    public static void main(String[] args) {
        Pattern p = Pattern.compile("-?[0-9]+");
        Matcher m = p.matcher("ee");
        boolean mm = m.matches();
        System.out.println(mm);


    }
}
