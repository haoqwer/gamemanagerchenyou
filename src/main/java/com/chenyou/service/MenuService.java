package com.chenyou.service;

import com.chenyou.pojo.Menu;
import com.chenyou.pojo.Role;
import com.mysql.jdbc.MysqlErrorNumbers;

import java.util.List;
import java.util.Map;

public interface MenuService {


    /**
     * 查询菜单用户名是否重复
     *
     * @param menu
     * @return
     */
    public String checkMenuNameUnique(Menu menu);

    /**
     * 根据menuId查询该菜单下的子菜单的数量
     * @param parentId
     * @return
     */
    public int selectCountMenuByParentId(Integer parentId);


    /**
     * 查看菜单拥有数量
     * @param menuId
     * @return
     */
    public int selectCountRoleMenuByMenuId(Integer menuId);

    public  int delete(Integer menuId);

    /**
     * 获取到上级菜单名称
     * 如果id为0则为主目录
     */
    public  Menu findMenuByMenuId(Integer parentId);



    /**
     * 查询出所有的菜单
     * @return
     */
    public List<Menu> findAllMenu();

    /**
     * 增加menu
     * @param menu
     * @return
     */
    public int addMenu(Menu menu);

    /**
     * 修改menu
     * @param menu
     * @return
     */
    public int updateMenu(Menu menu);


    /**
     * 加载角色的菜单列表树
     * @param role 角色对象
     * @return 菜单列表
     */
    public List<Map<String, Object>> roleMenuTreeData(Role role);

    /**
     * 查询所有的菜单
     * @return
     */
    public List<Map<String,Object>> menuTreeData();


    /**
     * 根据menuId查询对应的Menu
     */
    public Menu findMenu(Integer menuId);

    /**
     * 根据userId查询对应的权限菜单集合
     * @param userId
     * @return
     */
    public List<Menu> selectListMenuByUserId(Integer userId);


}
