package com.chenyou.service.impl;

import com.chenyou.mapper.MenuMapper;
import com.chenyou.mapper.RoleMenuMapper;
import com.chenyou.pojo.Menu;
import com.chenyou.pojo.Role;
import com.chenyou.service.MenuService;
import com.chenyou.utils.ShiroUtils;
import com.chenyou.utils.StringUtils;
import com.sun.glass.ui.delegate.MenuItemDelegate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Transactional
public class MenuServiceImpl implements MenuService {

    private static final Logger logger = LoggerFactory.getLogger(MenuServiceImpl.class);

    @Autowired
    private MenuMapper menuMapper;

    @Autowired
    private RoleMenuMapper roleMenuMapper;


    /**
     * 根据用户输入的菜单名判断该菜单是否存在
     *
     * @param menu
     * @return
     */
    @Override
    public String checkMenuNameUnique(Menu menu) {
        Integer menuId = null == menu.getMenuId() ? -1 : menu.getMenuId();
        logger.info("menuId:" + menuId);
        Menu info = menuMapper.checkMenuNameUnique(menu.getMenuName());
        if (null != info && menuId != info.getMenuId()) {
            return "1";
        }
        return "0";
    }

    /**
     * 查找菜单下的子菜单个数
     *
     * @param parentId
     * @return
     */
    @Override
    public int selectCountMenuByParentId(Integer parentId) {
        logger.info("parentId:" + parentId);
        return menuMapper.selectCountMenuByParentId(parentId);
    }

    /**
     * 查找菜单下使用的角色个数
     *
     * @param menuId
     * @return
     */
    @Override
    public int selectCountRoleMenuByMenuId(Integer menuId) {
        logger.info("menuId:" + menuId);
        return roleMenuMapper.selectCountRoleMenuByMenuId(menuId);
    }

    /**
     * 删除
     *
     * @param menuId
     * @return
     */
    @Override
    public int delete(Integer menuId) {
        logger.info("menuId:" + menuId);
        return menuMapper.deleteByPrimaryKey(menuId);
    }

    /**
     * 根据menuId获取到menu
     *
     * @param
     * @return
     */
    @Override
    public Menu findMenuByMenuId(Integer menuId) {
        logger.info("menuId:" + menuId);
        return menuMapper.selectMenuById(menuId);
    }


    /**
     * 查询所有的菜单
     *
     * @return
     */
    @Override
    public List <Menu> findAllMenu() {
        return menuMapper.selectByExample(null);
    }

    @Override
    public int addMenu(Menu menu) {
        logger.info("menuId:" + menu.getMenuId());
        menu.setCreateBy(ShiroUtils.getLoginName());
        return menuMapper.insert(menu);
    }


    @Override
    public int updateMenu(Menu menu) {
        logger.info("menuId:" + menu.getMenuId());
        return menuMapper.updateByPrimaryKey(menu);
    }

    /**
     * 加载角色的菜单列表树
     *
     * @param role 角色对象
     * @return
     */
    @Override
    public List <Map <String, Object>> roleMenuTreeData(Role role) {
        logger.info("roleId:" + role.getRoleId());
        //获取到角色id
        Integer roleId = role.getRoleId();
        List <Map <String, Object>> trees = new ArrayList <>();
        //获取到所有的菜单对象
        List <Menu> menus = menuMapper.selectMenuAll();
        if (StringUtils.isNotNull(roleId)) {
            //角色id存在
            List <String> roleMenuList = menuMapper.selectMenuTree(roleId);
            trees = getTrees(menus, true, roleMenuList, true);
        } else {
            //角色id不存在
            trees = getTrees(menus, false, null, true);
        }
        return trees;
    }

    /**
     * @param menuList     菜单集合
     * @param isCheck      是否需要选中
     * @param roleMenuList 角色已经存在的菜单列表
     * @param permsFlag    是否显示权限的标识
     * @return
     */
    public List <Map <String, Object>> getTrees(List <Menu> menuList, boolean isCheck, List <String> roleMenuList, boolean permsFlag) {
        List <Map <String, Object>> trees = new ArrayList <>();
        for (Menu menu : menuList) {
            Map <String, Object> deptMap = new HashMap <>();
            deptMap.put("id", menu.getMenuId());
            deptMap.put("pId", menu.getParentId());
            deptMap.put("name", transMenuName(menu, roleMenuList, permsFlag));
            if (isCheck) {
                deptMap.put("chcked", roleMenuList.contains(menu.getMenuId() + menu.getPerms()));
            } else {
                deptMap.put("chcked", false);
            }
            trees.add(deptMap);
        }
        return trees;
    }

    /**
     * 菜单名字
     *
     * @param menu
     * @param roleMenuList
     * @param permsFlag
     * @return
     */
    private Object transMenuName(Menu menu, List <String> roleMenuList, boolean permsFlag) {
        //buffer流
        StringBuffer sb = new StringBuffer();
        sb.append(menu.getMenuName());
        if (permsFlag) {
            //增加权限标识
            sb.append("<font color=\"#888\">&nbsp;&nbsp;&nbsp;" + menu.getPerms() + "</font>");
        }
        return sb.toString();
    }

    /**
     * 查询所有的菜单消息
     *
     * @return 菜单列表
     */
    @Override
    public List <Map <String, Object>> menuTreeData() {
        List <Map <String, Object>> trees = new ArrayList <>();
        List <Menu> menuList = menuMapper.selectMenuAll();
        trees = getTrees(menuList, false, null, false);
        return trees;
    }

    /**
     * 根据menuId查找对应的Menu
     *
     * @param menuId
     * @return
     */
    @Override
    public Menu findMenu(Integer menuId) {
        return menuMapper.selectMenuById(menuId);
    }

    /**
     * 根据userId查询对应的权限集合
     *
     * @param userId
     * @return
     */
    @Override
    public List <Menu> selectListMenuByUserId(Integer userId) {
        return menuMapper.selectListMenuByUserId(userId);
    }
}
