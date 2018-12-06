package com.chenyou;

import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import org.apache.ibatis.annotations.Case;
import org.apache.xmlbeans.impl.regex.REUtil;
import org.omg.CORBA.PUBLIC_MEMBER;

/**
 * @ProjectName: chenyoumanager
 * @Package: com.chenyou
 * @ClassName: LeetCodeTest
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-05 13:36
 * @Version: 1.0
 **/
public class LeetCodeTest {
    /*
    *
    * 回文数
    * @author hlx
    * @date 2018\12\5 0005 13:36
    * @param [args]
    * @return void
    */
    public static void main(String[] args) {
        //121表示是回文数,-121表示不是回文数，正着跟倒着结果一样
//        I             1
//        V             5
//        X             10
//        L             50
//        C             100
//        D             500
//        M             1000
        int i = 0;
        char ch = 0;
        String s = "D";
        char[] chars = s.toCharArray();
        int sum = 0;
        for (int x = 0; x <= chars.length - 1; x++) {
            int temp;
            i = count(chars[x]);
            if(chars.length!=1){
                if (x == 0) {
                    if (count(chars[0]) < count(chars[1])) {
                        temp = -count(chars[0]);
                        i = temp;
                    }
                }
            }
            sum += i;
        }
        System.out.println(sum);

    }

    public static int count(char ch) {
        int i = 0;
        if (ch == 'I') {
            i = 1;
        } else if (ch == 'V') {
            i = 5;
        } else if (ch == 'X') {
            i = 10;
        } else if (ch == 'L') {
            i = 50;
        } else if (ch == 'C') {
            i = 100;
        } else if (ch == 'D') {
            i = 500;
        } else if (ch == 'M') {
            i = 1000;
        } else {
            i = 0;
        }
        return i;
    }

}
