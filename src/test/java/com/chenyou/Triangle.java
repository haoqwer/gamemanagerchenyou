package com.chenyou;

import java.util.ArrayList;
import java.util.List;

/**
 * @ProjectName: chenyoumanager
 * @Package: com.chenyou
 * @ClassName: Triangle
 * @Description:
 * @Author: hlx
 * @CreateDate: 2018-12-13 19:45
 * @Version: 1.0
 **/
public class Triangle {
    public static void main(String[] args) {
        List <List <Integer>> list = generate(5);
        System.out.println(list);
    }
    /*
    *  杨辉三角
    * 规律:首尾都为1,左边数据和，右边数据和
    * @author hlx
    * @date 2018\12\13  20:11
    * @param [numRows]
    * @return java.util.List<java.util.List<java.lang.Integer>>
    */
    public static List <List <Integer>> generate(int numRows) {
        //1.定义一个双层集合triangle
        List <List <Integer>> triangle = new ArrayList <List <Integer>>();
        //2.如果输入的行数为0则进行返回一个空的双层List集合
        if (numRows == 0) {
            return triangle;
        }
        //3.外层插入一个List
        triangle.add(new ArrayList <Integer>());
        //4.内层的值为1
        triangle.get(0).add(1);
        //5.0表示为第一行
        //6.进行双层嵌套循环,外层表示循环多少次,从一开始就是小于,第一次表示的时0可以不用进行,外层循环为rowNum-1次
        for (int rowNum = 1; rowNum < numRows; rowNum++) {
            //7.创建row为每行的List数据
            List <Integer> row = new ArrayList <>();
            //8.获取到上一行的数据
            List <Integer> prevRow = triangle.get(rowNum - 1);
            //9.开始第一个数据为1
            row.add(1);
            //10为每行添加数据，3为1,4为2一次累加
            for (int j = 1; j < rowNum; j++) {
                row.add(prevRow.get(j - 1) + prevRow.get(j));
            }
            //11.最后一行的数据也为1
            row.add(1);
            triangle.add(row);
        }
        return triangle;
    }
}
