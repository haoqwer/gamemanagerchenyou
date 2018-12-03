package com.chenyou;

import org.apache.commons.lang3.ArrayUtils;

import java.util.*;

public class StringUtilsDemo {
    public static void main(String[] args) {
//        String[] oldArr = {"node_360_1","node_360_2","node_360_5","node_360_6"};
//        String[] newArr =  {};
////        Map<String, String[]> res = CompareStringArray(oldArr, newArr);
////        System.out.println("deleteArr: "+ Arrays.toString(res.get("deleteArr")));
////        System.out.println("addArr: "+ Arrays.toString(res.get("addArr")));
//        for (String aNewArr : newArr) {
//            if (!ArrayUtils.contains(oldArr, aNewArr)) {
//                System.out.println(aNewArr);
//            }
//        }
    }
    /**
     * @param oldArr 旧数组
     * @param newArr 新数组
     * @return Map 包含两个数组，相较于旧数组，新数组多了哪些元素，以及少了哪些元素
     */
    public static Map<String, String[]> CompareStringArray(String[] oldArr, String[] newArr){
        List<String> addList = new ArrayList<>();
        List<String> deleteList = new ArrayList<>();

        for (String anOldArr : oldArr) {
            //将新数组跟老数组比较,把
            if (!ArrayUtils.contains(newArr, anOldArr)) {
                System.out.println(anOldArr);
                deleteList.add(anOldArr);
            }
        }

        for (String aNewArr : newArr) {
            if (!ArrayUtils.contains(oldArr, aNewArr)) {
                System.out.println(aNewArr);
                addList.add(aNewArr);
            }
        }
        String[] addArr = addList.toArray(new String[addList.size()]);
        String[] deleteArr = deleteList.toArray(new String[deleteList.size()]);
        Map<String, String[]> res = new HashMap<>();
        res.put("addArr", addArr);
        res.put("deleteArr", deleteArr);
        return res;
    }
}
