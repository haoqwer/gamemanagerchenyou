package com.chenyou.service;

import com.chenyou.base.BizException;
import com.chenyou.pojo.Menu;
import com.chenyou.pojo.Role;
import com.chenyou.pojo.User;
import com.chenyou.pojo.entity.PageResult;
import com.chenyou.service.realm.LoginRealm;
import com.chenyou.utils.StringUtils;
import org.apache.http.impl.cookie.PublicSuffixListParser;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.lang.management.MemoryUsage;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/applicationContext-dao.xml", "classpath:spring/applicationContext-serivce.xml", "classpath:spring/applicationContext-shiro.xml"})
public class ServiceTest {

    @Resource
    private MenuService menuService;

    @Resource
    private UserService userService;

    @Resource
    private RoleService roleService;

    @Resource
    private LoginRealm loginRealm;

    @Test
    public void findUserByloginName() {
        User user = userService.userLogin("admin");
        System.out.println(user);

    }

    /**
     * 测试添加用户
     */
    @Test
    public void test_insertUser() {
        List <Integer> roleIds = new ArrayList <>();
        roleIds.add(Integer.valueOf(1));
        roleIds.add(Integer.valueOf(2));
        User user = new User();
//        user.setUserId(null);
        user.setUserName("郝");
        user.setLoginName("li");
        user.setPassword("hao");
        user.setPhonenumber("16675331736");
        user.setRemark("用户");
        user.setRoleIds(roleIds);
        userService.saveUser(user);
    }

    /**
     * 判断登录名是否唯一
     * 返回值1重复,0代表不重复
     */
    @Test
    public void test_loginNameunique() {
        String flag = userService.checkLoginNameUnique("admin");
        System.out.println(flag);
    }

    /**
     * 检验手机号是否唯一
     * 返回值1代表重复，0代表不重复
     */
    @Test
    public void test_checktelephoneUnique() {
        User user = new User();
        user.setPhonenumber("13098381432");
        String flag = userService.checkPhoneUnique(user);
        System.out.println(flag);
    }

    /**
     * 分页显示数据
     */
    @Test
    public void test_queryUserAll() {
        PageResult page = userService.findPage(1, 10);
        System.out.println(page.getTotal());
        System.out.println(page.getRows());
    }

    /**
     * 根据条件查询数据进行分页
     */
    @Test
    public void test_findPage() {
        User user = new User();
        user.setUserName("admin");
        PageResult page = userService.findPage(user, 1, 10);
        System.out.println(page.getTotal());
        System.out.println(page.getRows());
    }

    /**
     * 删除用户
     */
    @Test
    public void test_deleteUser() {
        Integer[] integers = new Integer[2];
        integers[0] = Integer.valueOf(43);
        userService.removeUserByUserId(integers);
    }

    /**
     * 修改用户
     */
    @Test
    public void test_updateUser() {
        List <Integer> integers = new ArrayList <>();
        integers.add(Integer.valueOf(1));
        User user = new User();
        user.setUserId(45);
        user.setUserName("郝文杰");
        user.setLoginName("hao");
        user.setRoleIds(integers);
        userService.updateUser(user);

    }

    /**
     * 用户进来显示的权限
     */
    @Test
    public void test_listMenusByUserId() {
        List <Menu> menus = menuService.listMenusByUserId(1);
        for (Menu menu : menus) {
            System.out.println(menu);
        }
    }

    /**
     * 增加一个角色
     * 同时增加与角色管理的菜单
     */
    @Test
    public void test_saveRole() {
        List <Integer> menuIds = new ArrayList <>();
        menuIds.add(Integer.valueOf(1));
        menuIds.add(Integer.valueOf(2));
        menuIds.add(Integer.valueOf(3));
        menuIds.add(Integer.valueOf(4));
        Role role = new Role();
        role.setRoleName("老板");
        role.setRoleKey("leader");
        role.setRemark("这是老板的角色");
        role.setMenuIds(menuIds);
        role.setRoleSort(1);
        roleService.saveRole(role);
    }

