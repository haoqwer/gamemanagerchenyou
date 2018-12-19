package com.chenyou;

import com.sun.scenario.effect.impl.sw.sse.SSEBlend_SRC_OUTPeer;
import org.apache.ibatis.annotations.Case;
import org.apache.xmlbeans.impl.regex.REUtil;
import org.omg.CORBA.PUBLIC_MEMBER;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

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
     //出现逗号
        String uids="";
        String temp="";
        String old="1201,1101,1003";
        String[] oldUserIds=old.split(",");
        for(int i=0;i<=oldUserIds.length-1;i++){
            if(i==oldUserIds.length-1){
                System.out.println(oldUserIds[i]);
                uids=uids+oldUserIds[i];
            }else {
                uids=uids+oldUserIds[i]+",";
            }
        }
        System.out.println(uids);
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

    public  static  void bufferSort(int[] arr){
        //双层for循环,外层控制循环的次数，内层控制每次循环比较的次数
        for(int i=0;i<arr.length-1;i++){
            for(int j=0;j<arr.length-1-i;j++){
                if(arr[j]>arr[j+1]){
                   int temp=arr[j+1];
                   arr[j+1]=arr[j];
                   arr[j]=temp;
                }
            }
        }
        System.out.println(Arrays.toString(arr));
    }

}
