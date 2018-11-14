package com.chenyou.dao;

import com.chenyou.mapper.ActivePlayerMapper;
import com.chenyou.mapper.ChannelCountMapper;
import com.chenyou.mapper.IncomeClassMapper;
import com.chenyou.mapper.RetainPlayerMapper;
import com.chenyou.pojo.ActivePlayer;
import com.chenyou.pojo.ChannelCount;
import com.chenyou.pojo.IncomeClass;
import com.chenyou.pojo.RetainPlayer;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import sun.text.resources.fr.FormatData_fr;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/applicationContext-dao.xml")
public class MapperTest2 {

    @Autowired
    private IncomeClassMapper incomeClassMapper;

    @Autowired
    private ChannelCountMapper channelCountMapper;


    @Autowired
    private ActivePlayerMapper activePlayerMapper;

    @Autowired
    private RetainPlayerMapper retainPlayerMapper;


    @Test
    public  void test_IncomeClassAll(){
        List <IncomeClass> list = incomeClassMapper.queryIncomClassAll();
        for(IncomeClass incomeClass:list){
            System.out.println(incomeClass);
        }
    }

    @Test
    public  void test_IncomeClassByTimeTwo(){
        List <IncomeClass> list = incomeClassMapper.queryIncomClassByTimeTwo("2018-09-11", "2018-11-20");
        for(IncomeClass incomeClass:list){
            System.out.println(list);
        }
    }


    @Test
    public  void test_IncomeClassByTime(){
        List <IncomeClass> list = incomeClassMapper.queryIncomClassByTime("2018-09-11");
        System.out.println(list);
    }


    @Test
    public  void test_ChannelCountAll(){
        List <ChannelCount> list = channelCountMapper.queryChannelCountAll();
        for(ChannelCount channelCount:list){
            System.out.println(channelCount);
        }
    }

    @Test
    public  void test_ChannelCountByTimeTo(){
        List <ChannelCount> list = channelCountMapper.queryChannelCountByTimeTo("2018-09-11", "2018-10-29");
        for(ChannelCount channelCount:list){
            System.out.println(channelCount);
        }
    }

    @Test
    public  void test_ChannelCountByTime(){
        List <ChannelCount> list = channelCountMapper.queryChannelCountByTime("2018-09-11");
        for(ChannelCount channelCount:list){
            System.out.println(channelCount);
        }
    }

    @Test
    public  void test_ActivePlayerAll(){
        List <ActivePlayer> list = activePlayerMapper.queryActivePlayerAll();
        for(ActivePlayer activePlayer:list){
            System.out.println(activePlayer);
        }
    }

    @Test
    public void test_ActivePlayerByTimeTwo() {
        List <ActivePlayer> list = activePlayerMapper.queryActivePlayerByTimeTo("2018-10-05", "2018-10-08");
        for (ActivePlayer activePlayer : list) {
            System.out.println(activePlayer);
        }
    }

    @Test
    public  void test_ActivePlayerByTime(){
        List <ActivePlayer> list = activePlayerMapper.queryActivePlayerByTime("2018-10-05");
        for (ActivePlayer activePlayer : list) {
            System.out.println(activePlayer);
        }
    }

    @Test
    public  void test_retainPlayerAll(){
        List <RetainPlayer> list = retainPlayerMapper.queryRetainPlayerAll();
        for (RetainPlayer retainPlayer:list){
            System.out.println(retainPlayer);
        }
    }

    @Test
    public  void test_retainPlayerByTime(){
        List <RetainPlayer> list = retainPlayerMapper.queryRetainPlayerByTimeTo("2018-09-12","2018-09-13");
        for (RetainPlayer retainPlayer:list){
            System.out.println(retainPlayer);
            System.out.println("-----");
        }

    }

    @Test
    public  void test_retainPlayerByTimes(){
        List <RetainPlayer> list = retainPlayerMapper.queryRetainPlayerByTime("2018-09-13");
        for (RetainPlayer retainPlayer:list){
            System.out.println(retainPlayer);
            System.out.println("-----");
        }
        System.out.println("-------");
    }

}
