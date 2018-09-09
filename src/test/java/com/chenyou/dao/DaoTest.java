package com.chenyou.dao;

import com.chenyou.mapper.MenuMapper;
import com.chenyou.mapper.RoleMapper;
import com.chenyou.mapper.RoleMenuMapper;
import com.chenyou.mapper.UserMapper;
import com.chenyou.pojo.Menu;
import com.chenyou.pojo.Role;
import com.chenyou.pojo.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/applicationContext-dao.xml")
public class DaoTest {

    @Resource
    private UserMapper userMapper;

    @Resource
    private RoleMapper roleMapper;


    @Resource
    private RoleMenuMapper roleMenuMapper;


    @Resource
    private MenuMapper menuMapper;

    @Test
    public void test_userinsert() {
        List <Integer> roleIds = new ArrayList <>();
        roleIds.add(Integer.valueOf(1));
        roleIds.add(Integer.valueOf(2));
        User user = new User();
//        user.setUserId(5);
        user.setUserName("郝");
        user.setLoginName("li");
        user.setPassword("hao");
        user.setPhonenumber("16675331736");
        user.setRemark("用户");
        user.setRoleIds(roleIds);
        userMapper.insert(user);
    }

    @Test
    public void test_queryUserlist() {
        List <User> users = userMapper.selectByExample(null);
        System.out.println(users.size());
    }

    @Test
    public void test_userDelete() {
        Integer[] integers = new Integer[2];
        integers[0] = Integer.valueOf(27);
        integers[1] = Integer.valueOf(26);
        int count = userMapper.deleteByPrimaryKey(27);
        System.out.println(count);
    }

    /**
     * 检验角色名称是否唯一
     */
    @Test
    public void test_checkroleNameUnique(){
    }

    /**
     * 删除角色跟菜单的关联表
     */

    @Test
    public void test_removeRoleMenuByRoleId(){
        roleMenuMapper.deleteRoleMenuByRoleId(7);
    }

    @Test
    public void test_cengji(){
        List<Menu> menus = menuMapper.listMenu();
        for(Menu menu:menus){
            System.out.println(menu);
        }
        //1-10根据1查询下面的所有
//        System.out.println("打印出一级菜单");
        //将一级的进行遍历

    }


}
