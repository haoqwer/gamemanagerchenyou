package com.chenyou.dao;

import com.chenyou.mapper.AddNewplayerMapper;
import com.chenyou.pojo.AddNewplayer;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/applicationContext-dao.xml")
public class MapperTest {

    @Autowired
    private AddNewplayerMapper newplayerMapper;

    @Test
    public void test_listAddNewPlayerMapper() {
        List <AddNewplayer> players = newplayerMapper.listAddNewPlayerByTimeAndId("2018-09-13", "2018-10-08", 1, "test_01");
        for (AddNewplayer player : players) {
            System.out.println(player);
        }
        System.out.println("新增人数总数:" + players.size());
    }

    @Test
    public void test_listAddNewPlayerByTime() {
        List <AddNewplayer> players = newplayerMapper.listAddNewPlayerByTime("2018-09-13", "2018-10-08", null, null);
        for (AddNewplayer player : players) {
            System.out.println(player);
        }
        System.out.println("新增人数总数:" + players.size());
    }
}
