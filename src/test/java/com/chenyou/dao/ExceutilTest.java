package com.chenyou.dao;

import com.chenyou.mapper.LtvCountMapper;
import com.chenyou.mapper.UserMapper;
import com.chenyou.pojo.LtvCount;
import com.chenyou.pojo.User;
import com.chenyou.service.LtvCountService;
import com.chenyou.utils.DateUtil;
import com.chenyou.utils.ExcelUtil;
import org.apache.poi.ss.usermodel.Workbook;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/applicationContext-dao.xml")
public class ExceutilTest {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private LtvCountMapper ltvCountMapper;

    @Test
    public void test_createExcel() throws IOException {
        List <Map <String, Object>> list = new ArrayList <>();
        Map <String, Object> map1 = new HashMap <>();
        map1.put("sheetName", "千年盛世用户管理");
        list.add(map1);
        List <User> users = userMapper.selectByExample(null);
        for (User user : users) {
            Map <String, Object> map = new HashMap <>();
            map.put("loginName", user.getLoginName());
            map.put("userName", user.getUserName());
            map.put("phonenumber", user.getPhonenumber());
            map.put("beizhu", user.getRemark());
            list.add(map);
        }

        String[] keys = {"loginName", "userName", "phonenumber", "beizhu"};
        String[] columnNames = {"用户名", "用户真实姓名", "电话", "备注"};
        Workbook wb = ExcelUtil.createWorkBook(list, keys, columnNames);
        FileOutputStream fos = new FileOutputStream("555.xls");
        wb.write(fos);
        fos.close();
    }

    /**
     * LTV概况导出
     */

    @Test
    public void test_createLtvCountExcel() throws IOException {
        List <Map <String, Object>> list = new ArrayList <>();
        Map <String, Object> map1 = new HashMap <>();
        map1.put("sheetName", "千年盛世ltv概况");
        list.add(map1);
        List <LtvCount> listLtv = ltvCountMapper.selectByExample(null);
        for (LtvCount ltv : listLtv) {
            Map <String, Object> map = new HashMap <>();
            map.put("recordeTime",DateUtil.format(ltv.getRecordeTime()));
            map.put("onedayLtv", ltv.getOnedayLtv());
            map.put("twodayLtv", ltv.getTwodayLtv());
            map.put("threedayLtv", ltv.getThreedayLtv());
            map.put("fourdayLtv", ltv.getFourdayLtv());
            map.put("fivedayLtv", ltv.getFivedayLtv());
            map.put("sixdayLtv", ltv.getSixdayLtv());
            map.put("sevendayLtv", ltv.getSevendayLtv());
            map.put("fifteendayLtv", ltv.getFifteendayLtv());
            map.put("thirtydayLtv", ltv.getThirtydayLtv());
            list.add(map);
        }
        String[] keys = {"recordeTime", "onedayLtv", "twodayLtv", "threedayLtv", "fourdayLtv", "fivedayLtv", "sixdayLtv", "sevendayLtv", "fifteendayLtv", "thirtydayLtv"};
        String[] columnNames = {"时间", "1日LTV", "2日LTV", "3日LTV", "4日LTV", "5日LTV", "6日LTV", "7日LTV", "15日LTV", "30日LTV"};
        Workbook wb = ExcelUtil.createWorkBook(list, keys, columnNames);
        FileOutputStream fos = new FileOutputStream("ltv概况.xls");
        wb.write(fos);
        fos.close();
    }
}
