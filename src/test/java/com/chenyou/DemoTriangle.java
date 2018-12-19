package com.chenyou;

import java.util.ArrayList;
import java.util.List;

/**
 * @ProjectName: chenyoumanager
 * @Package: com.chenyou
 * @ClassName: DemoTriangle
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-13 20:13
 * @Version: 1.0
 **/
public class DemoTriangle {
    public static void main(String[] args) {
    triangle(5);
    }

    /*
     *
     * 杨辉三角
     * @author hlx
     * @date 2018\12\13 0013 20:14
     * @param
     * @return
     */
    public static List <List <Integer>> triangle(int num) {
        //创建一个双层的List集合
        List<List<Integer>> triangleList=new ArrayList <>();
        if(num==0){
            return  triangleList;
        }
        triangleList.add(new ArrayList <Integer>());
        triangleList.get(0).add(1);
        //开始循环
        for(int rowNum=1;rowNum<num;rowNum++){
            List <Integer> pre = triangleList.get(rowNum - 1);
            List<Integer> now=new ArrayList <>();
            now.add(1);
            for(int j=1;j<rowNum;j++){
                now.add(pre.get(j-1)+pre.get(j));
            }
            now.add(1);
            triangleList.add(now);
        }
        System.out.println(triangleList);
        return  triangleList;
    }

}
