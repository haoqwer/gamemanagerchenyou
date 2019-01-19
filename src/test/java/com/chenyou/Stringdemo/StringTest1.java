package com.chenyou.Stringdemo;

import com.chenyou.utils.DateUtil;
import org.junit.Test;

import javax.sound.midi.Soundbank;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @Description:
 * @Author: hlx
 * @CreateDate: 2019-01-05 18:37
 * @Version: 1.0
 **/
public class StringTest1 {
    //replace方法
    @Test
    public  void test_01(){
        //replace替换
        String s="hao";
        String repl = s.replace('h', 'w');
        System.out.println(repl);
//        replaceAll(" +", "")
        String y=" hao3 ";
        String s1 = y.replaceAll(" +", "");
        System.out.println(s1);
        System.out.println("xindongfang".subSequence(1,2));
    }
    @Test
    public  void test_02(){
        //charAt,单独返回一个char，返回的char根据输入的索引返回
        char c = "charAt".charAt(5);
        System.out.println(c);
    }

    @Test
    public  void test_03(){
        //concat拼接
        String concat = "hao".concat("123");
        System.out.println("concat:"+concat);
        System.out.println("concat的作用是拼接的作用");
    }

    @Test
    public void  test_04(){
        //contains，看字符串中是否包含char，如果包含则返回true
        boolean hao = "hao123".contains("hao");
        System.out.println("是否包含相同的字符串"+hao);
    }
    @Test
    public  void test_05(){
        //startWith、endWith,看是否以什么开头，以什么结尾
        boolean b1 = "hao".startsWith("h");
        System.out.println(b1);
        boolean b2 = "hao".endsWith("o");
        System.out.println(b2);
    }

    @Test
    public  void test_06(){
        //返回指定的字符串索引的位置
        String s="java";
        System.out.println(s.indexOf("j"));
    }
    @Test
    public void test_07(){
        //substring的结束索引不包含最后一个
      String content="限时||粮|255*255*255||食冲榜开启，活动期间，粮食消耗排名前200的玩家可获得丰厚奖励！#活动时间：||2018年11月29日--2018年12月03日|222*212*60||";
//        int i = content.indexOf("年");
//        System.out.println(i);
//        System.out.println(content.substring(i-4,i+20));
//        String c="2018年11月29日--2018年12月03日";
//        System.out.println(c.length());
//        System.out.println(c.indexOf("年"));
        String ymd = getYmd(content);
        System.out.println(ymd);
//        1543420860
//        1543852740
    }


    public static String getYmd(String content){
        int i = content.indexOf("年");
        System.out.println(i);
        String ymd = content.substring(i - 4, i + 20);
        return ymd;
    }

    @Test
    public void  test_09(){
       Date date=new Date();
        long result = date.getTime();
        System.out.println(result);
    }

    @Test
    public  void test_10(){
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date=new Date(1546912260993L);
        String f = sdf.format(date);
        System.out.println(f);
    }


    @Test
    public  void test_11(){
//        限时||联|255*255*255||盟经验冲榜开启，活动期间，联盟经验涨幅排名前20的联盟盟主及成员可获得丰厚奖励！#活动时间：||2018年12月07日--2018年12月14日|222*212*60||
        String content="限时||联|255*255*255||盟势力冲榜开启，活动期间，联盟势力涨幅排名前20的联盟盟主及成员可获得丰厚奖励！#活动时间：||2018年12月08日--2018年12月14日|222*212*60||";
        //获取到冒号前的元素
        int i = content.indexOf("：");
        String s1=content.substring(0,i+1);

        String s2="||2018年12月08日--2018年12月15日|222*212*60||";
        System.out.println(content);
        System.out.println(s1);
        System.out.println(s2);
        System.out.println(s1+s2);

    }
    @Test
    public void  test_12(){
        String content = content("活动||期|255*255*255||间，使用活动道具进行祈福，可获取丰厚奖励和活动积分。活动积分可以换取稀有道具。活动结束时依据个人排名及联盟排名发放排行奖励！#活动时间：||2019年1月6日--2019年1月12日|222*212*60||");
        System.out.println("活动||期|255*255*255||间，使用活动道具进行祈福，可获取丰厚奖励和活动积分。活动积分可以换取稀有道具。活动结束时依据个人排名及联盟排名发放排行奖励！#活动时间：||2019年1月6日--2019年1月12日|222*212*60||");
        System.out.println(content);
    }
    public static String  content(String content){
        int  i = content.indexOf("：");
        String s1=content.substring(0,i+1);
        String s2="||"+DateUtil.format3(new Date())+"--"+DateUtil.format3(new Date())+"|222*212*60||";
        return  s1+s2;
    }


}