    /**
     * 根据条件查询对应的角色
     */
    @Test
    public void test_searchRole() {
        Role role = new Role();
        role.setRoleName("老");
        PageResult page = roleService.findPage(role, 1, 10);
        System.out.println(page.getTotal());
        System.out.println(page.getRows().size());
    }

    /**
     * 检验角色名称是否唯一
     */
    @Test
    public void test_checkroleNameUnique() {
        Role role = new Role();
        role.setRoleName("管理员");
        String s = roleService.checkRoleNameUnique(role);
        System.out.println(s);
    }

    /**
     * 通过角色id找到角色
     */
    @Test
    public void test_getRoleByRoleId() {
        Role role = roleService.getRoleByRoleId(2);
        System.out.println("role:" + role);
    }

    /**
     * 删除角色
     */
    @Test
    public void test_removeRole() throws BizException {
        Integer[] roleIds = {8, 9};
        roleService.removeRoleByRoleIds(roleIds);
    }

    /**
     * 修改角色
     */
    @Test
    public void test_updateRole() {
        List <Integer> menuIds = new ArrayList <>();
        menuIds.add(1);
        Role role = new Role();
        role.setRoleId(13);
        role.setRoleName("老板");
        role.setMenuIds(menuIds);
        role.setRoleKey("hao");
        roleService.updateRole(role);
    }


    /**
     * 查询所有的菜单
     */
    @Test
    public void test_listMenu() {
        List <Menu> menus = menuService.listMenu();
        for (Menu menu : menus) {
            System.out.println(menu);
        }
    }


    /**
     * 增加菜单
     */
    @Test
    public void test_saveMenu() {
        Menu menu = new Menu();
        menu.setParentId(0);
        menu.setMenuName("后台管理");
        menu.setMenuType("M");
        menu.setPerms("ceshi");
        menuService.saveMenu(menu);
    }

    /**
     * 检验菜单名是否唯一
     */
    @Test
    public void test_checkMenuNameUnique() {
        Menu menu = new Menu();
        menu.setMenuName("后台管理");
        String flag = menuService.checkMenuNameUnique(menu);
        System.out.println(flag);
    }


    /**
     * 查询该菜单类型下面有几个子菜单
     */
    @Test
    public void test_selectCountMenuByParentId() {
        int i = menuService.countChildMenuByParentId(0);
        System.out.println("count" + i);

    }

    /**
     * 查询角色下拥有菜单的个数
     */
    @Test
    public void test_countRoleByRoleMenuId() {
        int i = menuService.countRoleByRoleMenuId(1);
        System.out.println("count" + i);
    }

    /**
     * 删除菜单
     */
    @Test
    public void test_removeMenuByMenuId() {
        int i = menuService.removeMenu(11);
        System.out.println("i" + i);
    }

    /**
     * 根据mmenuId查询到menu
     */
    @Test
    public void test_getMenuByMenuId() {
        Menu menu = menuService.getMenuByMenuId(10);
        System.out.println(menu);

    }

    @Test
    public void test_updateMenu() {
        Menu menu = new Menu();
        menu.setMenuName("测试修改管理");
        menu.setMenuId(10);
        menu.setParentId(0);
        menu.setOrderNum(1);
        menu.setUrl("#");
        menu.setMenuType("C");
        menu.setPerms("admin10");
        menu.setIcon("dffd");
        menu.setCreateBy("fdsafs");
        int i = menuService.updateMenu(menu);
    }


    /**
     * 根绝传入的用户id查询所有的角色权限
     */
    @Test
    public void listRolePermission(){
        User user=new User();
        user.setUserId(1);
        Set <String> roleKeys = roleService.getRoleKeys(user.getUserId());
        for(String roleKey:roleKeys){
            System.out.println(roleKey);
        }
    }

    /**
     * 根据传入用户userid查询所有的菜单权限关键字
     */
    @Test
    public void listMenuPermission(){
        User user=new User();
        user.setUserId(1);
        Set <String> strings = menuService.selectListMenuByUserId(user.getUserId());
        for(String s:strings){
            System.out.println(s);
        }
    }


}
