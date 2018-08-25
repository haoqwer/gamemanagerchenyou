权限管理模块:
   (1) 用户管理:
            a. 校验部分:1.校验用户名
                        2.校验手机号
                        3.校验邮箱
             b.修改密码:
             c.新增用户
             d.删除用户
             e.分页查询所有列表的用户                  
    (2)角色管理:
             a.校验部分:1.校验角色名称
                        2.校验角色权限
             b.选择菜单树
             c.新增角色
             d.修改角色
             e.删除角色
    (3)菜单管理
              a.校验部分:1.校验菜单名称
              b.选择菜单树
              c.角色菜单树
              d.新增菜单
              e.修改菜单
              f.删除菜单
    一、用户管理模块:
        1.校验用户名逻辑:
                        	select count(*) from sys_user where login_name=?
         根据前端传递的参数用户名，去数据库表中查找有这个名字的用户人数,如果人数大于0的话，代表存在.
         返回的人数小于0代表之前这个库的表中没有用户有这个用户名.
        2.校验手机号逻辑:
                            select user_id, phonenumber from sys_user where phonenumber=?
        根据前端传来的用户，从用户中取userId,如果userId为null则给userId为1,否则userId=user.getUserId
        第二步,将手机号去数据库表中查找到对应的user对象,将查到的user对象跟前端传来的user对象的id进行比较
        如果id不一样则说明代表已经重复.
        3.校验邮箱逻辑:
                            select user_id, email from sys_user where email?
        逻辑跟校验手机逻辑一样
        4.修改密码逻辑
               传入请求参数原始密码和新密码，将原始密码跟用户shiro中的subject主体的密码进行比较先判断主体
               是否为null,不能为null接着判断密码是否一致,如果一致则才能进行修改密码，将修改的密码传递进去，
               修改用户.
        5.新增用户逻辑
                先查出所有的岗位、角色
                在增加用户的时候，需要将用户和角色关联的中间表也同时增加
                <insert id="batchUserRole">
                		insert into sys_user_role(user_id, role_id) values
                		<foreach item="item" index="index" collection="list" separator=",">
                			(#{item.userId},#{item.roleId})
                		</foreach>
                	</insert>
        6.用户修改的逻辑
                根据用户id找到对应的用户消息和对应用户拥有的角色消息
                修改用户信息，删除角色信息，再增加用户跟角色关联的信息
    二、角色模块
        1.校验角色名称逻辑:
                跟检验手机号逻辑一样
                根绝查询角色返回一个角色
        2.校验权限名称逻辑:
                跟校验角色名称一样
        3.新增角色逻辑:
            展示权限菜单
            角色增加的时候，增加权限
            <insert id="batchRoleMenu">
            		insert into sys_role_menu(role_id, menu_id) values
            		<foreach item="item" index="index" collection="list" separator=",">
            			(#{item.roleId},#{item.menuId})
            		</foreach>
            	</insert>
        4.修改角色
        5.先根据角色id去菜单树中找到对应的菜单,再根据角色id找到对应的角色数据
           对角色和角色和菜单的中间表进行修改，修改的时候先删除原有的角色和菜单的中间表
        6.角色删除
            删除角色的时候做判断，判断这个角色使用的人数有多少，如果使用的人数大于1则不能进行删除
    三、菜单模块
        1.菜单删除逻辑:
            如果存在子菜单不能删除
                sql语句:  select count(*) from sys_menu where parent_id=#{menuId}  
            查询菜单使用数量
                sql语句:select count(*) from sys_role_menu where menu_id=#{menuId}  
                通过查询角色权限中间表判断角色使用此菜单的个数
        2.菜单新增逻辑
            菜单在新增之前，先根据选择的父菜单，根据选择的父菜单，显示父菜单的名称
                sql语句:SELECT t.menu_id, t.parent_id, t.menu_name, t.order_num, t.url, t.menu_type,t.perms, t.icon, t.remark,
                      			(SELECT menu_name FROM sys_menu WHERE menu_id = t.parent_id) parent_name
                      		FROM sys_menu t
                      		where t.menu_id = #{menuId}
        3.修改
        
        
        
        授权:
                关键字:查找所有的角色:
        
            