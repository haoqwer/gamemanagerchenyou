package com.chenyou;

import org.apache.commons.lang3.ArrayUtils;
import org.junit.Test;

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

    @Test
    public  void test3(){
        String content="http://gamejy.chyoukj.com:8080/?mod=mail&act=sendMail&title=关服公告&msg=由于各种原因，我们不得不做出一个万分艰难的决定：《千年盛世》将于1月25日正式停止运营。同时关闭所有服务器，无法登陆游戏，对此我们感到万分抱歉。游戏将于2019年1月21日停止充值，1月25日?正式关闭服务器，届时将无法使用虚拟货币，对于服务器关闭后未消耗掉的虚拟货币，不予退换和补偿，还请各位玩家谅解！最后再次感谢所有玩家对《千年盛世》的爱护与帮助，对于由此给您造成的不便，我们表示诚挚的歉意，敬请谅解。\n" + "&fromuid=0&attach=1001,20&type=1&uids=3628314&arrstate=0&server=3";
        String s = content.substring(165);
        System.out.println(s);
    }



}
