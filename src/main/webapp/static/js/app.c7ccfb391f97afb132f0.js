webpackJsonp([1], {
    "/vOn": function (e, t) {
    }, "1kuR": function (e, t) {
    }, "9VM1": function (e, t) {
    }, "9zCC": function (e, t) {
    }, BcMH: function (e, t) {
    }, CeZa: function (e, t) {
    }, D0cx: function (e, t) {
    }, Fied: function (e, t) {
    }, GbUp: function (e, t) {
    }, HhBa: function (e, t) {
    }, HwS2: function (e, t) {
    }, JG7b: function (e, t) {
    }, JOUd: function (e, t) {
    }, "K/X1": function (e, t) {
    }, LVDI: function (e, t) {
    }, NHnr: function (e, t, a) {
        "use strict";
        Object.defineProperty(t, "__esModule", {value: !0});
        var n = a("7+uW"), l = {
            render: function () {
                var e = this.$createElement, t = this._self._c || e;
                return t("div", {attrs: {id: "app"}}, [t("router-view")], 1)
            }, staticRenderFns: []
        };
        var r = a("VU/8")({name: "App"}, l, !1, function (e) {
            a("HwS2")
        }, null, null).exports, i = a("/ocq"), s = a("zwpc"), o = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {staticClass: "calculator"}, [a("button", {staticClass: "toggle-button"}, [e.changeMode ? a("p", {on: {click: e.changeModeEvent}}, [e._v("显示高级模式     ⚈")]) : a("p", {on: {click: e.changeModeEvent}}, [e._v("显示基础模式     ⚆")]), e._v(" "), a("i", {
                    staticClass: "el-icon-error",
                    on: {click: e.closeThis}
                })]), e._v(" "), a("div", {staticClass: "results"}, [a("input", {
                    directives: [{
                        name: "model",
                        rawName: "v-model",
                        value: e.current,
                        expression: "current"
                    }], staticClass: "input", domProps: {value: e.current}, on: {
                        input: function (t) {
                            t.target.composing || (e.current = t.target.value)
                        }
                    }
                })]), e._v(" "), e.changeMode ? a("div", {staticClass: "mode"}, [a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("7")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("8")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("9")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("*")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("<=")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("清空")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("4")]), e._v(" "), a("button", {
                    staticClass: "button", on: {
                        click: function (t) {
                            e.press(t)
                        }
                    }
                }, [e._v("5")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("6")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("/")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("(")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v(")")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("1")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("2")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("3")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("-")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("x ²")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("±")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("0")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v(".")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("%")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("+")]), e._v(" "), a("button", {
                    staticClass: "button equal-sign",
                    on: {click: e.press}
                }, [e._v("=")])]) : a("div", {staticClass: "mode"}, [a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("sin")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("cos")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("tan")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("x^")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("<=")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("清空")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("log")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("ln")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("e")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("∘")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("rad")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("√")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("7")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("8   ")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("9")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("/")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("x ²")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("x !")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("4")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("5")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("6")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("*")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("(")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v(")")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("1")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("2")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("3")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("-")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("%")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("±")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("0")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v(".")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("π")]), e._v(" "), a("button", {
                    staticClass: "button",
                    on: {click: e.press}
                }, [e._v("+")]), e._v(" "), a("button", {
                    staticClass: "button equal-sign",
                    on: {click: e.press}
                }, [e._v("=")])])])
            }, staticRenderFns: []
        };
        var c = function (e) {
            a("hRnl")
        }, p = {
            name: "management",
            data: function () {
                return {
                    showCalc: !1,
                    editPswDialog: !1,
                    selectPage: "游戏概况",
                    nav: [{
                        title: "概况",
                        child: [{title: "游戏概况", path: "/"}, {title: "日报", path: "/management/daily"}, {
                            title: "LTV概况",
                            path: "/management/ltv"
                        }]
                    }, {
                        title: "游戏玩家",
                        child: [{title: "新增玩家", path: "/management/newPlayer"}, {
                            title: "活跃玩家",
                            path: "/management/activePlayer"
                        }, {title: "玩家留存", path: "/management/retainPlayer"}, {
                            title: "玩家流失",
                            path: "/management/loosPlayer"
                        }, {title: "流失行为分析", path: "/management/loosLvPlayer"}]
                    }, {title: "在线分析", child: [{title: "在线用户", path: "/management/onlineUser"}]}, {
                        title: "充值统计",
                        child: [{title: "每日充值", path: "/management/rechargeEveryDay"}, {
                            title: "计费点分析",
                            path: "/management/billingPointAnalysis"
                        }]
                    }, {title: "渠道数据", child: [{title: "渠道数据汇总", path: "/management/channelData"}]}, {
                        title: "游戏行为统计",
                        child: [{title: "用户等级", path: "/management/gameUserRank"}, {
                            title: "vip人数",
                            path: "/management/gameBehaviorVip"
                        }, {title: "帮派数量", path: "/management/gameBehaviorNumber"}, {
                            title: "帮派等级",
                            path: "/management/gameBehaviorRank"
                        }, {title: "排行信息", path: "/management/rankInformation"}, {
                            title: "任务信息",
                            path: "/management/taskInformation"
                        }, {title: "产出与消耗", path: "/management/outputExpends"}]
                    }, {
                        title: "活动分析",
                        child: [{title: "活动参与人数", path: "/management/activityPeopleNumber"}, {
                            title: "活动产出与消耗",
                            path: "/management/activityOutputExpends"
                        }, {title: "活动排行榜", path: "/management/activityRank"}]
                    }, {
                        title: "游戏管理",
                        child: [{title: "游戏活动开启", path: "/management/gameOpen"}, {
                            title: "系统邮件发放",
                            path: "/management/systemMail"
                        }, {title: "游戏公告修改", path: "/management/informManagement"}, {
                            title: "聊天监控",
                            path: "/management/chatMonitor"
                        }, {title: "玩家信息查询", path: "/management/playerInfoSearch"}, {
                            title: "充值补单",
                            path: "/management/recharge"
                        }, {title: "充值补单日志", path: "/management/rechargeLog"}]
                    }, {
                        title: "后台管理",
                        child: [{title: "用户管理", path: "/management/admin-management"}, {
                            title: "角色管理",
                            path: "/management/role-management"
                        }, {title: "菜单管理", path: "/management/listManagement"}]
                    }, {title: "推送设置", child: ["消息发布"]}]
                }
            },
            components: {calculator: a("VU/8")(s.a, o, !1, c, "data-v-50b00b46", null).exports},
            mounted: function () {
            },
            methods: {
                selectMenu: function (e) {
                    var t = this;
                    this.nav.some(function (a) {
                        return a.child.some(function (a) {
                            if (a.path === e) return t.selectPage = a.title, !0
                        })
                    })
                }, showEditPswDialog: function (e) {
                    "0" === e && (this.editPswDialog = !0)
                }, toggleCalc: function () {
                    this.showCalc = !this.showCalc
                }
            }
        }, u = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("el-container", {staticClass: "container"}, [a("el-aside", {
                    staticClass: "left",
                    attrs: {width: "200px"}
                }, [a("el-menu", {
                    staticStyle: {"overflow-x": "hidden", height: "100%"},
                    attrs: {
                        router: "",
                        "default-opened": "8",
                        "default-active": e.$route.path,
                        "background-color": "#2f4050",
                        "text-color": "#fff",
                        "active-text-color": "#ffd04b"
                    },
                    on: {select: e.selectMenu}
                }, e._l(e.nav, function (t, n) {
                    return a("el-submenu", {
                        key: "-" + n,
                        attrs: {index: n + ""}
                    }, [a("template", {slot: "title"}, [e._v(e._s(t.title))]), e._v(" "), e._l(t.child, function (t, l) {
                        return a("el-menu-item-group", {key: n + "--" + l}, [a("el-menu-item", {attrs: {index: t.path || n + "-" + l}}, [e._v(e._s(t.title || t))])], 1)
                    })], 2)
                }))], 1), e._v(" "), a("div", {
                    staticStyle: {
                        "overflow-x": "hidden",
                        flex: "1",
                        "margin-left": "200px"
                    }
                }, [a("el-header", {staticStyle: {background: "#283847"}}, [a("div", {staticClass: "title"}, [e._v("\n              " + e._s(e.selectPage) + "\n            ")]), e._v(" "), a("el-dropdown", {on: {command: e.showEditPswDialog}}, [a("i", {
                    staticClass: "el-icon-setting",
                    staticStyle: {"margin-right": "15px", color: "#fff"}
                }), e._v(" "), a("el-dropdown-menu", {
                    attrs: {slot: "dropdown"},
                    slot: "dropdown"
                }, [a("el-dropdown-item", {attrs: {command: "0"}}, [a("i", {staticClass: "el-icon-edit"}), e._v("修改密码")]), e._v(" "), a("el-dropdown-item", {attrs: {command: "1"}}, [a("i", {staticClass: "el-icon-circle-close"}), e._v("退出")])], 1)], 1), e._v(" "), a("span", {staticStyle: {color: "#fff"}}, [e._v("你好,九伐中原")])], 1), e._v(" "), a("router-view"), e._v(" "), a("el-footer", {
                    staticStyle: {
                        "line-height": "60px",
                        "font-size": "12px",
                        color: "#999",
                        "box-sizing": "border-box"
                    }, attrs: {align: "center"}
                }, [e._v("\n            杭州辰优科技有限公司 © 2016\n        ")])], 1), e._v(" "), a("el-dialog", {
                    attrs: {
                        title: "修改密码",
                        width: "400px",
                        center: "",
                        visible: e.editPswDialog
                    }, on: {
                        "update:visible": function (t) {
                            e.editPswDialog = t
                        }
                    }
                }, [a("el-row", [e._v("\n            原密码"), a("el-input", {attrs: {placeholder: "请输入原密码"}})], 1), e._v(" "), a("el-row", {staticStyle: {"margin-top": "10px"}}, [e._v("\n            新密码"), a("el-input", {attrs: {placeholder: "请输入新密码"}})], 1), e._v(" "), a("el-row", {staticStyle: {"margin-top": "10px"}}, [e._v("\n            确认密码"), a("el-input", {attrs: {placeholder: "请再次输入新密码"}})], 1), e._v(" "), a("div", {
                    staticClass: "dialog-footer",
                    attrs: {slot: "footer"},
                    slot: "footer"
                }, [a("el-button", {
                    on: {
                        click: function (t) {
                            e.editPswDialog = !1
                        }
                    }
                }, [e._v("取 消")]), e._v(" "), a("el-button", {
                    attrs: {type: "primary"}, on: {
                        click: function (t) {
                            e.editPswDialog = !1
                        }
                    }
                }, [e._v("确 定")])], 1)], 1), e._v(" "), a("div", {staticClass: "tool-fix"}, [a("img", {
                    attrs: {src: "/static/img/calculator.gif"},
                    on: {click: e.toggleCalc}
                })]), e._v(" "), e.showCalc ? a("calculator", {on: {hideMsg: e.toggleCalc}}) : e._e()], 1)
            }, staticRenderFns: []
        };
        var d = a("VU/8")(p, u, !1, function (e) {
                a("vNEH")
            }, "data-v-35be9a44", null).exports, h = a("Xxa5"), v = a.n(h), g = a("BO1k"), m = a.n(g), _ = a("exGp"),
            b = a.n(_), f = a("mtWM"), y = a.n(f);

        function w(e) {
            return y.a.get("/user/search.do?loginName=" + e.loginName + "&userName=" + e.userName + "&phonenumber=" + e.phonenumber + "&page=" + e.page + "&rows=" + e.size)
        }

        var x = {
            name: "admin-system", data: function () {
                return {
                    newUserDialog: !1,
                    editDialog: !1,
                    viewDetailDialog: !1,
                    deleteVisiable: !1,
                    featuresInfo: {data: [], page_size: 10, current_page: 1, table_total: 0},
                    searchInfo: {
                        data: [],
                        page_size: 10,
                        current_page: 1,
                        table_total: 0,
                        loginName: "",
                        userName: "",
                        phonenumber: ""
                    },
                    viewInfo: {characher: [], data: [{value: ""}, {value: ""}, {value: ""}]},
                    deleteUsersState: {index: [], ids: []},
                    user_character: [],
                    newUserInfo: {userName: "", pwd: "", raceName: "", phone: "", user_character_select: []}
                }
            }, mounted: function () {
                var e = this;
                this.loadFeaturesData(), y.a.get("/role/listRole.do").then(function (t) {
                    t.data.data.forEach(function (t, a) {
                        e.user_character.push({value: "选项" + a, label: t.roleName, id: t.roleId})
                    })
                }).catch(function (e) {
                    console.log(e)
                })
            }, methods: {
                addEditUser: function () {
                    var e = this;
                    return b()(v.a.mark(function t() {
                        var a, n;
                        return v.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, a = e.user_character.filter(function (t) {
                                        var a = !0, n = !1, l = void 0;
                                        try {
                                            for (var r, i = m()(e.viewInfo.characher); !(a = (r = i.next()).done); a = !0) {
                                                if (r.value === t.label) return !0
                                            }
                                        } catch (e) {
                                            n = !0, l = e
                                        } finally {
                                            try {
                                                !a && i.return && i.return()
                                            } finally {
                                                if (n) throw l
                                            }
                                        }
                                        return !1
                                    }).map(function (e) {
                                        return e.id
                                    }), console.log(a), t.next = 5, l = {
                                        loginName: e.viewInfo.data[0].value,
                                        userName: e.viewInfo.data[1].value,
                                        phonenumber: e.viewInfo.data[2].value,
                                        roleIds: a
                                    }, y()({
                                        method: "POST",
                                        url: "/user/updateUser.do",
                                        data: l,
                                        transformRequest: [function (e) {
                                            var t = "";
                                            for (var a in e) t += encodeURIComponent(a) + "=" + encodeURIComponent(e[a]) + "&";
                                            return t
                                        }],
                                        headers: {"Content-Type": "application/x-www-form-urlencoded"}
                                    });
                                case 5:
                                    return n = t.sent, t.next = 8, e.$checkData(n.data);
                                case 8:
                                    t.next = 13;
                                    break;
                                case 10:
                                    t.prev = 10, t.t0 = t.catch(0), console.log(t.t0);
                                case 13:
                                case"end":
                                    return t.stop()
                            }
                            var l
                        }, t, e, [[0, 10]])
                    }))()
                }, clearEditUser: function () {
                    this.viewInfo.data.forEach(function (e) {
                        e.value = ""
                    }), this.viewInfo.characher = []
                }, tableSelect: function (e) {
                    var t = !0, a = !1, n = void 0;
                    try {
                        for (var l, r = m()(e); !(t = (l = r.next()).done); t = !0) {
                            var i = l.value;
                            this.deleteUsersState.index.push(i.index), this.deleteUsersState.ids.push(i.id)
                        }
                    } catch (e) {
                        a = !0, n = e
                    } finally {
                        try {
                            !t && r.return && r.return()
                        } finally {
                            if (a) throw n
                        }
                    }
                }, deleteMoreUsers: function () {
                    var e = this;
                    return b()(v.a.mark(function t() {
                        return v.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    e.showDeleteDialog();
                                case 1:
                                case"end":
                                    return t.stop()
                            }
                        }, t, e)
                    }))()
                }, showDeleteDialog: function (e, t) {
                    var a = this;
                    return b()(v.a.mark(function n() {
                        return v.a.wrap(function (n) {
                            for (; ;) switch (n.prev = n.next) {
                                case 0:
                                    e && t && (a.deleteUsersState.index = e, a.deleteUsersState.ids = t), a.deleteVisiable = !0;
                                case 2:
                                case"end":
                                    return n.stop()
                            }
                        }, n, a)
                    }))()
                }, deleteUserInfo: function () {
                    var e = this;
                    return b()(v.a.mark(function t() {
                        var a;
                        return v.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, n = e.deleteUsersState.ids, y.a.get("/user/removeUserByUserId.do?", {params: {userIds: n.join()}});
                                case 3:
                                    return a = t.sent, t.next = 6, e.$checkData(a.data);
                                case 6:
                                    e.deleteUsersState.index = [], e.deleteUsersState.ids = [], e.$message({
                                        showClose: !0,
                                        message: "删除成功",
                                        type: "success"
                                    }), e.loadFeaturesData(), e.deleteVisiable = !1, t.next = 16;
                                    break;
                                case 13:
                                    t.prev = 13, t.t0 = t.catch(0), console.log(t.t0);
                                case 16:
                                case"end":
                                    return t.stop()
                            }
                            var n
                        }, t, e, [[0, 13]])
                    }))()
                }, searchUserInfo: function () {
                    var e = this;
                    return b()(v.a.mark(function t() {
                        return v.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    e.loadSearchData();
                                case 1:
                                case"end":
                                    return t.stop()
                            }
                        }, t, e)
                    }))()
                }, addNewUser: function () {
                    var e = this;
                    return b()(v.a.mark(function t() {
                        var a;
                        return v.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    a = e.user_character.filter(function (t) {
                                        var a = !0, n = !1, l = void 0;
                                        try {
                                            for (var r, i = m()(e.newUserInfo.user_character_select); !(a = (r = i.next()).done); a = !0) {
                                                if (r.value === t.value) return !0
                                            }
                                        } catch (e) {
                                            n = !0, l = e
                                        } finally {
                                            try {
                                                !a && i.return && i.return()
                                            } finally {
                                                if (n) throw l
                                            }
                                        }
                                        return !1
                                    }).map(function (e) {
                                        return e.id
                                    }), (n = {
                                        loginName: e.newUserInfo.userName,
                                        userName: e.newUserInfo.raceName,
                                        phonenumber: e.newUserInfo.phone,
                                        roleIds: a,
                                        password: e.newUserInfo.pwd
                                    }, y()({
                                        method: "POST",
                                        url: "/user/saveUser.do",
                                        data: n,
                                        transformRequest: [function (e) {
                                            var t = "";
                                            for (var a in e) t += encodeURIComponent(a) + "=" + encodeURIComponent(e[a]) + "&";
                                            return t
                                        }],
                                        headers: {"Content-Type": "application/x-www-form-urlencoded"}
                                    })).then(function (t) {
                                        e.$checkData(t.data).then(function (t) {
                                            e.$message({
                                                showClose: !0,
                                                message: "添加成功",
                                                type: "success"
                                            }), e.featuresInfo.data.push({
                                                userName: e.newUserInfo.userName,
                                                raceName: e.newUserInfo.raceName,
                                                phone: e.newUserInfo.phone,
                                                character: e.user_character.filter(function (t) {
                                                    var a = !0, n = !1, l = void 0;
                                                    try {
                                                        for (var r, i = m()(e.newUserInfo.user_character_select); !(a = (r = i.next()).done); a = !0) {
                                                            if (r.value === t.value) return !0
                                                        }
                                                    } catch (e) {
                                                        n = !0, l = e
                                                    } finally {
                                                        try {
                                                            !a && i.return && i.return()
                                                        } finally {
                                                            if (n) throw l
                                                        }
                                                    }
                                                    return !1
                                                }).map(function (e) {
                                                    return e.label
                                                }),
                                                state: "有效"
                                            }), e.newUserDialog = !1, e.clearNewUser()
                                        }).catch(function (e) {
                                            console.log(e)
                                        })
                                    }).catch(function (e) {
                                    });
                                case 2:
                                case"end":
                                    return t.stop()
                            }
                            var n
                        }, t, e)
                    }))()
                }, checkPhoneNumber: function () {
                    var e = this;
                    return b()(v.a.mark(function t() {
                        return v.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.t0 = e, t.next = 4, a = e.newUserInfo.phone, y()({
                                        method: "POST",
                                        url: "/user/checkPhoneUnique.do",
                                        data: {phonenumber: a},
                                        transformRequest: [function (e) {
                                            var t = "";
                                            for (var a in e) t += encodeURIComponent(a) + "=" + encodeURIComponent(e[a]) + "&";
                                            return t
                                        }],
                                        headers: {"Content-Type": "application/x-www-form-urlencoded"}
                                    });
                                case 4:
                                    return t.t1 = t.sent.data, t.next = 7, t.t0.$checkData.call(t.t0, t.t1);
                                case 7:
                                    t.next = 12;
                                    break;
                                case 9:
                                    t.prev = 9, t.t2 = t.catch(0), console.log(t.t2);
                                case 12:
                                case"end":
                                    return t.stop()
                            }
                            var a
                        }, t, e, [[0, 9]])
                    }))()
                }, checkUserName: function () {
                    var e = this;
                    return b()(v.a.mark(function t() {
                        return v.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.t0 = e, t.next = 4, a = e.newUserInfo.userName, y.a.get("/user/checkLoginNameUnique.do?loginName=" + a);
                                case 4:
                                    return t.t1 = t.sent.data, t.next = 7, t.t0.$checkData.call(t.t0, t.t1);
                                case 7:
                                    t.next = 12;
                                    break;
                                case 9:
                                    t.prev = 9, t.t2 = t.catch(0), console.log(t.t2);
                                case 12:
                                case"end":
                                    return t.stop()
                            }
                            var a
                        }, t, e, [[0, 9]])
                    }))()
                }, clearNewUser: function () {
                    this.newUserInfo.userName = "", this.newUserInfo.phone = "", this.newUserInfo.raceName = "", this.newUserInfo.pwd = "", this.newUserInfo.user_character_select = []
                }, loadFeaturesData: function () {
                    var e = this;
                    return b()(v.a.mark(function t() {
                        var a, n;
                        return v.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, l = e.featuresInfo.current_page, r = e.featuresInfo.page_size, y.a.get("/user/findPage.do?page=" + l + "&rows=" + r);
                                case 3:
                                    a = t.sent, n = a.data, e.featuresInfo.table_total = n.total, e.featuresInfo.data = [], n.rows.forEach(function (t) {
                                        e.featuresInfo.data.push({
                                            userName: t.loginName,
                                            raceName: t.userName,
                                            phone: t.phonenumber,
                                            character: t.roles.map(function (e) {
                                                return e.roleName
                                            }).join(),
                                            state: "0" === t.status ? "有效" : "无效",
                                            id: t.userId,
                                            index: t.index
                                        })
                                    }), t.next = 13;
                                    break;
                                case 10:
                                    t.prev = 10, t.t0 = t.catch(0), console.log(t.t0);
                                case 13:
                                case"end":
                                    return t.stop()
                            }
                            var l, r
                        }, t, e, [[0, 10]])
                    }))()
                }, loadSearchData: function () {
                    var e = this;
                    return b()(v.a.mark(function t() {
                        var a, n;
                        return v.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, w({
                                        page: e.searchInfo.current_page,
                                        size: e.searchInfo.page_size,
                                        loginName: e.searchInfo.loginName,
                                        userName: e.searchInfo.userName,
                                        phonenumber: e.searchInfo.phonenumber
                                    });
                                case 3:
                                    a = t.sent, n = a.data, e.searchInfo.table_total = n.total, e.searchInfo.data = [], n.rows.forEach(function (t) {
                                        e.searchInfo.data.push({
                                            userName: t.loginName,
                                            raceName: t.userName,
                                            phone: t.phonenumber,
                                            character: t.roles.map(function (e) {
                                                return e.roleName
                                            }).join(),
                                            state: "0" === t.status ? "有效" : "无效",
                                            id: t.userId,
                                            index: t.index
                                        })
                                    }), t.next = 13;
                                    break;
                                case 10:
                                    t.prev = 10, t.t0 = t.catch(0), console.log(t.t0);
                                case 13:
                                case"end":
                                    return t.stop()
                            }
                        }, t, e, [[0, 10]])
                    }))()
                }, formatName: function (e) {
                    var t = "";
                    switch (e) {
                        case"userName":
                            t = "用户名";
                            break;
                        case"pwd":
                            t = "密码";
                            break;
                        case"raceName":
                            t = "用户真实姓名";
                            break;
                        case"phone":
                            t = "电话";
                            break;
                        case"character":
                            t = "所属角色";
                            break;
                        case"state":
                            t = "状态"
                    }
                    return t
                }, featuresCurrentChange: function (e) {
                    this.featuresInfo.current_page = e, this.loadFeaturesData()
                }, featuresSizeChange: function (e) {
                    this.featuresInfo.page_size = e, this.loadFeaturesData()
                }, viewDetail: function (e) {
                    for (var t in this.viewDetailDialog = !0, this.viewInfo.data = [], e) "id" !== t && "index" !== t && ("character" === t && (this.viewInfo.characher = e[t].split(",")), this.viewInfo.data.push({
                        name: this.formatName(t),
                        value: e[t]
                    }))
                }, editInfo: function (e) {
                    for (var t in this.editDialog = !0, this.viewInfo.data = [], e) "id" !== t && "index" !== t && ("character" === t ? this.viewInfo.characher = e[t].split(",") : this.viewInfo.data.push({
                        name: this.formatName(t),
                        value: e[t]
                    }))
                }, newUser: function () {
                    this.newUserDialog = !0
                }
            }
        }, z = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("el-tabs", {
                    staticClass: "content",
                    attrs: {type: "border-card", value: "Features"}
                }, [a("el-tab-pane", {
                    attrs: {
                        label: "功能选择",
                        name: "Features"
                    }
                }, [a("el-row", [a("el-button", {
                    attrs: {type: "success"}, on: {
                        click: function (t) {
                            return t.stopPropagation(), e.newUser(t)
                        }
                    }
                }, [e._v("新增")]), e._v(" "), a("el-button", {
                    attrs: {type: "danger"}, on: {
                        click: function (t) {
                            return t.stopPropagation(), e.deleteMoreUsers(t)
                        }
                    }
                }, [e._v("批量删除")])], 1), e._v(" "), a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.featuresInfo.data, border: !0},
                    on: {"select-all": e.tableSelect, select: e.tableSelect}
                }, [a("el-table-column", {
                    attrs: {
                        align: "center",
                        type: "selection",
                        width: "36"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "userName",
                        label: "用户名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "raceName",
                        label: "用户真实姓名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "phone",
                        label: "电话"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "200",
                        align: "center",
                        prop: "character",
                        label: "所属角色"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "200",
                        align: "center",
                        prop: "state",
                        label: "状态"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {width: "350", align: "center", label: "操作"},
                    scopedSlots: e._u([{
                        key: "default", fn: function (t) {
                            return [a("el-button", {
                                attrs: {size: "mini"}, on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.viewDetail(t.store.states.data[t.$index])
                                    }
                                }
                            }, [e._v("查看")]), e._v(" "), a("el-button", {
                                attrs: {size: "mini", type: "success"},
                                on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.editInfo(t.store.states.data[t.$index])
                                    }
                                }
                            }, [e._v("修改")]), e._v(" "), a("el-button", {
                                attrs: {size: "mini", type: "danger"},
                                on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.showDeleteDialog([t.$index], [t.store.states.data[t.$index].id])
                                    }
                                }
                            }, [e._v("删除")])]
                        }
                    }])
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.featuresInfo.current_page,
                        "page-sizes": [10, 20],
                        "page-size": e.featuresInfo.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.featuresInfo.table_total
                    },
                    on: {"size-change": e.featuresSizeChange, "current-change": e.featuresCurrentChange}
                })], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "查询选择",
                        name: "search"
                    }
                }, [a("el-input", {
                    staticStyle: {width: "280px"},
                    attrs: {placeholder: "请输入"},
                    model: {
                        value: e.searchInfo.loginName, callback: function (t) {
                            e.$set(e.searchInfo, "loginName", t)
                        }, expression: "searchInfo.loginName"
                    }
                }, [a("template", {slot: "prepend"}, [e._v("用户名")])], 2), e._v(" "), a("el-input", {
                    staticStyle: {width: "280px"},
                    attrs: {placeholder: "请输入"},
                    model: {
                        value: e.searchInfo.userName, callback: function (t) {
                            e.$set(e.searchInfo, "userName", t)
                        }, expression: "searchInfo.userName"
                    }
                }, [a("template", {slot: "prepend"}, [e._v("真实姓名")])], 2), e._v(" "), a("el-input", {
                    staticStyle: {width: "280px"},
                    attrs: {placeholder: "请输入"},
                    model: {
                        value: e.searchInfo.phonenumber, callback: function (t) {
                            e.$set(e.searchInfo, "phonenumber", t)
                        }, expression: "searchInfo.phonenumber"
                    }
                }, [a("template", {slot: "prepend"}, [e._v("电话号码")])], 2), e._v(" "), a("el-row", {staticStyle: {"margin-top": "20px"}}, [a("el-button", {
                    attrs: {type: "success"},
                    on: {click: e.searchUserInfo}
                }, [e._v("立即查询")]), e._v(" "), a("el-button", [e._v("重置")])], 1), e._v(" "), a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.searchInfo.data, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "userName",
                        label: "用户名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "raceName",
                        label: "用户真实姓名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "phone",
                        label: "电话"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "200",
                        align: "center",
                        prop: "character",
                        label: "所属角色"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "200",
                        align: "center",
                        prop: "state",
                        label: "状态"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {width: "350", align: "center", label: "操作"},
                    scopedSlots: e._u([{
                        key: "default", fn: function (t) {
                            return [a("el-button", {
                                attrs: {size: "mini"}, on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.viewDetail(t.store.states.data[t.$index])
                                    }
                                }
                            }, [e._v("查看")]), e._v(" "), a("el-button", {
                                attrs: {size: "mini", type: "success"},
                                on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.editInfo(t.store.states.data[t.$index])
                                    }
                                }
                            }, [e._v("修改")]), e._v(" "), a("el-button", {
                                attrs: {size: "mini", type: "danger"},
                                on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.showDeleteDialog([t.$index], [t.store.states.data[t.$index]])
                                    }
                                }
                            }, [e._v("删除")])]
                        }
                    }])
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.searchInfo.current_page,
                        "page-sizes": [10, 20],
                        "page-size": e.searchInfo.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.searchInfo.table_total
                    },
                    on: {"size-change": e.featuresSizeChange, "current-change": e.featuresCurrentChange}
                })], 1), e._v(" "), a("el-dialog", {
                    attrs: {
                        color: "#f56c6c",
                        title: "警告",
                        visible: e.deleteVisiable,
                        width: "30%",
                        center: ""
                    }, on: {
                        "update:visible": function (t) {
                            e.deleteVisiable = t
                        }
                    }
                }, [a("div", {
                    staticStyle: {
                        "text-align": "center",
                        color: "#f56c6c"
                    }
                }, [e._v("这是一个不可逆的操作,请谨慎点击确定")]), e._v(" "), a("span", {
                    staticClass: "dialog-footer",
                    attrs: {slot: "footer"},
                    slot: "footer"
                }, [a("el-button", {
                    on: {
                        click: function (t) {
                            e.deleteVisiable = !1
                        }
                    }
                }, [e._v("取 消")]), e._v(" "), a("el-button", {
                    attrs: {type: "primary"}, on: {
                        click: function (t) {
                            return t.stopPropagation(), e.deleteUserInfo(t)
                        }
                    }
                }, [e._v("确 定")])], 1)]), e._v(" "), a("el-dialog", {
                    attrs: {
                        title: "查看",
                        center: "",
                        visible: e.viewDetailDialog
                    }, on: {
                        "update:visible": function (t) {
                            e.viewDetailDialog = t
                        }
                    }
                }, [a("el-table", {
                    attrs: {
                        "show-header": !1,
                        data: e.viewInfo.data,
                        border: ""
                    }
                }, [a("el-table-column", {
                    attrs: {
                        align: "center",
                        prop: "name"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        align: "center",
                        prop: "value"
                    }
                })], 1), e._v(" "), a("div", {
                    staticClass: "dialog-footer",
                    attrs: {slot: "footer"},
                    slot: "footer"
                }, [a("el-button", {
                    attrs: {type: "primary"}, on: {
                        click: function (t) {
                            e.viewDetailDialog = !1
                        }
                    }
                }, [e._v("关 闭")])], 1)], 1), e._v(" "), a("el-dialog", {
                    attrs: {
                        title: "修改",
                        width: "600px",
                        center: "",
                        visible: e.editDialog
                    }, on: {
                        "update:visible": function (t) {
                            e.editDialog = t
                        }
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("用户名")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    attrs: {placeholder: "请输入内容"},
                    model: {
                        value: e.viewInfo.data[0].value, callback: function (t) {
                            e.$set(e.viewInfo.data[0], "value", t)
                        }, expression: "viewInfo.data[0].value"
                    }
                })], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("用户姓名")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    attrs: {placeholder: "请输入内容"},
                    model: {
                        value: e.viewInfo.data[1].value, callback: function (t) {
                            e.$set(e.viewInfo.data[1], "value", t)
                        }, expression: "viewInfo.data[1].value"
                    }
                })], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("手机号码")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    attrs: {
                        placeholder: "请输入内容",
                        type: "number"
                    }, model: {
                        value: e.viewInfo.data[2].value, callback: function (t) {
                            e.$set(e.viewInfo.data[2], "value", t)
                        }, expression: "viewInfo.data[2].value"
                    }
                })], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("用户角色")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-select", {
                    attrs: {
                        multiple: "",
                        placeholder: "请选择"
                    }, model: {
                        value: e.viewInfo.characher, callback: function (t) {
                            e.$set(e.viewInfo, "characher", t)
                        }, expression: "viewInfo.characher"
                    }
                }, e._l(e.user_character, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("div", {
                    staticClass: "dialog-footer",
                    attrs: {slot: "footer"},
                    slot: "footer"
                }, [a("el-button", {on: {click: e.clearEditUser}}, [e._v("清 空")]), e._v(" "), a("el-button", {
                    attrs: {type: "danger"},
                    on: {click: e.addEditUser}
                }, [e._v("确 定")])], 1)], 1), e._v(" "), a("el-dialog", {
                    staticClass: "newUserDialog",
                    attrs: {center: "", width: "600px", title: "添加管理员", visible: e.newUserDialog},
                    on: {
                        "update:visible": function (t) {
                            e.newUserDialog = t
                        }
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("用户名")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    staticClass: "newUserInput",
                    attrs: {placeholder: "请输入内容"},
                    on: {blur: e.checkUserName},
                    model: {
                        value: e.newUserInfo.userName, callback: function (t) {
                            e.$set(e.newUserInfo, "userName", t)
                        }, expression: "newUserInfo.userName"
                    }
                })], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("密码框")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    staticClass: "newUserInput",
                    attrs: {placeholder: "请输入内容", type: "password"},
                    model: {
                        value: e.newUserInfo.pwd, callback: function (t) {
                            e.$set(e.newUserInfo, "pwd", t)
                        }, expression: "newUserInfo.pwd"
                    }
                })], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("用户姓名")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    staticClass: "newUserInput",
                    attrs: {placeholder: "请输入内容"},
                    model: {
                        value: e.newUserInfo.raceName, callback: function (t) {
                            e.$set(e.newUserInfo, "raceName", t)
                        }, expression: "newUserInfo.raceName"
                    }
                })], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("手机号码")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    staticClass: "newUserInput",
                    attrs: {placeholder: "请输入内容", type: "number"},
                    on: {blur: e.checkPhoneNumber},
                    model: {
                        value: e.newUserInfo.phone, callback: function (t) {
                            e.$set(e.newUserInfo, "phone", t)
                        }, expression: "newUserInfo.phone"
                    }
                })], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("用户角色")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-select", {
                    attrs: {
                        multiple: "",
                        placeholder: "请选择"
                    }, model: {
                        value: e.newUserInfo.user_character_select, callback: function (t) {
                            e.$set(e.newUserInfo, "user_character_select", t)
                        }, expression: "newUserInfo.user_character_select"
                    }
                }, e._l(e.user_character, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("div", {
                    staticClass: "dialog-footer",
                    attrs: {slot: "footer"},
                    slot: "footer"
                }, [a("el-button", {on: {click: e.clearNewUser}}, [e._v("清 空")]), e._v(" "), a("el-button", {
                    attrs: {type: "primary"},
                    on: {click: e.addNewUser}
                }, [e._v("确 定")])], 1)], 1)], 1)
            }, staticRenderFns: []
        };
        var C = a("VU/8")(x, z, !1, function (e) {
            a("y9kM")
        }, "data-v-246f0956", null).exports, k = a("gRE1"), D = a.n(k), S = a("fZjL"), I = a.n(S), U = {
            name: "admin-system", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({name: "大都督" + t, label: "司马懿"});
                return {
                    newUserDialog: !1,
                    editDialog: !1,
                    viewDetailDialog: !1,
                    deleteVisiable: !1,
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    tableData: e.slice(0, 10),
                    state: {deleteIndex: null, viewInfo: [], editInfo: {}},
                    authorizationList: [{
                        id: 1,
                        label: "一级 1",
                        children: [{
                            id: 4,
                            label: "二级 1-1",
                            children: [{id: 9, label: "三级 1-1-1"}, {id: 10, label: "三级 1-1-2"}]
                        }, {
                            id: 5,
                            label: "二级 1-2",
                            children: [{id: 9, label: "三级 1-1-1"}, {id: 10, label: "三级 1-1-2"}]
                        }]
                    }, {
                        id: 2,
                        label: "一级 2",
                        children: [{id: 5, label: "二级 2-1"}, {id: 6, label: "二级 2-2"}]
                    }, {id: 3, label: "一级 3", children: [{id: 7, label: "二级 3-1"}, {id: 8, label: "二级 3-2"}]}],
                    defaultProps: {children: "children", label: "label"}
                }
            }, methods: {
                formatName: function (e) {
                    var t = "";
                    switch (e) {
                        case"name":
                            t = "用户名称";
                            break;
                        case"label":
                            t = "备注"
                    }
                    return t
                }, handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }, deleteRow: function (e) {
                    this.state.deleteIndex = e, this.deleteVisiable = !0
                }, enterDelete: function () {
                    this.item.splice(this.page_size * (this.current_page - 1) + this.state.deleteIndex, 1), this.tableData.splice(this.state.deleteIndex, 1), this.deleteVisiable = !1
                }, viewDetail: function (e) {
                    var t = this;
                    this.viewDetailDialog = !0;
                    var a = I()(e.row), n = D()(e.row);
                    this.state.viewInfo = [], a.forEach(function (e, a) {
                        t.state.viewInfo.push({name: t.formatName(e), value: n[a]})
                    })
                }, editInfo: function (e) {
                    this.editDialog = !0, this.state.editInfo = e.row
                }, newUser: function () {
                    this.newUserDialog = !0
                }
            }
        }, V = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("el-tabs", {
                    staticClass: "content",
                    attrs: {type: "border-card", value: "Features"}
                }, [a("el-tab-pane", {
                    attrs: {
                        label: "功能选择",
                        name: "Features"
                    }
                }, [a("el-row", [a("el-button", {
                    attrs: {type: "success"}, on: {
                        click: function (t) {
                            return t.stopPropagation(), e.newUser(t)
                        }
                    }
                }, [e._v("新增")]), e._v(" "), a("el-button", {
                    staticStyle: {"margin-left": "-2px"},
                    attrs: {type: "danger"}
                }, [e._v("批量删除")])], 1), e._v(" "), a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        align: "center",
                        type: "selection",
                        width: "36"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "name",
                        label: "角色名称"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "400",
                        align: "center",
                        prop: "label",
                        label: "备注"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {width: "350", align: "center", label: "操作"},
                    scopedSlots: e._u([{
                        key: "default", fn: function (t) {
                            return [a("el-button", {
                                attrs: {size: "mini", type: "primary"}, on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.viewDetail(t)
                                    }
                                }
                            }, [e._v("授权")]), e._v(" "), a("el-button", {
                                attrs: {size: "mini", type: "success"},
                                on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.editInfo(t)
                                    }
                                }
                            }, [e._v("修改")]), e._v(" "), a("el-button", {
                                attrs: {size: "mini", type: "danger"},
                                on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.deleteRow(t.$index)
                                    }
                                }
                            }, [e._v("删除")])]
                        }
                    }])
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "查询选择",
                        name: "search"
                    }
                }, [a("el-row", {staticStyle: {"margin-top": "20px"}}, [a("el-col", [a("el-input", {
                    staticStyle: {width: "280px"},
                    attrs: {placeholder: "请输入"}
                }, [a("template", {slot: "prepend"}, [e._v("角色名")])], 2), e._v(" "), a("el-button", {
                    staticStyle: {"margin-left": "10px"},
                    attrs: {type: "success"}
                }, [e._v("立即查询")]), e._v(" "), a("el-button", [e._v("重置")])], 1)], 1), e._v(" "), a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        align: "center",
                        type: "selection",
                        width: "36"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "name",
                        label: "角色名称"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "400",
                        align: "center",
                        prop: "label",
                        label: "备注"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {width: "350", align: "center", label: "操作"},
                    scopedSlots: e._u([{
                        key: "default", fn: function (t) {
                            return [a("el-button", {
                                attrs: {size: "mini", type: "primary"}, on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.viewDetail(t)
                                    }
                                }
                            }, [e._v("授权")]), e._v(" "), a("el-button", {
                                attrs: {size: "mini", type: "success"},
                                on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.editInfo(t)
                                    }
                                }
                            }, [e._v("修改")]), e._v(" "), a("el-button", {
                                attrs: {size: "mini", type: "danger"},
                                on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.deleteRow(t.$index)
                                    }
                                }
                            }, [e._v("删除")])]
                        }
                    }])
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1), e._v(" "), a("el-dialog", {
                    attrs: {
                        color: "#f56c6c",
                        title: "警告",
                        visible: e.deleteVisiable,
                        width: "30%",
                        center: ""
                    }, on: {
                        "update:visible": function (t) {
                            e.deleteVisiable = t
                        }
                    }
                }, [a("div", {
                    staticStyle: {
                        "text-align": "center",
                        color: "#f56c6c"
                    }
                }, [e._v("这是一个不可逆的操作,请谨慎点击确定")]), e._v(" "), a("span", {
                    staticClass: "dialog-footer",
                    attrs: {slot: "footer"},
                    slot: "footer"
                }, [a("el-button", {
                    on: {
                        click: function (t) {
                            e.deleteVisiable = !1
                        }
                    }
                }, [e._v("取 消")]), e._v(" "), a("el-button", {
                    attrs: {type: "primary"}, on: {
                        click: function (t) {
                            return t.stopPropagation(), e.enterDelete(t)
                        }
                    }
                }, [e._v("确 定")])], 1)]), e._v(" "), a("el-dialog", {
                    attrs: {
                        title: "授权",
                        width: "600px",
                        center: "",
                        visible: e.viewDetailDialog
                    }, on: {
                        "update:visible": function (t) {
                            e.viewDetailDialog = t
                        }
                    }
                }, [a("div", {staticStyle: {"overflow-y": "scroll", height: "400px"}}, [a("el-tree", {
                    ref: "tree",
                    attrs: {
                        data: e.authorizationList,
                        "show-checkbox": "",
                        "default-expand-all": "",
                        "node-key": "id",
                        "highlight-current": "",
                        props: e.defaultProps
                    }
                })], 1), e._v(" "), a("div", {
                    staticClass: "dialog-footer",
                    attrs: {slot: "footer"},
                    slot: "footer"
                }, [a("el-button", {
                    attrs: {type: "primary"}, on: {
                        click: function (t) {
                            e.viewDetailDialog = !1
                        }
                    }
                }, [e._v("关 闭")]), e._v(" "), a("el-button", {
                    attrs: {type: "success"}, on: {
                        click: function (t) {
                            e.viewDetailDialog = !1
                        }
                    }
                }, [e._v("确 定")])], 1)]), e._v(" "), a("el-dialog", {
                    attrs: {
                        title: "修改",
                        width: "600px",
                        center: "",
                        visible: e.editDialog
                    }, on: {
                        "update:visible": function (t) {
                            e.editDialog = t
                        }
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("用户名称")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("备注")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("div", {
                    staticClass: "dialog-footer",
                    attrs: {slot: "footer"},
                    slot: "footer"
                }, [a("el-button", {
                    on: {
                        click: function (t) {
                            e.editDialog = !1
                        }
                    }
                }, [e._v("取 消")]), e._v(" "), a("el-button", {
                    attrs: {type: "primary"}, on: {
                        click: function (t) {
                            e.editDialog = !1
                        }
                    }
                }, [e._v("确 定")])], 1)], 1), e._v(" "), a("el-dialog", {
                    attrs: {
                        center: "",
                        width: "600px",
                        title: "添加角色管理",
                        visible: e.newUserDialog
                    }, on: {
                        "update:visible": function (t) {
                            e.newUserDialog = t
                        }
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("用户名称")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("备注")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("div", {
                    staticClass: "dialog-footer",
                    attrs: {slot: "footer"},
                    slot: "footer"
                }, [a("el-button", {
                    on: {
                        click: function (t) {
                            e.newUserDialog = !1
                        }
                    }
                }, [e._v("清 空")]), e._v(" "), a("el-button", {
                    attrs: {type: "primary"}, on: {
                        click: function (t) {
                            e.newUserDialog = !1
                        }
                    }
                }, [e._v("确 定")])], 1)], 1)], 1)
            }, staticRenderFns: []
        };
        var P = a("VU/8")(U, V, !1, function (e) {
            a("/vOn")
        }, "data-v-f71eedb6", null).exports, N = {
            name: "list-management", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({
                    id: t + 1,
                    name: "abc",
                    type: "无权限",
                    keyword: "123" + t,
                    pid: t,
                    sort: 2 * t
                });
                return {
                    newUserDialog: !1,
                    editDialog: !1,
                    viewDetailDialog: !1,
                    deleteVisiable: !1,
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    tableData: e.slice(0, 10),
                    state: {deleteIndex: null, viewInfo: [], editInfo: {}},
                    user_character: [{value: "选项1", label: "管理员"}, {value: "选项2", label: "管理员他媳妇"}],
                    user_character_select: []
                }
            }, methods: {
                formatName: function (e) {
                    var t = "";
                    switch (e) {
                        case"name":
                            t = "菜单名称";
                            break;
                        case"id":
                            t = "权限id";
                            break;
                        case"type":
                            t = "权限类型";
                            break;
                        case"keyword":
                            t = "权限代码关键字";
                            break;
                        case"pid":
                            t = "父节点id";
                            break;
                        case"sort":
                            t = "排序号"
                    }
                    return t
                }, handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }, deleteRow: function (e) {
                    this.state.deleteIndex = e, this.deleteVisiable = !0
                }, enterDelete: function () {
                    this.item.splice(this.page_size * (this.current_page - 1) + this.state.deleteIndex, 1), this.tableData.splice(this.state.deleteIndex, 1), this.deleteVisiable = !1
                }, viewDetail: function (e) {
                    var t = this;
                    this.viewDetailDialog = !0;
                    var a = I()(e.row), n = D()(e.row);
                    this.state.viewInfo = [], a.forEach(function (e, a) {
                        t.state.viewInfo.push({name: t.formatName(e), value: n[a]})
                    })
                }, editInfo: function (e) {
                    this.editDialog = !0, this.state.editInfo = e.row
                }, newUser: function () {
                    this.newUserDialog = !0
                }
            }
        }, j = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("el-tabs", {
                    staticClass: "content",
                    attrs: {type: "border-card", value: "Features"}
                }, [a("el-tab-pane", {
                    attrs: {
                        label: "功能选择",
                        name: "Features"
                    }
                }, [a("el-row", [a("el-button", {
                    attrs: {type: "success"}, on: {
                        click: function (t) {
                            return t.stopPropagation(), e.newUser(t)
                        }
                    }
                }, [e._v("新增")]), e._v(" "), a("el-button", {attrs: {type: "danger"}}, [e._v("批量删除")])], 1), e._v(" "), a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        align: "center",
                        type: "selection",
                        width: "36"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "id",
                        label: "权限id"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "name",
                        label: "菜单名称"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "type",
                        label: "权限类型"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "200",
                        align: "center",
                        prop: "keyword",
                        label: "权限代码关键字"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "200",
                        align: "center",
                        prop: "pid",
                        label: "父节点id"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "200",
                        align: "center",
                        prop: "sort",
                        label: "排序号"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {width: "350", align: "center", label: "操作"},
                    scopedSlots: e._u([{
                        key: "default", fn: function (t) {
                            return [a("el-button", {
                                attrs: {size: "mini"}, on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.viewDetail(t)
                                    }
                                }
                            }, [e._v("查看")]), e._v(" "), a("el-button", {
                                attrs: {size: "mini", type: "success"},
                                on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.editInfo(t)
                                    }
                                }
                            }, [e._v("修改")]), e._v(" "), a("el-button", {
                                attrs: {size: "mini", type: "danger"},
                                on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.deleteRow(t.$index)
                                    }
                                }
                            }, [e._v("删除")])]
                        }
                    }])
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "查询选择",
                        name: "search"
                    }
                }, [a("el-input", {
                    staticStyle: {width: "280px"},
                    attrs: {placeholder: "请输入"}
                }, [a("template", {slot: "prepend"}, [e._v("菜单名称")])], 2), e._v(" "), a("el-input", {
                    staticStyle: {width: "280px"},
                    attrs: {placeholder: "请输入"}
                }, [a("template", {slot: "prepend"}, [e._v("上一级菜单")])], 2), e._v(" "), a("el-row", {staticStyle: {"margin-top": "20px"}}, [a("el-button", {attrs: {type: "success"}}, [e._v("立即查询")]), e._v(" "), a("el-button", [e._v("重置")])], 1), e._v(" "), a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        align: "center",
                        type: "selection",
                        width: "36"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "id",
                        label: "权限id"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "name",
                        label: "菜单名称"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "type",
                        label: "权限类型"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "200",
                        align: "center",
                        prop: "keyword",
                        label: "权限代码关键字"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "200",
                        align: "center",
                        prop: "pid",
                        label: "父节点id"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "200",
                        align: "center",
                        prop: "sort",
                        label: "排序号"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {width: "350", align: "center", label: "操作"},
                    scopedSlots: e._u([{
                        key: "default", fn: function (t) {
                            return [a("el-button", {
                                attrs: {size: "mini"}, on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.viewDetail(t)
                                    }
                                }
                            }, [e._v("查看")]), e._v(" "), a("el-button", {
                                attrs: {size: "mini", type: "success"},
                                on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.editInfo(t)
                                    }
                                }
                            }, [e._v("修改")]), e._v(" "), a("el-button", {
                                attrs: {size: "mini", type: "danger"},
                                on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.deleteRow(t.$index)
                                    }
                                }
                            }, [e._v("删除")])]
                        }
                    }])
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1), e._v(" "), a("el-dialog", {
                    attrs: {
                        color: "#f56c6c",
                        title: "警告",
                        visible: e.deleteVisiable,
                        width: "30%",
                        center: ""
                    }, on: {
                        "update:visible": function (t) {
                            e.deleteVisiable = t
                        }
                    }
                }, [a("div", {
                    staticStyle: {
                        "text-align": "center",
                        color: "#f56c6c"
                    }
                }, [e._v("这是一个不可逆的操作,请谨慎点击确定")]), e._v(" "), a("span", {
                    staticClass: "dialog-footer",
                    attrs: {slot: "footer"},
                    slot: "footer"
                }, [a("el-button", {
                    on: {
                        click: function (t) {
                            e.deleteVisiable = !1
                        }
                    }
                }, [e._v("取 消")]), e._v(" "), a("el-button", {
                    attrs: {type: "primary"}, on: {
                        click: function (t) {
                            return t.stopPropagation(), e.enterDelete(t)
                        }
                    }
                }, [e._v("确 定")])], 1)]), e._v(" "), a("el-dialog", {
                    attrs: {
                        title: "查看",
                        center: "",
                        visible: e.viewDetailDialog
                    }, on: {
                        "update:visible": function (t) {
                            e.viewDetailDialog = t
                        }
                    }
                }, [a("el-table", {
                    attrs: {
                        "show-header": !1,
                        data: e.state.viewInfo,
                        border: ""
                    }
                }, [a("el-table-column", {
                    attrs: {
                        align: "center",
                        prop: "name"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        align: "center",
                        prop: "value"
                    }
                })], 1), e._v(" "), a("div", {
                    staticClass: "dialog-footer",
                    attrs: {slot: "footer"},
                    slot: "footer"
                }, [a("el-button", {
                    attrs: {type: "primary"}, on: {
                        click: function (t) {
                            e.viewDetailDialog = !1
                        }
                    }
                }, [e._v("关 闭")])], 1)], 1), e._v(" "), a("el-dialog", {
                    attrs: {
                        title: "修改",
                        width: "600px",
                        center: "",
                        visible: e.editDialog
                    }, on: {
                        "update:visible": function (t) {
                            e.editDialog = t
                        }
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("菜单名称")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("权限类型")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("权限代码关键字")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("排序号")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("div", {
                    staticClass: "dialog-footer",
                    attrs: {slot: "footer"},
                    slot: "footer"
                }, [a("el-button", {
                    on: {
                        click: function (t) {
                            e.newUserDialog = !1
                        }
                    }
                }, [e._v("清 空")]), e._v(" "), a("el-button", {
                    attrs: {type: "primary"}, on: {
                        click: function (t) {
                            e.newUserDialog = !1
                        }
                    }
                }, [e._v("确 定")])], 1)], 1), e._v(" "), a("el-dialog", {
                    attrs: {
                        center: "",
                        width: "600px",
                        title: "添加菜单权限",
                        visible: e.newUserDialog
                    }, on: {
                        "update:visible": function (t) {
                            e.newUserDialog = t
                        }
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("菜单名称")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("权限类型")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("权限代码关键字")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("排序号")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("div", {
                    staticClass: "dialog-footer",
                    attrs: {slot: "footer"},
                    slot: "footer"
                }, [a("el-button", {
                    on: {
                        click: function (t) {
                            e.newUserDialog = !1
                        }
                    }
                }, [e._v("清 空")]), e._v(" "), a("el-button", {
                    attrs: {type: "primary"}, on: {
                        click: function (t) {
                            e.newUserDialog = !1
                        }
                    }
                }, [e._v("确 定")])], 1)], 1)], 1)
            }, staticRenderFns: []
        };
        var E = a("VU/8")(N, j, !1, function (e) {
            a("eGeP")
        }, "data-v-4f272c24", null).exports, R = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {
                    staticStyle: {
                        padding: "5px 15px",
                        "box-sizing": "border-box"
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 1}}, [e._v("服务器:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.value, callback: function (t) {
                            e.value = t
                        }, expression: "value"
                    }
                }, e._l(e.servers, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-row", {
                    attrs: {
                        gutter: 20,
                        type: "flex",
                        align: "middle"
                    }
                }, [a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 2}
                }, [e._v("服务器")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 3}
                }, [e._v("\n            牛逼服务器\n        ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 5}
                }, [e._v("\n            开服日期\n        ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 6}
                }, [e._v("\n            2018-07-29 10:00:00\n        ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 5}
                }, [e._v("\n            开服天数\n        ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 3}
                }, [e._v("\n            3\n        ")])], 1), e._v(" "), a("el-row", {
                    attrs: {
                        gutter: 20,
                        type: "flex",
                        align: "middle"
                    }
                }, [a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 2}
                }, [e._v("总注册角色数")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 3}
                }, [e._v("\n            1234567894152\n        ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 5}
                }, [e._v("\n            当前在线角色数\n        ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 6}
                }, [e._v("\n            2018-07-29 10:00:00\n        ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 5}
                }, [e._v("\n            当前活跃用户\n        ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 3}
                }, [e._v("\n            30000000000\n        ")])], 1), e._v(" "), a("el-row", {
                    attrs: {
                        gutter: 20,
                        type: "flex",
                        align: "middle"
                    }
                }, [a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 2}
                }, [e._v("总充值金额")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 3}
                }, [e._v("\n            123465.00\n        ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 5}
                }, [e._v("\n            总充值人数\n        ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 6}
                }, [e._v("\n            10\n        ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 5}
                }, [e._v("\n            arpu值\n        ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 3}
                }, [e._v("\n            87.33\n        ")])], 1)], 1)
            }, staticRenderFns: []
        };
        var $ = a("VU/8")({
            name: "overview", data: function () {
                return {servers: [{value: "选项1", label: "牛逼服务器"}], value: ""}
            }
        }, R, !1, function (e) {
            a("y2tm")
        }, "data-v-cefd34ae", null).exports, M = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("el-tabs", {
                    staticClass: "content",
                    attrs: {type: "border-card", value: "user"}
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("日期:")]), e._v(" "), a("el-col", {attrs: {span: 8}}, [a("el-date-picker", {
                    attrs: {
                        type: "date",
                        placeholder: "选择日期"
                    }, model: {
                        value: e.time1, callback: function (t) {
                            e.time1 = t
                        }, expression: "time1"
                    }
                })], 1)], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "用户类",
                        name: "user"
                    }
                }, [a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "online",
                        label: "平均在线用户数"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "time",
                        label: "平均游戏时长"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "launch",
                        label: "平均登录次数"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "active",
                        label: "活跃用户"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "active1",
                        label: "激活用户"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "registered",
                        label: "注册用户"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "peakOnline",
                        label: "峰值在线"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "secondStay",
                        label: "次留"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "threeStay",
                        label: "3日留存"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "sevenStay",
                        label: "7日留存"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "thirtyStay",
                        label: "30日留存"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "收入类",
                        name: "income"
                    }
                }, [a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "payAp",
                        label: "付费ap"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "newAp",
                        label: "新增ap"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "day",
                        label: "日收入"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "dayPay",
                        label: "日付费率"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "newPayPlayer",
                        label: "新增付费玩家"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "payPlayer",
                        label: "付费玩家"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "渠道统计",
                        name: "channel"
                    }
                }, [a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "name",
                        label: "渠道名称"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "newPlayer",
                        label: "新增用户"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "activePlayer",
                        label: "活跃用户"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "rechargePlayer",
                        label: "充值用户"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "payLv",
                        label: "付费率"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "ap",
                        label: "ap值"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "secondStay",
                        label: "次留"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "threeStay",
                        label: "3日留存"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "sevenStay",
                        label: "周留存"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)], 1)
            }, staticRenderFns: []
        };
        var F = a("VU/8")({
            name: "daily", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({one: t, count: 0});
                return {
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    tableData: e.slice(0, 10),
                    channel: [{value: "选项1", label: "channel1"}],
                    channelValue: "",
                    time1: ""
                }
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, M, !1, function (e) {
            a("SxxJ")
        }, "data-v-3f633a45", null).exports, T = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {
                    staticStyle: {
                        padding: "5px 15px",
                        "box-sizing": "border-box"
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择渠道"},
                    model: {
                        value: e.channelValue, callback: function (t) {
                            e.channelValue = t
                        }, expression: "channelValue"
                    }
                }, e._l(e.channel, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-table", {
                    staticStyle: {width: "100%"},
                    attrs: {data: e.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "date",
                        label: "注册时间"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "device",
                        label: "注册设备"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "300",
                        align: "center",
                        prop: "name",
                        label: "注册玩家"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var L = a("VU/8")({
            name: "new-player", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({date: 20170102131248, device: "ios", name: "九伐中原"});
                return {tableData: e.slice(0, 10), page_size: 10, current_page: 1, item: e}
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, T, !1, function (e) {
            a("CeZa")
        }, "data-v-0a553e28", null).exports, O = {
            name: "active-player", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({date: "2018-8-4 14:35", retain: Math.pow(t, 2)});
                return {
                    tableData: e.slice(0, 10),
                    channel: [{value: "选项1", label: "channel1"}],
                    channelValue: "",
                    page_size: 10,
                    current_page: 1,
                    item: e
                }
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, A = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {
                    staticStyle: {
                        padding: "5px 15px",
                        "box-sizing": "border-box"
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择渠道"},
                    model: {
                        value: e.channelValue, callback: function (t) {
                            e.channelValue = t
                        }, expression: "channelValue"
                    }
                }, e._l(e.channel, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-table", {
                    staticStyle: {width: "100%"},
                    attrs: {data: e.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "date",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "retain",
                        label: "活跃玩家"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var B = a("VU/8")(O, A, !1, function (e) {
            a("r2Q6")
        }, "data-v-361c2e28", null).exports, q = {
            name: "active-player", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({
                    date: "2018-8-4 14:35",
                    new_player: Math.pow(t, 2),
                    retain: t + "%"
                });
                return {
                    tableData: e.slice(0, 10),
                    channel: [{value: "选项1", label: "channel1"}],
                    channelValue: "",
                    page_size: 10,
                    current_page: 1,
                    item: e
                }
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, J = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {
                    staticStyle: {
                        padding: "5px 15px",
                        "box-sizing": "border-box"
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择渠道"},
                    model: {
                        value: e.channelValue, callback: function (t) {
                            e.channelValue = t
                        }, expression: "channelValue"
                    }
                }, e._l(e.channel, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-table", {
                    staticStyle: {width: "100%"},
                    attrs: {data: e.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "date",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "new_player",
                        label: "留存"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "retain",
                        label: "7留"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var H = a("VU/8")(q, J, !1, function (e) {
            a("W0FJ")
        }, "data-v-2b9240d0", null).exports, K = {
            name: "loss-player", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({
                    date: "2018-8-4 14:35",
                    new_player: Math.pow(t, 2),
                    retain: t + "%"
                });
                return {
                    tableData: e.slice(0, 10),
                    channel: [{value: "选项1", label: "channel1"}],
                    channelValue: "",
                    page_size: 10,
                    current_page: 1,
                    item: e
                }
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, W = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {
                    staticStyle: {
                        padding: "5px 15px",
                        "box-sizing": "border-box"
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择渠道"},
                    model: {
                        value: e.channelValue, callback: function (t) {
                            e.channelValue = t
                        }, expression: "channelValue"
                    }
                }, e._l(e.channel, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-table", {
                    staticStyle: {width: "100%"},
                    attrs: {data: e.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "date",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "new_player",
                        label: "新增用户"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "retain",
                        label: "流失用户"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var G = a("VU/8")(K, W, !1, function (e) {
            a("X1ur")
        }, "data-v-35ceb3f0", null).exports, X = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("el-tabs", {
                    staticClass: "content",
                    attrs: {type: "border-card", value: "day"}
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择渠道"},
                    model: {
                        value: e.channelValue, callback: function (t) {
                            e.channelValue = t
                        }, expression: "channelValue"
                    }
                }, e._l(e.channel, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "登录天数",
                        name: "day"
                    }
                }, [a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "one",
                        label: "登录天数"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "用户数量"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "流失等级",
                        name: "rank"
                    }
                }, [a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "one",
                        label: "流失等级"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "用户数量"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "流失关卡",
                        name: "level"
                    }
                }, [a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "one",
                        label: "流失关卡"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "用户数量"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)], 1)
            }, staticRenderFns: []
        };
        var Z = a("VU/8")({
            name: "admin-system", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({one: t, count: 0});
                return {
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    tableData: e.slice(0, 10),
                    channel: [{value: "选项1", label: "channel1"}],
                    channelValue: ""
                }
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, X, !1, function (e) {
            a("Omf/")
        }, "data-v-1f70671f", null).exports, Q = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {
                    staticStyle: {
                        padding: "5px 15px",
                        "box-sizing": "border-box"
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 13}}, [e._v("当前在线用户: 123456")]), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择渠道"},
                    model: {
                        value: e.channelValue, callback: function (t) {
                            e.channelValue = t
                        }, expression: "channelValue"
                    }
                }, e._l(e.channel, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 1}}, [e._v("日期:")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-date-picker", {
                    attrs: {
                        type: "date",
                        placeholder: "选择日期"
                    }, model: {
                        value: e.time1, callback: function (t) {
                            e.time1 = t
                        }, expression: "time1"
                    }
                })], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择渠道"},
                    model: {
                        value: e.channelValue, callback: function (t) {
                            e.channelValue = t
                        }, expression: "channelValue"
                    }
                }, e._l(e.channel, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-table", {
                    staticStyle: {width: "100%"},
                    attrs: {data: e.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "date",
                        label: "时间"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "onlineUser",
                        label: "在线用户"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var Y = a("VU/8")({
            name: "online-user", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({date: "2018-8-4 14:35", onlineUser: t + "%"});
                return {
                    tableData: e.slice(0, 10),
                    channel: [{value: "选项1", label: "channel1"}],
                    channelValue: "",
                    page_size: 10,
                    current_page: 1,
                    item: e
                }
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, Q, !1, function (e) {
            a("u9Y3")
        }, "data-v-3f94e4cf", null).exports, ee = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {
                    staticStyle: {
                        padding: "5px 15px",
                        "box-sizing": "border-box"
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择区服"},
                    model: {
                        value: e.communityValue, callback: function (t) {
                            e.communityValue = t
                        }, expression: "communityValue"
                    }
                }, e._l(e.community, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-table", {
                    staticStyle: {width: "100%"},
                    attrs: {data: e.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "vip",
                        label: "vip区间"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "number_of_people",
                        label: "在线人数"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var te = a("VU/8")({
            name: "active-player", data: function () {
                for (var e = [], t = 0; t < 20; t++) e.push({vip: "vip" + t, number_of_people: t * t});
                return {
                    tableData: e.slice(0, 10),
                    community: [{value: "选项1", label: "channel1"}],
                    communityValue: "",
                    page_size: 10,
                    current_page: 1,
                    item: e
                }
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, ee, !1, function (e) {
            a("K/X1")
        }, "data-v-2e0b1841", null).exports, ae = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {
                    staticStyle: {
                        padding: "5px 15px",
                        "box-sizing": "border-box"
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择区服"},
                    model: {
                        value: e.communityValue, callback: function (t) {
                            e.communityValue = t
                        }, expression: "communityValue"
                    }
                }, e._l(e.community, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-table", {
                    staticStyle: {width: "100%"},
                    attrs: {data: e.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "rank",
                        label: "等级区间"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "number_of_rank",
                        label: "数量"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var ne = a("VU/8")({
            name: "active-player", data: function () {
                for (var e = [], t = 0; t < 20; t++) e.push({rank: "等级" + t, number_of_rank: t * t});
                return {
                    tableData: e.slice(0, 10),
                    community: [{value: "选项1", label: "channel1"}],
                    communityValue: "",
                    page_size: 10,
                    current_page: 1,
                    item: e
                }
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, ae, !1, function (e) {
            a("S1wc")
        }, "data-v-13fea2ac", null).exports, le = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {
                    staticStyle: {
                        padding: "5px 15px",
                        "box-sizing": "border-box"
                    }
                }, [a("el-table", {
                    staticStyle: {width: "100%"},
                    attrs: {data: e.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "community",
                        label: "区服"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "number_of_community",
                        label: "帮派数量"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var re = a("VU/8")({
            name: "active-player", data: function () {
                for (var e = [], t = 0; t < 20; t++) e.push({community: "区服" + t, number_of_community: t * t});
                return {tableData: e.slice(0, 10), page_size: 10, current_page: 1, item: e}
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, le, !1, function (e) {
            a("JG7b")
        }, "data-v-a7866d1e", null).exports, ie = {
            name: "task-information", data: function () {
                for (var e = [], t = 0; t < 20; t++) e.push({list: t, number: Math.pow(t, t)});
                return {
                    tableData: e.slice(0, 10),
                    community: [{value: "选项1", label: "channel1"}],
                    communityValue: "",
                    page_size: 10,
                    current_page: 1,
                    item: e
                }
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, se = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {
                    staticStyle: {
                        padding: "5px 15px",
                        "box-sizing": "border-box"
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择区服"},
                    model: {
                        value: e.communityValue, callback: function (t) {
                            e.communityValue = t
                        }, expression: "communityValue"
                    }
                }, e._l(e.community, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-table", {
                    staticStyle: {width: "100%"},
                    attrs: {data: e.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "list",
                        label: "任务列表"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "number",
                        label: "当前进度人数"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var oe = a("VU/8")(ie, se, !1, function (e) {
            a("LVDI")
        }, "data-v-62424cc3", null).exports, ce = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {
                    staticStyle: {
                        padding: "5px 15px",
                        "box-sizing": "border-box"
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择区服"},
                    model: {
                        value: e.communityValue, callback: function (t) {
                            e.communityValue = t
                        }, expression: "communityValue"
                    }
                }, e._l(e.community, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("日期:")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-date-picker", {
                    attrs: {
                        type: "date",
                        placeholder: "选择日期"
                    }, model: {
                        value: e.time1, callback: function (t) {
                            e.time1 = t
                        }, expression: "time1"
                    }
                })], 1)], 1), e._v(" "), a("el-table", {
                    staticStyle: {width: "100%"},
                    attrs: {data: e.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "name",
                        label: "物品"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "output",
                        label: "产出"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "expends",
                        label: "消耗"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var pe = a("VU/8")({
            name: "output-expends", data: function () {
                for (var e = [], t = 0; t < 20; t++) e.push({name: "生命宝石" + t, output: 2 * t, expends: t});
                return {
                    tableData: e.slice(0, 10),
                    community: [{value: "选项1", label: "channel1"}],
                    communityValue: "",
                    page_size: 10,
                    current_page: 1,
                    item: e
                }
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, ce, !1, function (e) {
            a("Fied")
        }, "data-v-d3a96cce", null).exports, ue = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("el-tabs", {
                    staticClass: "content",
                    attrs: {type: "border-card", value: "power"}
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择渠道"},
                    model: {
                        value: e.channelValue, callback: function (t) {
                            e.channelValue = t
                        }, expression: "channelValue"
                    }
                }, e._l(e.channel, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "势力榜",
                        name: "power"
                    }
                }, [a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "one",
                        label: "排名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "玩家名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "势力值"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "玩家获得的所属区服"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "关卡榜",
                        name: "level"
                    }
                }, [a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "one",
                        label: "排名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "玩家名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "势力值"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "玩家获得的所属区服"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "亲密榜",
                        name: "love"
                    }
                }, [a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "one",
                        label: "排名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "玩家名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "势力值"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "玩家获得的所属区服"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "帮派榜",
                        name: "gang"
                    }
                }, [a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "one",
                        label: "排名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "玩家名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "势力值"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "帮派等级"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "所属区服"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)], 1)
            }, staticRenderFns: []
        };
        var de = a("VU/8")({
            name: "rank-information", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({one: t, count: 0});
                return {
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    tableData: e.slice(0, 10),
                    channel: [{value: "选项1", label: "channel1"}],
                    channelValue: ""
                }
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, ue, !1, function (e) {
            a("D0cx")
        }, "data-v-09f64f57", null).exports, he = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {
                    staticStyle: {
                        padding: "5px 15px",
                        "box-sizing": "border-box"
                    }
                }, [a("el-table", {
                    attrs: {
                        data: e.tableData,
                        stripe: "",
                        border: !0
                    }
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "name",
                        label: "渠道名称"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "activation",
                        label: "激活玩家"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "registered",
                        label: "注册玩家"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "active",
                        label: "活跃玩家"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "recharge",
                        label: "充值玩家"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "secondStay",
                        label: "次留"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "threeStay",
                        label: "3留"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "sevenStay",
                        label: "7留"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "PaymentRate",
                        label: "付费率"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "rechargeAmount",
                        label: "充值金额"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "PaymentAp",
                        label: "付费ap"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "registeredAp",
                        label: "注册ap"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var ve = a("VU/8")({
            name: "channel-data", data: function () {
                for (var e = [], t = 0; t < 20; t++) e.push({
                    name: "渠道" + t,
                    activation: t * (t + 11),
                    registered: t * (t + 10),
                    active: t * (t + 9),
                    recharge: t * (t + 8),
                    secondStay: t * (t + 7),
                    threeStay: t * (t + 6),
                    sevenStay: t * (t + 5),
                    PaymentRate: t * (t + 4),
                    rechargeAmount: t * t,
                    PaymentAp: t * (t + 3),
                    registeredAp: t * (t + 2)
                });
                return {tableData: e.slice(0, 10), page_size: 10, current_page: 1, item: e}
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, he, !1, function (e) {
            a("JOUd")
        }, "data-v-4525147a", null).exports, ge = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {
                    staticStyle: {
                        padding: "5px 15px",
                        "box-sizing": "border-box"
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择区服"},
                    model: {
                        value: e.channelValue, callback: function (t) {
                            e.channelValue = t
                        }, expression: "channelValue"
                    }
                }, e._l(e.channel, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-table", {
                    staticStyle: {width: "100%"},
                    attrs: {data: e.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "rankList",
                        label: "等级区间"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "人数"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var me = a("VU/8")({
            name: "user-rank", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({rankList: "等级" + t, count: t});
                return {
                    tableData: e.slice(0, 10),
                    channel: [{value: "选项1", label: "channel1"}],
                    channelValue: "",
                    page_size: 10,
                    current_page: 1,
                    item: e
                }
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, ge, !1, function (e) {
            a("S3NL")
        }, "data-v-7e2ee11f", null).exports, _e = {
            name: "activity-people-number", data: function () {
                for (var e = [], t = 0; t < 12; t++) e.push({number: t, count: t * (20 - t), expend: Math.pow(t, t)});
                return {
                    tableData: e.slice(0, 10),
                    channel: [{value: "选项1", label: "channel1"}],
                    channelValue: "",
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    time1: "",
                    time2: ""
                }
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, be = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {
                    staticStyle: {
                        padding: "5px 15px",
                        "box-sizing": "border-box"
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择区服"},
                    model: {
                        value: e.channelValue, callback: function (t) {
                            e.channelValue = t
                        }, expression: "channelValue"
                    }
                }, e._l(e.channel, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 2}}, [e._v("时间段:")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-date-picker", {
                    attrs: {
                        type: "date",
                        placeholder: "选择日期"
                    }, model: {
                        value: e.time1, callback: function (t) {
                            e.time1 = t
                        }, expression: "time1"
                    }
                }), e._v("\n            ~\n            "), a("el-date-picker", {
                    attrs: {
                        type: "date",
                        placeholder: "选择日期"
                    }, model: {
                        value: e.time2, callback: function (t) {
                            e.time2 = t
                        }, expression: "time2"
                    }
                })], 1)], 1), e._v(" "), a("el-table", {
                    staticStyle: {width: "100%"},
                    attrs: {data: e.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "number",
                        label: "活动编号"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "活动参与玩家数"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "expend",
                        label: "活动消耗元宝"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var fe = a("VU/8")(_e, be, !1, function (e) {
            a("9zCC")
        }, "data-v-02abf34d", null).exports, ye = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {
                    staticStyle: {
                        padding: "5px 15px",
                        "box-sizing": "border-box"
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择区服"},
                    model: {
                        value: e.channelValue, callback: function (t) {
                            e.channelValue = t
                        }, expression: "channelValue"
                    }
                }, e._l(e.channel, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 2}}, [e._v("时间段:")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-date-picker", {
                    attrs: {
                        type: "date",
                        placeholder: "选择日期"
                    }, model: {
                        value: e.time1, callback: function (t) {
                            e.time1 = t
                        }, expression: "time1"
                    }
                }), e._v("\n            ~\n            "), a("el-date-picker", {
                    attrs: {
                        type: "date",
                        placeholder: "选择日期"
                    }, model: {
                        value: e.time2, callback: function (t) {
                            e.time2 = t
                        }, expression: "time2"
                    }
                })], 1)], 1), e._v(" "), a("el-table", {
                    staticStyle: {width: "100%"},
                    attrs: {data: e.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "output",
                        label: "产出"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "expends",
                        label: "消耗"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var we = a("VU/8")({
            name: "activity-output-expends", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({output: t, expends: t});
                return {
                    tableData: e.slice(0, 10),
                    channel: [{value: "选项1", label: "channel1"}],
                    channelValue: "",
                    page_size: 10,
                    current_page: 1,
                    item: e
                }
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, ye, !1, function (e) {
            a("ogPK")
        }, "data-v-d7594cda", null).exports, xe = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("el-tabs", {
                    staticClass: "content",
                    attrs: {type: "border-card", value: "gang"}
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择区服"},
                    model: {
                        value: e.channelValue, callback: function (t) {
                            e.channelValue = t
                        }, expression: "channelValue"
                    }
                }, e._l(e.channel, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 2}}, [e._v("时间段:")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-date-picker", {
                    attrs: {
                        type: "date",
                        placeholder: "选择日期"
                    }, model: {
                        value: e.time1, callback: function (t) {
                            e.time1 = t
                        }, expression: "time1"
                    }
                }), e._v("\n            ~\n            "), a("el-date-picker", {
                    attrs: {
                        type: "date",
                        placeholder: "选择日期"
                    }, model: {
                        value: e.time2, callback: function (t) {
                            e.time2 = t
                        }, expression: "time2"
                    }
                })], 1)], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "帮派排行",
                        name: "gang"
                    }
                }, [a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "one",
                        label: "帮派排行"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "name",
                        label: "帮派名称"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "帮派区服"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "个人排行",
                        name: "rank"
                    }
                }, [a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "one",
                        label: "个人排行"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "name",
                        label: "玩家名称"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "区服"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)], 1)
            }, staticRenderFns: []
        };
        var ze = a("VU/8")({
            name: "admin-system", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({one: t, count: 0, name: "猪猪侠"});
                return {
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    tableData: e.slice(0, 10),
                    channel: [{value: "选项1", label: "channel1"}],
                    channelValue: ""
                }
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, xe, !1, function (e) {
            a("c5tj")
        }, "data-v-3d174416", null).exports, Ce = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {
                    staticStyle: {
                        padding: "5px 15px",
                        "box-sizing": "border-box"
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("时间段:")]), e._v(" "), a("el-col", {attrs: {span: 8}}, [a("el-date-picker", {
                    attrs: {
                        type: "date",
                        placeholder: "选择日期"
                    }, model: {
                        value: e.time1, callback: function (t) {
                            e.time1 = t
                        }, expression: "time1"
                    }
                }), e._v("\n            ~\n            "), a("el-date-picker", {
                    attrs: {
                        type: "date",
                        placeholder: "选择日期"
                    }, model: {
                        value: e.time2, callback: function (t) {
                            e.time2 = t
                        }, expression: "time2"
                    }
                })], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择渠道"},
                    model: {
                        value: e.channelValue, callback: function (t) {
                            e.channelValue = t
                        }, expression: "channelValue"
                    }
                }, e._l(e.channel, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-table", {
                    staticStyle: {width: "100%"},
                    attrs: {data: e.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "date",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "people_number",
                        label: "充值人数"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "people_number1",
                        label: "首充人数"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "充值次数"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count1",
                        label: "首充次数"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "amount",
                        label: "充值金额"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "amount1",
                        label: "首充金额"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "yuanbao",
                        label: "充值元宝"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "yuanbao1",
                        label: "首充元宝"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "arpu",
                        label: "ARPU"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "arpu1",
                        label: "首充ARPU"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var ke = a("VU/8")({
            name: "loss-player", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({
                    date: "2018-8-4 14:35",
                    people_number: t + 1,
                    people_number1: t + 2,
                    count: t + 1,
                    count1: t + 2,
                    amount: t + 1,
                    amount1: t + 2,
                    yuanbao: t + 1,
                    yuanbao1: t + 2,
                    arpu: t + 1,
                    arpu1: t + 2
                });
                return {
                    tableData: e.slice(0, 10),
                    channel: [{value: "选项1", label: "channel1"}],
                    channelValue: "",
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    time1: "",
                    time2: ""
                }
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, Ce, !1, function (e) {
            a("GbUp")
        }, "data-v-16534002", null).exports, De = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {
                    staticStyle: {
                        padding: "5px 15px",
                        "box-sizing": "border-box"
                    }
                }, [a("el-table", {
                    staticStyle: {width: "100%"},
                    attrs: {data: e.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "billingPoint",
                        label: "计费点"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "购买人数"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count1",
                        label: "首充购买人数"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var Se = a("VU/8")({
            name: "user-rank", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({billingPoint: "计费点" + t, count: t, count1: t});
                return {
                    tableData: e.slice(0, 10),
                    channel: [{value: "选项1", label: "channel1"}],
                    channelValue: "",
                    page_size: 10,
                    current_page: 1,
                    item: e
                }
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, De, !1, function (e) {
            a("HhBa")
        }, "data-v-7fadc6b6", null).exports, Ie = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {
                    staticStyle: {
                        padding: "5px 15px",
                        "box-sizing": "border-box"
                    }
                }, [a("el-table", {
                    staticStyle: {width: "100%"},
                    attrs: {data: e.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "community",
                        label: "区服"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "number",
                        label: "活动编号"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {width: "250", align: "center", label: "开始时间"},
                    scopedSlots: e._u([{
                        key: "default", fn: function (t) {
                            return [a("el-date-picker", {
                                attrs: {type: "datetime", placeholder: "选择日期"},
                                model: {
                                    value: e.time1, callback: function (t) {
                                        e.time1 = t
                                    }, expression: "time1"
                                }
                            })]
                        }
                    }])
                }), e._v(" "), a("el-table-column", {
                    attrs: {width: "250", align: "center", label: "结束时间"},
                    scopedSlots: e._u([{
                        key: "default", fn: function (t) {
                            return [a("el-date-picker", {
                                attrs: {type: "datetime", placeholder: "选择日期"},
                                model: {
                                    value: e.time2, callback: function (t) {
                                        e.time2 = t
                                    }, expression: "time2"
                                }
                            })]
                        }
                    }])
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "350",
                        align: "center",
                        prop: "operate",
                        label: "操作选项"
                    }, scopedSlots: e._u([{
                        key: "default", fn: function (t) {
                            return [a("el-button", {
                                attrs: {
                                    size: "mini",
                                    type: "primary"
                                }
                            }, [e._v("开启")]), e._v(" "), a("el-button", {
                                attrs: {
                                    size: "mini",
                                    type: "danger"
                                }
                            }, [e._v("删除")])]
                        }
                    }])
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var Ue = a("VU/8")({
            name: "game-open", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({community: "区服" + (t + 1), number: "wxc49" + t});
                return {time1: "", time2: "", tableData: e.slice(0, 10), page_size: 10, current_page: 1, item: e}
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, Ie, !1, function (e) {
            a("9VM1")
        }, "data-v-00d8c9dc", null).exports, Ve = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {attrs: {align: "center"}}, [a("el-row", {
                    staticStyle: {"margin-top": "50px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("邮件标题")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("邮件内容")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-input", {
                    attrs: {
                        type: "textarea",
                        placeholder: "请输入内容",
                        rows: 10
                    }
                })], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("道具")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("div", {staticStyle: {"margin-top": "20px"}}, [a("el-button", [e._v("清 空")]), e._v(" "), a("el-button", {attrs: {type: "primary"}}, [e._v("确 定")])], 1)], 1)
            }, staticRenderFns: []
        };
        var Pe = a("VU/8")({name: "system-mail"}, Ve, !1, function (e) {
            a("gxZj")
        }, "data-v-2e3f04c9", null).exports, Ne = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {attrs: {align: "center"}}, [a("el-row", {
                    staticStyle: {"margin-top": "50px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("公告1")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("标题")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-input", {attrs: {placeholder: "请输入标题"}})], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("内容")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-input", {
                    attrs: {
                        type: "textarea",
                        placeholder: "请输入内容",
                        rows: 10
                    }
                })], 1)], 1), e._v(" "), a("div", {staticStyle: {"margin-top": "20px"}}, [a("el-button", [e._v("清 空")]), e._v(" "), a("el-button", {attrs: {type: "primary"}}, [e._v("确 定")])], 1)], 1)
            }, staticRenderFns: []
        };
        var je = a("VU/8")({name: "inform-management"}, Ne, !1, function (e) {
            a("oJEQ")
        }, "data-v-30560a41", null).exports, Ee = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {attrs: {align: "center"}}, [a("el-row", {
                    staticStyle: {"margin-top": "50px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("区服")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("玩家id")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-input", {
                    attrs: {
                        placeholder: "请输入内容",
                        rows: 10
                    }
                })], 1)], 1), e._v(" "), a("div", {staticStyle: {"margin-top": "20px"}}, [a("el-button", [e._v("清 空")]), e._v(" "), a("el-button", {attrs: {type: "primary"}}, [e._v("查 询")])], 1)], 1)
            }, staticRenderFns: []
        };
        var Re = a("VU/8")({name: "chat-monitor"}, Ee, !1, function (e) {
            a("a2N3")
        }, "data-v-2e0cfe1e", null).exports, $e = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {attrs: {align: "center"}}, [a("el-row", {
                    staticStyle: {"margin-top": "50px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("区服")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("玩家id")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-input", {
                    attrs: {
                        placeholder: "请输入内容",
                        rows: 10
                    }
                })], 1)], 1), e._v(" "), a("div", {staticStyle: {"margin-top": "20px"}}, [a("el-button", {attrs: {type: "primary"}}, [e._v("查 询")]), e._v(" "), a("el-button", {attrs: {type: "danger"}}, [e._v("修 改")])], 1)], 1)
            }, staticRenderFns: []
        };
        var Me = a("VU/8")({name: "chat-monitor"}, $e, !1, function (e) {
            a("BcMH")
        }, "data-v-94c24ed6", null).exports, Fe = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {staticClass: "ltv"}, [a("el-row", {staticClass: "top"}, [a("el-button", {
                    attrs: {
                        type: "success",
                        size: "small"
                    }, on: {
                        click: function (t) {
                            return t.stopPropagation(), e.newUser(t)
                        }
                    }
                }, [e._v("筛选")]), e._v(" "), a("el-button", {
                    attrs: {
                        type: "warning",
                        size: "small"
                    }
                }, [a("i", {staticClass: "el-icon-share"}), e._v("导出 Excel")])], 1), e._v(" "), a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.ltvData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        align: "center",
                        type: "selection",
                        width: "36"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "200",
                        align: "center",
                        prop: "time",
                        label: "时间"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "one",
                        label: "1日LTV"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "two",
                        label: "2日LTV"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "three",
                        label: "3日LTV"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "four",
                        label: "4日LTV"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "five",
                        label: "5日LTV"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "six",
                        label: "6日LTV"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "seven",
                        label: "7日LTV"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "200",
                        align: "center",
                        prop: "fifteen",
                        label: "15日LTV"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "200",
                        align: "center",
                        prop: "thirty",
                        label: "30日LTV"
                    }
                })], 1)], 1)
            }, staticRenderFns: []
        };
        var Te = a("VU/8")({
            name: "ltv", data: function () {
                return {
                    ltvData: [{
                        time: "2018-08-27",
                        one: "0",
                        two: "0",
                        three: "0",
                        four: "0",
                        five: "0",
                        six: "0",
                        seven: "0",
                        fifteen: "0",
                        thirty: "0"
                    }]
                }
            }
        }, Fe, !1, function (e) {
            a("1kuR")
        }, "data-v-e187ed72", null).exports, Le = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {staticClass: "recharge", attrs: {align: "center"}}, [a("el-row", {
                    staticClass: "item",
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("平台")]), e._v(" "), a("el-col", {
                    attrs: {
                        align: "left",
                        span: 6
                    }
                }, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.userName.select, callback: function (t) {
                            e.$set(e.userName, "select", t)
                        }, expression: "userName.select"
                    }
                }, e._l(e.userName.options, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-row", {
                    staticClass: "item",
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("服务器")]), e._v(" "), a("el-col", {
                    attrs: {
                        align: "left",
                        span: 6
                    }
                }, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.server.select, callback: function (t) {
                            e.$set(e.server, "select", t)
                        }, expression: "server.select"
                    }
                }, e._l(e.server.options, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-row", {
                    staticClass: "item",
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("充值物品")]), e._v(" "), a("el-col", {
                    attrs: {
                        align: "left",
                        span: 6
                    }
                }, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.recharge.select, callback: function (t) {
                            e.$set(e.recharge, "select", t)
                        }, expression: "recharge.select"
                    }
                }, e._l(e.recharge.options, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-row", {
                    staticClass: "item",
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("角色名")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("el-row", {
                    staticClass: "item",
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("订单ID")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("div", {staticStyle: {"margin-top": "20px"}}, [a("el-button", [e._v("清 空")]), e._v(" "), a("el-button", {attrs: {type: "primary"}}, [e._v("确 定")])], 1)], 1)
            }, staticRenderFns: []
        };
        var Oe = a("VU/8")({
            name: "recharge", data: function () {
                return {
                    userName: {select: "全部平台", options: [{value: "选项1", label: "全部平台"}]},
                    server: {select: "全部服务器", options: [{value: "选项1", label: "全部服务器"}]},
                    recharge: {select: "月卡", options: [{value: "选项1", label: "月卡"}]}
                }
            }
        }, Le, !1, function (e) {
            a("ks9u")
        }, "data-v-4651a4aa", null).exports, Ae = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {
                    staticStyle: {
                        padding: "5px 15px",
                        "box-sizing": "border-box"
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("时间段:")]), e._v(" "), a("el-col", {attrs: {span: 8}}, [a("el-date-picker", {
                    attrs: {
                        type: "date",
                        placeholder: "选择日期"
                    }, model: {
                        value: e.time1, callback: function (t) {
                            e.time1 = t
                        }, expression: "time1"
                    }
                }), e._v("\n      ~\n      "), a("el-date-picker", {
                    attrs: {type: "date", placeholder: "选择日期"},
                    model: {
                        value: e.time2, callback: function (t) {
                            e.time2 = t
                        }, expression: "time2"
                    }
                })], 1)], 1), e._v(" "), a("el-table", {
                    staticStyle: {width: "100%"},
                    attrs: {data: e.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "date",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "people_number",
                        label: "充值平台"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "people_number1",
                        label: "充值服务器"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "充值物品"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count1",
                        label: "角色名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "amount",
                        label: "订单ID"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.item.length
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var Be = a("VU/8")({
            name: "loss-player", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({
                    date: "2018-8-4 14:35",
                    people_number: t + 1,
                    people_number1: t + 2,
                    count: t + 1,
                    count1: t + 2,
                    amount: t + 1,
                    amount1: t + 2,
                    yuanbao: t + 1,
                    yuanbao1: t + 2,
                    arpu: t + 1,
                    arpu1: t + 2
                });
                return {tableData: e.slice(0, 10), page_size: 10, current_page: 1, item: e, time1: "", time2: ""}
            }, methods: {
                handleCurrentChange: function (e) {
                    this.current_page = e;
                    var t = this.page_size * (e - 1);
                    this.tableData = this.item.slice(t, t + this.page_size)
                }, handleSizeChange: function (e) {
                    this.page_size = e;
                    var t = e * (this.current_page - 1);
                    this.tableData = this.item.slice(t, t + e)
                }
            }
        }, Ae, !1, function (e) {
            a("aAoS")
        }, "data-v-8e98af70", null).exports;
        n.default.use(i.a);
        var qe = new i.a({
            routes: [{
                path: "/",
                name: "management",
                component: d,
                children: [{
                    path: "/management/rechargeLog",
                    name: "rechargeLog",
                    component: Be
                }, {path: "/management/recharge", name: "recharge", component: Oe}, {
                    path: "/management/ltv",
                    name: "ltv",
                    component: Te
                }, {
                    path: "/management/playerInfoSearch",
                    name: "playerInfoSearch",
                    component: Me
                }, {
                    path: "/management/chatMonitor",
                    name: "chatMonitor",
                    component: Re
                }, {
                    path: "/management/informManagement",
                    name: "informManagement",
                    component: je
                }, {path: "/management/systemMail", name: "systemMail", component: Pe}, {
                    path: "/management/gameOpen",
                    name: "gameOpen",
                    component: Ue
                }, {
                    path: "/management/rankInformation",
                    name: "rankInformation",
                    component: de
                }, {
                    path: "/management/outputExpends",
                    name: "outputExpends",
                    component: pe
                }, {
                    path: "/management/taskInformation",
                    name: "taskInformation",
                    component: oe
                }, {path: "/management/daily", name: "daily", component: F}, {
                    path: "/management/listManagement",
                    name: "listManagement",
                    component: E
                }, {
                    path: "/management/billingPointAnalysis",
                    name: "billingPointAnalysis",
                    component: Se
                }, {
                    path: "/management/rechargeEveryDay",
                    name: "rechargeEveryDay",
                    component: ke
                }, {
                    path: "/management/activityRank",
                    name: "activityRank",
                    component: ze
                }, {
                    path: "/management/activityOutputExpends",
                    name: "activityOutputExpends",
                    component: we
                }, {
                    path: "/management/activityPeopleNumber",
                    name: "activityPeopleNumber",
                    component: fe
                }, {
                    path: "/management/loosLvPlayer",
                    name: "loosLvPlayer",
                    component: Z
                }, {
                    path: "/management/loosPlayer",
                    name: "loosPlayer",
                    component: G
                }, {
                    path: "/management/gameUserRank",
                    name: "gameUserRank",
                    component: me
                }, {
                    path: "/management/channelData",
                    name: "channelData",
                    component: ve
                }, {
                    path: "/management/gameBehaviorNumber",
                    name: "gameBehaviorNumber",
                    component: re
                }, {
                    path: "/management/gameBehaviorRank",
                    name: "gameBehaviorRank",
                    component: ne
                }, {
                    path: "/management/gameBehaviorVip",
                    name: "gameBehaviorVip",
                    component: te
                }, {
                    path: "/management/onlineUser",
                    name: "onlineUser",
                    component: Y
                }, {
                    path: "/management/admin-management",
                    name: "adminSystem",
                    component: C
                }, {path: "/management/role-management", name: "roleManagement", component: P}, {
                    path: "/",
                    name: "overview",
                    component: $
                }, {path: "/management/newPlayer", name: "newPlayer", component: L}, {
                    path: "/management/activePlayer",
                    name: "activePlayer",
                    component: B
                }, {path: "/management/retainPlayer", name: "retainPlayer", component: H}]
            }]
        }), Je = a("zL8q"), He = a.n(Je), Ke = (a("tvR6"), a("//Fk")), We = a.n(Ke);
        n.default.use(He.a), n.default.config.productionTip = !1, n.default.prototype.$http = y.a, n.default.prototype.$checkData = function (e) {
            var t = this;
            return new We.a(function (a, n) {
                e.ErrorMsg ? (t.$message({
                    showClose: !0,
                    message: e.ErrorMsg,
                    type: "error"
                }), n(e.ErrorMsg)) : a(e.data)
            })
        }, new n.default({el: "#app", router: qe, components: {App: r}, template: "<App/>"})
    }, "Omf/": function (e, t) {
    }, S1wc: function (e, t) {
    }, S3NL: function (e, t) {
    }, SxxJ: function (e, t) {
    }, W0FJ: function (e, t) {
    }, X1ur: function (e, t) {
    }, a2N3: function (e, t) {
    }, aAoS: function (e, t) {
    }, c5tj: function (e, t) {
    }, eGeP: function (e, t) {
    }, gxZj: function (e, t) {
    }, hRnl: function (e, t) {
    }, ks9u: function (e, t) {
    }, oJEQ: function (e, t) {
    }, ogPK: function (e, t) {
    }, r2Q6: function (e, t) {
    }, tvR6: function (e, t) {
    }, u9Y3: function (e, t) {
    }, vNEH: function (e, t) {
    }, y2tm: function (e, t) {
    }, y9kM: function (e, t) {
    }, zwpc: function (module, __webpack_exports__, __webpack_require__) {
        "use strict";
        var __WEBPACK_IMPORTED_MODULE_0_babel_runtime_core_js_math_log10__ = __webpack_require__("j9JH"),
            __WEBPACK_IMPORTED_MODULE_0_babel_runtime_core_js_math_log10___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_babel_runtime_core_js_math_log10__);
        __webpack_exports__.a = {
            name: "calculator", data: function () {
                return {current: "", changeMode: !0}
            }, methods: {
                press: function press(event) {
                    var me = this, key = event.target.textContent;
                    if ("=" != key && "清空" != key && "*" != key && "/" != key && "√" != key && "x ²" != key && "%" != key && "<=" != key && "±" != key && "sin" != key && "cos" != key && "tan" != key && "log" != key && "ln" != key && "x^" != key && "x !" != key && "π" != key && "e" != key && "rad" != key && "∘" != key) me.current += key; else if ("=" === key) if (me.current.indexOf("^") > -1) {
                        var base = me.current.slice(0, me.current.indexOf("^")),
                            exponent = me.current.slice(me.current.indexOf("^") + 1);
                        me.current = eval("Math.pow(" + base + "," + exponent + ")")
                    } else me.current = eval(me.current); else if ("清空" === key) me.current = ""; else if ("*" === key) me.current += "*"; else if ("/" === key) me.current += "/"; else if ("+" === key) me.current += "+"; else if ("-" === key) me.current += "-"; else if ("±" === key) "-" === me.current.charAt(0) ? me.current = me.current.slice(1) : me.current = "-" + me.current; else if ("<=" === key) me.current = me.current.substring(0, me.current.length - 1); else if ("%" === key) me.current = me.current / 100; else if ("π" === key) me.current = me.current * Math.PI; else if ("x ²" === key) me.current = eval(me.current * me.current); else if ("√" === key) me.current = Math.sqrt(me.current); else if ("sin" === key) me.current = Math.sin(me.current); else if ("cos" === key) me.current = Math.cos(me.current); else if ("tan" === key) me.current = Math.tan(me.current); else if ("log" === key) me.current = __WEBPACK_IMPORTED_MODULE_0_babel_runtime_core_js_math_log10___default()(me.current); else if ("ln" === key) me.current = Math.log(me.current); else if ("x^" === key) me.current += "^"; else if ("x !" === key) {
                        var number = 1;
                        if (0 === me.current) me.current = "1"; else if (me.current < 0) me.current = NaN; else {
                            for (var _number = 1, i = me.current; i > 0; i--) _number *= i;
                            me.current = _number
                        }
                    } else "e" === key ? me.current = Math.exp(me.current) : "rad" === key ? me.current = me.current * (Math.PI / 180) : "∘" === key && (me.current = me.current * (180 / Math.PI))
                }, changeModeEvent: function () {
                    this.changeMode = !this.changeMode
                }, closeThis: function () {
                    this.$emit("hideMsg")
                }
            }
        }
    }
}, ["NHnr"]);