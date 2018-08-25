package com.chenyou.controller;

import com.chenyou.pojo.Menu;
import com.chenyou.pojo.Role;
import com.chenyou.pojo.entity.Result;
import com.chenyou.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/menu")
public class MenuController {

    @Autowired
    private MenuService menuService;

    /**
     * 加载角色的菜单列表树
     * @param role
     * @return
     */
    @RequestMapping("/roleMenuTreeData")
    public List <Map <String, Object>> roleMenuTreeData(Role role) {
        List <Map <String, Object>> tree = menuService.roleMenuTreeData(role);
        return tree;
    }

    /**
     * 获取到加载时的菜单树
     *
     * @return
     */
    @RequestMapping("/menuTreeData")
    public List <Map <String, Object>> menuTreeData() {
        List <Map <String, Object>> tree = menuService.menuTreeData();
        return tree;
    }

    /**
     * 校验菜单名是否唯一
     *
     * @param menu
     * @return
     */
    @RequestMapping("checkMenuNameUnique")
    public String checkMenuNameUnique(Menu menu) {
        String uniqueFlag = "0";
        if (null != menu) {
            uniqueFlag = menuService.checkMenuNameUnique(menu);
        }
        return uniqueFlag;
    }

    /**
     * 根据菜单id进行删除
     * @param menuId
     * @return
     */
    @RequestMapping("/delete/{menuId}")
    public Result delete(@PathVariable("menuId") Integer menuId) {
        if (menuService.selectCountMenuByParentId(menuId) > 0) {
            return new Result(false, "存在子菜单不允许删除");
        }
        if (menuService.selectCountRoleMenuByMenuId(menuId) > 0) {
            return new Result(false, "菜案已分配，不允许删除");
        }
        menuService.delete(menuId);
        return new Result(true, "删除成功!");
    }

    /**
     * 根据menuId查找菜单
     * @param parentId
     * @return
     */
    @RequestMapping("/addMenuparentId")
    public Menu findMenuByMenuId(Integer parentId) {
        if (0 != parentId) {
            return menuService.findMenuByMenuId(parentId);
        } else {
            Menu menu = new Menu();
            menu.setMenuId(0);
            menu.setMenuName("主目录");
            return menu;
        }
    }

    /**
     * 增加菜单
     * @param menu
     * @return
     */
    @RequestMapping("/add")
    public int inserMenu(Menu menu) {
        return menuService.addMenu(menu);
    }


    @RequestMapping("/editMenu")
    public Menu edit(Integer menuId) {
        return menuService.findMenuByMenuId(menuId);
    }

    /**
     * 修改菜单
     * @param menu
     * @return
     */
    @RequestMapping("/update")
    public Result update(Menu menu) {
        try {
            menuService.updateMenu(menu);
            return new Result(true, "修改成功!");
        } catch (Exception e) {
            e.printStackTrace();
            return new Result(false, "修改失败!");
        }
    }


}
