webpackJsonp([1], {
    "/zT1": function (e, t) {
    }, "18uj": function (e, t) {
    }, "4w7F": function (e, t) {
    }, "5Z3B": function (e, t) {
    }, "90M1": function (e, t) {
    }, "9VM1": function (e, t) {
    }, "9zCC": function (e, t) {
    }, Azkq: function (e, t) {
    }, BcMH: function (e, t) {
    }, BtQI: function (e, t) {
    }, HwS2: function (e, t) {
    }, JNSh: function (e, t) {
    }, JsaW: function (e, t) {
    }, JuJB: function (e, t) {
    }, K6Kw: function (e, t) {
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
            }, null, null).exports, s = a("/ocq"), i = a("Xxa5"), o = a.n(i), c = a("exGp"), u = a.n(c), p = a("zwpc"),
            v = {
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
        var d = function (e) {
                a("hRnl")
            }, h = a("VU/8")(p.a, v, !1, d, "data-v-50b00b46", null).exports, m = a("Dd8w"), g = a.n(m), f = a("mtWM"),
            b = a.n(f), _ = {
                transformRequest: [function (e) {
                    var t = "";
                    for (var a in e) t += encodeURIComponent(a) + "=" + encodeURIComponent(e[a]) + "&";
                    return t
                }], headers: {"Content-Type": "application/x-www-form-urlencoded"}
            };

        function w(e) {
            return b.a.get("/user/search.do?loginName=" + e.loginName + "&userName=" + e.userName + "&phonenumber=" + e.phonenumber + "&page=" + e.page + "&rows=" + e.size)
        }

        function y(e) {
            return b.a.get("/user/removeUserByUserId.do?", {params: {userIds: e.join()}})
        }

        function x(e) {
            return b.a.get("/user/checkLoginNameUnique.do?loginName=" + e)
        }

        function k(e) {
            return b()(g()({method: "POST", url: "/user/checkPhoneUnique.do", data: {phonenumber: e}}, _))
        }

        function C(e) {
            return b()(g()({method: "POST", url: "/user/saveUser.do", data: e}, _))
        }

        function z(e) {
            return b()(g()({method: "POST", url: "/user/updateUser.do", data: e}, _))
        }

        function I() {
            return b()({url: "/menu/listMenu.do"})
        }

        function S() {
            var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : "";
            return b()({url: "/menu/roleMenuTreeData.do", params: {roleId: e}})
        }

        function D(e) {
            return b.a.get("/role/search.do?roleName=" + e.roleName + "&page=" + e.page + "&rows=" + e.size)
        }

        var U = {
            name: "management", data: function () {
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
                    }, {title: "推送设置", child: ["消息发布"]}],
                    user: {}
                }
            }, components: {calculator: h}, mounted: function () {
                var e = this;
                return u()(o.a.mark(function t() {
                    var a;
                    return o.a.wrap(function (t) {
                        for (; ;) switch (t.prev = t.next) {
                            case 0:
                                return t.prev = 0, t.next = 3, b()({url: "/getUser.do"});
                            case 3:
                                a = t.sent, e.user = a.data, t.next = 10;
                                break;
                            case 7:
                                t.prev = 7, t.t0 = t.catch(0), console.log(t.t0);
                            case 10:
                            case"end":
                                return t.stop()
                        }
                    }, t, e, [[0, 7]])
                }))()
            }, methods: {
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
        }, N = {
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
                }, [a("el-dropdown-item", {attrs: {command: "0"}}, [a("i", {staticClass: "el-icon-edit"}), e._v("修改密码")]), e._v(" "), a("el-dropdown-item", {attrs: {command: "1"}}, [a("i", {staticClass: "el-icon-circle-close"}), e._v("退出")])], 1)], 1), e._v(" "), a("span", {staticStyle: {color: "#fff"}}, [e._v("你好, " + e._s(e.user.userName))])], 1), e._v(" "), a("router-view"), e._v(" "), a("el-footer", {
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
        var $ = a("VU/8")(U, N, !1, function (e) {
            a("cDog")
        }, "data-v-bab17624", null).exports, R = a("BO1k"), P = a.n(R), j = {
            name: "admin-system", data: function () {
                return {
                    isTabOne: !0,
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
                    viewInfo: {characher: [], data: [{value: ""}, {value: ""}, {value: ""}, {value: ""}], id: 0},
                    deleteUsersState: {index: [], ids: []},
                    user_character: [],
                    newUserInfo: {userName: "", pwd: "", raceName: "", phone: "", user_character_select: [], remark: ""}
                }
            }, mounted: function () {
                var e = this;
                this.loadFeaturesData(), b.a.get("/role/listRole.do").then(function (t) {
                    t.data.data.forEach(function (t) {
                        e.user_character.push({value: t.roleName, label: t.roleName, id: t.roleId})
                    })
                }).catch(function (e) {
                    console.log(e)
                })
            }, methods: {
                searchUserInfo: function () {
                    var e = this;
                    return u()(o.a.mark(function t() {
                        return o.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    e.loadSearchData();
                                case 1:
                                case"end":
                                    return t.stop()
                            }
                        }, t, e)
                    }))()
                }, clearEditUser: function () {
                    this.viewInfo.data.forEach(function (e) {
                        e.value = ""
                    }), this.viewInfo.characher = [], this.viewInfo.id = 0
                }, addEditUser: function () {
                    var e = this;
                    return u()(o.a.mark(function t() {
                        var a, n;
                        return o.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, a = e.user_character.filter(function (t) {
                                        var a = !0, n = !1, l = void 0;
                                        try {
                                            for (var r, s = P()(e.viewInfo.characher); !(a = (r = s.next()).done); a = !0) {
                                                if (r.value === t.value) return !0
                                            }
                                        } catch (e) {
                                            n = !0, l = e
                                        } finally {
                                            try {
                                                !a && s.return && s.return()
                                            } finally {
                                                if (n) throw l
                                            }
                                        }
                                        return !1
                                    }).map(function (e) {
                                        return e.id
                                    }), t.next = 4, z({
                                        loginName: e.viewInfo.data[0].value,
                                        userName: e.viewInfo.data[1].value,
                                        phonenumber: e.viewInfo.data[2].value,
                                        roleIds: a,
                                        userId: e.viewInfo.id,
                                        remark: e.viewInfo.data[3].value
                                    });
                                case 4:
                                    return n = t.sent, t.next = 7, e.$checkData(n.data);
                                case 7:
                                    e.clearEditUser(), e.$message({
                                        showClose: !0,
                                        message: "修改成功",
                                        type: "success"
                                    }), e.editDialog = !1, e.isTabOne ? e.loadFeaturesData() : e.loadSearchData(), t.next = 16;
                                    break;
                                case 13:
                                    t.prev = 13, t.t0 = t.catch(0), console.log(t.t0);
                                case 16:
                                case"end":
                                    return t.stop()
                            }
                        }, t, e, [[0, 13]])
                    }))()
                }, tableSelect: function (e) {
                    var t = [], a = !0, n = !1, l = void 0;
                    try {
                        for (var r, s = P()(e); !(a = (r = s.next()).done); a = !0) {
                            var i = r.value;
                            t.push(i.id)
                        }
                    } catch (e) {
                        n = !0, l = e
                    } finally {
                        try {
                            !a && s.return && s.return()
                        } finally {
                            if (n) throw l
                        }
                    }
                    this.deleteUsersState.ids = t
                }, showDeleteDialog: function (e, t) {
                    t && (this.deleteUsersState.ids = t), this.deleteVisiable = !0
                }, deleteUserInfo: function () {
                    var e = this;
                    return u()(o.a.mark(function t() {
                        var a;
                        return o.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, y(e.deleteUsersState.ids);
                                case 3:
                                    return a = t.sent, t.next = 6, e.$checkData(a.data);
                                case 6:
                                    e.deleteUsersState.ids = [], e.$message({
                                        showClose: !0,
                                        message: "删除成功",
                                        type: "success"
                                    }), e.isTabOne ? e.loadFeaturesData() : e.loadSearchData(), e.deleteVisiable = !1, t.next = 15;
                                    break;
                                case 12:
                                    t.prev = 12, t.t0 = t.catch(0), console.log(t.t0);
                                case 15:
                                case"end":
                                    return t.stop()
                            }
                        }, t, e, [[0, 12]])
                    }))()
                }, clearSearchInfo: function () {
                    this.searchInfo.loginName = "", this.searchInfo.userName = "", this.searchInfo.phonenumber = ""
                }, addNewUser: function () {
                    var e = this;
                    return u()(o.a.mark(function t() {
                        var a;
                        return o.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    a = e.user_character.filter(function (t) {
                                        var a = !0, n = !1, l = void 0;
                                        try {
                                            for (var r, s = P()(e.newUserInfo.user_character_select); !(a = (r = s.next()).done); a = !0) {
                                                if (r.value === t.value) return !0
                                            }
                                        } catch (e) {
                                            n = !0, l = e
                                        } finally {
                                            try {
                                                !a && s.return && s.return()
                                            } finally {
                                                if (n) throw l
                                            }
                                        }
                                        return !1
                                    }).map(function (e) {
                                        return e.id
                                    }), C({
                                        loginName: e.newUserInfo.userName,
                                        userName: e.newUserInfo.raceName,
                                        phonenumber: e.newUserInfo.phone,
                                        roleIds: a,
                                        password: e.newUserInfo.pwd,
                                        remark: e.newUserInfo.remark
                                    }).then(function (t) {
                                        e.$checkData(t.data).then(function (t) {
                                            e.$message({
                                                showClose: !0,
                                                message: "添加成功",
                                                type: "success"
                                            }), e.newUserDialog = !1, e.clearNewUser(), e.isTabOne ? e.loadFeaturesData() : e.loadSearchData()
                                        }).catch(function (e) {
                                            console.log(e)
                                        })
                                    }).catch(function (e) {
                                        console.log(e)
                                    });
                                case 2:
                                case"end":
                                    return t.stop()
                            }
                        }, t, e)
                    }))()
                }, checkPhoneNumber: function (e) {
                    var t = this;
                    return u()(o.a.mark(function a() {
                        return o.a.wrap(function (a) {
                            for (; ;) switch (a.prev = a.next) {
                                case 0:
                                    return a.prev = 0, a.t0 = t, a.next = 4, k(e);
                                case 4:
                                    return a.t1 = a.sent.data, a.next = 7, a.t0.$checkData.call(a.t0, a.t1);
                                case 7:
                                    a.next = 12;
                                    break;
                                case 9:
                                    a.prev = 9, a.t2 = a.catch(0), console.log(a.t2);
                                case 12:
                                case"end":
                                    return a.stop()
                            }
                        }, a, t, [[0, 9]])
                    }))()
                }, checkUserName: function (e) {
                    var t = this;
                    return u()(o.a.mark(function a() {
                        return o.a.wrap(function (a) {
                            for (; ;) switch (a.prev = a.next) {
                                case 0:
                                    return a.prev = 0, a.t0 = t, a.next = 4, x(e);
                                case 4:
                                    return a.t1 = a.sent.data, a.next = 7, a.t0.$checkData.call(a.t0, a.t1);
                                case 7:
                                    a.next = 12;
                                    break;
                                case 9:
                                    a.prev = 9, a.t2 = a.catch(0), console.log(a.t2);
                                case 12:
                                case"end":
                                    return a.stop()
                            }
                        }, a, t, [[0, 9]])
                    }))()
                }, clearNewUser: function () {
                    this.newUserInfo.userName = "", this.newUserInfo.phone = "", this.newUserInfo.raceName = "", this.newUserInfo.pwd = "", this.newUserInfo.remark = "", this.newUserInfo.user_character_select = []
                }, loadFeaturesData: function () {
                    var e = this;
                    return u()(o.a.mark(function t() {
                        var a, n;
                        return o.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, l = e.featuresInfo.current_page, r = e.featuresInfo.page_size, b.a.get("/user/findPage.do?page=" + l + "&rows=" + r);
                                case 3:
                                    a = t.sent, n = a.data, e.featuresInfo.table_total = n.total, e.featuresInfo.data = [], n.rows.forEach(function (t) {
                                        e.featuresInfo.data.push({
                                            userName: t.loginName,
                                            raceName: t.userName,
                                            phone: t.phonenumber,
                                            character: t.roles.map(function (e) {
                                                return e.roleName
                                            }).join(),
                                            state: t.remark ? t.remark : "无",
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
                    return u()(o.a.mark(function t() {
                        var a, n;
                        return o.a.wrap(function (t) {
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
                            t = "备注"
                    }
                    return t
                }, featuresCurrentChange: function (e) {
                    this.featuresInfo.current_page = e, this.loadFeaturesData()
                }, featuresSizeChange: function (e) {
                    this.featuresInfo.page_size = e, this.loadFeaturesData()
                }, viewDetail: function (e) {
                    for (var t in this.viewDetailDialog = !0, this.viewInfo.data = [], this.viewInfo.id = e.id, e) "id" !== t && "index" !== t && ("character" === t && (this.viewInfo.characher = e[t].split(",")), this.viewInfo.data.push({
                        name: this.formatName(t),
                        value: e[t]
                    }))
                }, editInfo: function (e) {
                    for (var t in this.editDialog = !0, this.viewInfo.data = [], this.viewInfo.id = e.id, e) "id" !== t && "index" !== t && ("character" === t ? this.viewInfo.characher = e[t].split(",") : this.viewInfo.data.push({
                        name: this.formatName(t),
                        value: e[t]
                    }))
                }, newUser: function () {
                    this.newUserDialog = !0
                }, changeTab: function (e) {
                    this.isTabOne = "search" !== e.name
                }
            }
        }, E = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("el-tabs", {
                    staticClass: "content",
                    attrs: {type: "border-card", value: "Features"},
                    on: {"tab-click": e.changeTab}
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
                            t.stopPropagation(), e.showDeleteDialog(t)
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
                        label: "备注"
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
                            }, [e._v("修改\n          ")]), e._v(" "), a("el-button", {
                                attrs: {
                                    size: "mini",
                                    type: "danger"
                                }, on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.showDeleteDialog(a, [t.store.states.data[t.$index].id])
                                    }
                                }
                            }, [e._v("删除\n          ")])]
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
                    nativeOn: {
                        keyup: function (t) {
                            return "button" in t || 13 === t.keyCode ? e.searchUserInfo(t) : null
                        }
                    },
                    model: {
                        value: e.searchInfo.loginName, callback: function (t) {
                            e.$set(e.searchInfo, "loginName", t)
                        }, expression: "searchInfo.loginName"
                    }
                }, [a("template", {slot: "prepend"}, [e._v("用户名")])], 2), e._v(" "), a("el-input", {
                    staticStyle: {width: "280px"},
                    attrs: {placeholder: "请输入"},
                    nativeOn: {
                        keyup: function (t) {
                            return "button" in t || 13 === t.keyCode ? e.searchUserInfo(t) : null
                        }
                    },
                    model: {
                        value: e.searchInfo.userName, callback: function (t) {
                            e.$set(e.searchInfo, "userName", t)
                        }, expression: "searchInfo.userName"
                    }
                }, [a("template", {slot: "prepend"}, [e._v("真实姓名")])], 2), e._v(" "), a("el-input", {
                    staticStyle: {width: "280px"},
                    attrs: {placeholder: "请输入"},
                    nativeOn: {
                        keyup: function (t) {
                            return "button" in t || 13 === t.keyCode ? e.searchUserInfo(t) : null
                        }
                    },
                    model: {
                        value: e.searchInfo.phonenumber, callback: function (t) {
                            e.$set(e.searchInfo, "phonenumber", t)
                        }, expression: "searchInfo.phonenumber"
                    }
                }, [a("template", {slot: "prepend"}, [e._v("电话号码")])], 2), e._v(" "), a("el-row", {staticStyle: {"margin-top": "20px"}}, [a("el-button", {
                    attrs: {type: "success"},
                    on: {click: e.searchUserInfo}
                }, [e._v("立即查询")]), e._v(" "), a("el-button", {on: {click: e.clearSearchInfo}}, [e._v("重置")])], 1), e._v(" "), a("el-table", {
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
                        label: "备注"
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
                            }, [e._v("修改\n          ")]), e._v(" "), a("el-button", {
                                attrs: {
                                    size: "mini",
                                    type: "danger"
                                }, on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.showDeleteDialog(a[t.store.states.data[t.$index]])
                                    }
                                }
                            }, [e._v("删除\n          ")])]
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
                }, [e._v("备注")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    attrs: {placeholder: "请输入内容"},
                    model: {
                        value: e.viewInfo.data[3].value, callback: function (t) {
                            e.$set(e.viewInfo.data[3], "value", t)
                        }, expression: "viewInfo.data[3].value"
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
                    on: {
                        blur: function (t) {
                            e.checkUserName(e.newUserInfo.userName)
                        }
                    },
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
                }, [e._v("密码")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
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
                    on: {
                        blur: function (t) {
                            e.checkPhoneNumber(e.newUserInfo.phone)
                        }
                    },
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
                }, [e._v("备注")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    staticClass: "newUserInput",
                    attrs: {placeholder: "请输入内容"},
                    model: {
                        value: e.newUserInfo.remark, callback: function (t) {
                            e.$set(e.newUserInfo, "remark", t)
                        }, expression: "newUserInfo.remark"
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
        var V = a("VU/8")(j, E, !1, function (e) {
            a("SpM/")
        }, "data-v-30be3b94", null).exports, T = a("//Fk"), F = a.n(T);

        function M(e) {
            var t = arguments.length > 1 && void 0 !== arguments[1] && arguments[1], a = [], n = [], l = [];
            return e.forEach(function (e) {
                !e.chcked && t || ("M" === e.type ? a.push({
                    id: e.id,
                    label: e.name,
                    children: [],
                    checked: e.chcked
                }) : "C" === e.type ? n.push({
                    id: e.id,
                    label: e.name,
                    children: [],
                    pId: e.pId,
                    checked: e.chcked
                }) : "F" === e.type && l.push({id: e.id, label: e.name, children: [], pId: e.pId, checked: e.chcked}))
            }), n.forEach(function (e) {
                l.forEach(function (t) {
                    t.pId === e.id && e.children.push(t)
                })
            }), a.forEach(function (e) {
                n.forEach(function (t) {
                    t.pId === e.id && e.children.push(t)
                })
            }), a
        }

        var O = {
            name: "admin-system", data: function () {
                return {
                    isTabOne: !0,
                    deleteRoleState: {ids: []},
                    newRoleDialog: !1,
                    editDialog: !1,
                    viewDetailDialog: !1,
                    deleteVisiable: !1,
                    lookBoxTree: [],
                    viewInfo: {characher: [], data: [{value: ""}, {value: ""}, {value: ""}, {value: ""}], id: 0},
                    featuresInfo: {data: [], page_size: 10, current_page: 1, table_total: 0},
                    searchInfo: {data: [], page_size: 10, current_page: 1, table_total: 0, roleName: ""},
                    authorizationList: [],
                    newRoleInfo: {roleName: "", roleKey: "", roleSort: "", remark: "", menuIds: []},
                    editRoleInfo: {roleName: "", roleKey: "", roleSort: "", remark: "", roleId: 0}
                }
            }, mounted: function () {
                var e = this;
                return u()(o.a.mark(function t() {
                    var a;
                    return o.a.wrap(function (t) {
                        for (; ;) switch (t.prev = t.next) {
                            case 0:
                                return e.loadFeaturesData(), t.next = 3, S();
                            case 3:
                                a = t.sent, e.authorizationList = M(a.data);
                            case 5:
                            case"end":
                                return t.stop()
                        }
                    }, t, e)
                }))()
            }, methods: {
                loadSearchData: function () {
                    var e = this;
                    return u()(o.a.mark(function t() {
                        var a, n;
                        return o.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, D({
                                        page: e.searchInfo.current_page,
                                        size: e.searchInfo.page_size,
                                        roleName: e.searchInfo.roleName
                                    });
                                case 3:
                                    a = t.sent, n = a.data, e.searchInfo.table_total = n.total, e.searchInfo.data = [], n.rows.forEach(function (t) {
                                        e.searchInfo.data.push({
                                            number: t.roleId,
                                            name: t.roleName,
                                            char: t.roleKey,
                                            sort: t.roleSort,
                                            time: t.createTime,
                                            label: t.remark
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
                }, addEditRole: function () {
                    var e = this;
                    return u()(o.a.mark(function t() {
                        var a;
                        return o.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, n = {
                                        roleId: e.editRoleInfo.roleId,
                                        roleName: e.editRoleInfo.roleName,
                                        roleKey: e.editRoleInfo.roleKey,
                                        roleSort: Number(e.editRoleInfo.roleSort),
                                        remark: e.editRoleInfo.remark,
                                        menuIds: e.$refs.editTree.getCheckedKeys().join()
                                    }, b()(g()({method: "POST", url: "/role/updateRole.do", data: n}, _));
                                case 3:
                                    return a = t.sent, t.next = 6, e.$checkData(a.data);
                                case 6:
                                    e.clearEditRole(), e.$message({
                                        showClose: !0,
                                        message: "修改成功",
                                        type: "success"
                                    }), e.editDialog = !1, e.isTabOne ? e.loadFeaturesData() : e.loadSearchData(), t.next = 15;
                                    break;
                                case 12:
                                    t.prev = 12, t.t0 = t.catch(0), console.log(t.t0);
                                case 15:
                                case"end":
                                    return t.stop()
                            }
                            var n
                        }, t, e, [[0, 12]])
                    }))()
                }, clearEditRole: function () {
                    this.editRoleInfo.roleName = "", this.editRoleInfo.roleKey = "", this.editRoleInfo.roleSort = "", this.editRoleInfo.remark = ""
                }, clearNewRole: function () {
                    this.newRoleInfo.roleName = "", this.newRoleInfo.roleKey = "", this.newRoleInfo.roleSort = "", this.newRoleInfo.remark = "", this.newRoleInfo.menuIds = []
                }, addNewRole: function () {
                    var e = this;
                    return u()(o.a.mark(function t() {
                        return o.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    (a = {
                                        roleName: e.newRoleInfo.roleName,
                                        roleKey: e.newRoleInfo.roleKey,
                                        roleSort: Number(e.newRoleInfo.roleSort),
                                        remark: e.newRoleInfo.remark,
                                        menuIds: e.$refs.tree.getCheckedKeys().join()
                                    }, b()(g()({
                                        url: "/role/saveRole.do",
                                        method: "POST",
                                        data: a
                                    }, _))).then(function (t) {
                                        e.$checkData(t.data).then(function (t) {
                                            e.$message({
                                                showClose: !0,
                                                message: "添加成功",
                                                type: "success"
                                            }), e.newRoleDialog = !1, e.clearNewRole(), e.isTabOne ? e.loadFeaturesData() : e.loadSearchData()
                                        }).catch(function (e) {
                                            console.log(e)
                                        })
                                    }).catch(function (e) {
                                        console.log(e)
                                    });
                                case 1:
                                case"end":
                                    return t.stop()
                            }
                            var a
                        }, t, e)
                    }))()
                }, editInfo: function (e) {
                    var t = this;
                    return u()(o.a.mark(function a() {
                        var n, l, r, s, i, c, u;
                        return o.a.wrap(function (a) {
                            for (; ;) switch (a.prev = a.next) {
                                case 0:
                                    return t.editDialog = !0, a.next = 3, S(e.number);
                                case 3:
                                    for (n = a.sent, l = !0, r = !1, s = void 0, a.prev = 7, i = P()(n.data); !(l = (c = i.next()).done); l = !0) u = c.value, t.$refs.editTree.setChecked(u.id, u.chcked);
                                    a.next = 15;
                                    break;
                                case 11:
                                    a.prev = 11, a.t0 = a.catch(7), r = !0, s = a.t0;
                                case 15:
                                    a.prev = 15, a.prev = 16, !l && i.return && i.return();
                                case 18:
                                    if (a.prev = 18, !r) {
                                        a.next = 21;
                                        break
                                    }
                                    throw s;
                                case 21:
                                    return a.finish(18);
                                case 22:
                                    return a.finish(15);
                                case 23:
                                    t.editRoleInfo = {
                                        roleName: e.name,
                                        roleKey: e.char,
                                        roleSort: e.sort,
                                        remark: e.label,
                                        roleId: e.number
                                    };
                                case 24:
                                case"end":
                                    return a.stop()
                            }
                        }, a, t, [[7, 11, 15, 23], [16, , 18, 22]])
                    }))()
                }, viewDetail: function (e) {
                    var t = this;
                    return u()(o.a.mark(function a() {
                        var n, l;
                        return o.a.wrap(function (a) {
                            for (; ;) switch (a.prev = a.next) {
                                case 0:
                                    return t.viewDetailDialog = !0, a.next = 3, S(e.number);
                                case 3:
                                    for (l in n = a.sent, t.lookBoxTree = M(n.data, !0), t.viewInfo.data = [], t.viewInfo.id = e.id, e) t.viewInfo.data.push({
                                        name: t.formatName(l),
                                        value: e[l]
                                    });
                                case 8:
                                case"end":
                                    return a.stop()
                            }
                        }, a, t)
                    }))()
                }, formatName: function (e) {
                    var t = "";
                    switch (e) {
                        case"name":
                            t = "用户名称";
                            break;
                        case"char":
                            t = "权限字符";
                            break;
                        case"sort":
                            t = "显示顺序";
                            break;
                        case"label":
                            t = "备注";
                            break;
                        case"time":
                            t = "创建时间";
                            break;
                        case"number":
                            t = "角色编号"
                    }
                    return t
                }, loadFeaturesData: function () {
                    var e = this;
                    return u()(o.a.mark(function t() {
                        var a, n;
                        return o.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, l = e.featuresInfo.current_page, r = e.featuresInfo.page_size, b()({
                                        url: "/role/findPage.do",
                                        params: {page: l, rows: r}
                                    });
                                case 3:
                                    a = t.sent, n = a.data, e.featuresInfo.table_total = n.total, e.featuresInfo.data = [], n.rows.forEach(function (t) {
                                        e.featuresInfo.data.push({
                                            number: t.roleId,
                                            name: t.roleName,
                                            char: t.roleKey,
                                            sort: t.roleSort,
                                            time: t.createTime,
                                            label: t.remark
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
                }, featuresCurrentChange: function (e) {
                    this.featuresInfo.current_page = e, this.loadFeaturesData()
                }, featuresSizeChange: function (e) {
                    this.featuresInfo.page_size = e, this.loadFeaturesData()
                }, showDeleteDialog: function (e, t) {
                    console.log(t), t && (this.deleteRoleState.ids = [t.number]), this.deleteVisiable = !0
                }, deleteRoleInfo: function () {
                    var e = this;
                    return u()(o.a.mark(function t() {
                        var a;
                        return o.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, n = e.deleteRoleState.ids.join(), b.a.get("/role/delete.do?", {params: {roleIds: n}});
                                case 3:
                                    return a = t.sent, t.next = 6, e.$checkData(a.data);
                                case 6:
                                    e.deleteRoleState.ids = [], e.$message({
                                        showClose: !0,
                                        message: "删除成功",
                                        type: "success"
                                    }), e.isTabOne ? e.loadFeaturesData() : e.loadSearchData(), e.deleteVisiable = !1, t.next = 16;
                                    break;
                                case 12:
                                    t.prev = 12, t.t0 = t.catch(0), e.deleteRoleState.ids = [], console.log(t.t0);
                                case 16:
                                case"end":
                                    return t.stop()
                            }
                            var n
                        }, t, e, [[0, 12]])
                    }))()
                }, tableSelect: function (e) {
                    var t = [], a = !0, n = !1, l = void 0;
                    try {
                        for (var r, s = P()(e); !(a = (r = s.next()).done); a = !0) {
                            var i = r.value;
                            t.push(i.number)
                        }
                    } catch (e) {
                        n = !0, l = e
                    } finally {
                        try {
                            !a && s.return && s.return()
                        } finally {
                            if (n) throw l
                        }
                    }
                    this.deleteRoleState.ids = t
                }, changeTab: function (e) {
                    this.isTabOne = "search" !== e.name
                }
            }
        }, L = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("el-tabs", {
                    staticClass: "content",
                    attrs: {type: "border-card", value: "Features"},
                    on: {"tab-click": e.changeTab}
                }, [a("el-tab-pane", {
                    attrs: {
                        label: "功能选择",
                        name: "Features"
                    }
                }, [a("el-row", [a("el-button", {
                    attrs: {type: "success"}, on: {
                        click: function (t) {
                            t.stopPropagation(), e.newRoleDialog = !0
                        }
                    }
                }, [e._v("新增")]), e._v(" "), a("el-button", {
                    attrs: {type: "danger"}, on: {
                        click: function (t) {
                            t.stopPropagation(), e.showDeleteDialog(t)
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
                        prop: "number",
                        label: "角色编号"
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
                        width: "150",
                        align: "center",
                        prop: "char",
                        label: "权限字符"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "sort",
                        label: "显示顺序"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "200",
                        align: "center",
                        prop: "time",
                        label: "创建时间"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "label",
                        label: "备注"
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
                            }, [e._v("修改\n          ")]), e._v(" "), a("el-button", {
                                attrs: {
                                    size: "mini",
                                    type: "danger"
                                }, on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.showDeleteDialog(a, t.store.states.data[t.$index])
                                    }
                                }
                            }, [e._v("删除\n          ")])]
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
                }, [a("el-row", {staticStyle: {"margin-top": "20px"}}, [a("el-col", [a("el-input", {
                    staticStyle: {width: "280px"},
                    attrs: {placeholder: "请输入"},
                    on: {
                        keydown: function (t) {
                            return "button" in t || !e._k(t.keyCode, "enter", 13, t.key, "Enter") ? e.loadSearchData(t) : null
                        }
                    },
                    model: {
                        value: e.searchInfo.roleName, callback: function (t) {
                            e.$set(e.searchInfo, "roleName", t)
                        }, expression: "searchInfo.roleName"
                    }
                }, [a("template", {slot: "prepend"}, [e._v("角色名")])], 2), e._v(" "), a("el-button", {
                    staticStyle: {"margin-left": "10px"},
                    attrs: {type: "success"},
                    on: {click: e.loadSearchData}
                }, [e._v("立即查询")]), e._v(" "), a("el-button", [e._v("重置")])], 1)], 1), e._v(" "), a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.searchInfo.data, border: !0}
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
                        prop: "number",
                        label: "角色编号"
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
                        width: "150",
                        align: "center",
                        prop: "char",
                        label: "权限字符"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "sort",
                        label: "显示顺序"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "200",
                        align: "center",
                        prop: "time",
                        label: "创建时间"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "label",
                        label: "备注"
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
                            }, [e._v("修改\n          ")]), e._v(" "), a("el-button", {
                                attrs: {
                                    size: "mini",
                                    type: "danger"
                                }, on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.showDeleteDialog(a, t.store.states.data[t.$index])
                                    }
                                }
                            }, [e._v("删除\n          ")])]
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
                            return t.stopPropagation(), e.deleteRoleInfo(t)
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
                }, [e._v("角色名称")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    attrs: {placeholder: "请输入内容"},
                    model: {
                        value: e.editRoleInfo.roleName, callback: function (t) {
                            e.$set(e.editRoleInfo, "roleName", t)
                        }, expression: "editRoleInfo.roleName"
                    }
                })], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("权限字符")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    attrs: {placeholder: "请输入内容"},
                    model: {
                        value: e.editRoleInfo.roleKey, callback: function (t) {
                            e.$set(e.editRoleInfo, "roleKey", t)
                        }, expression: "editRoleInfo.roleKey"
                    }
                })], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("显示顺序")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    attrs: {placeholder: "请输入内容"},
                    model: {
                        value: e.editRoleInfo.roleSort, callback: function (t) {
                            e.$set(e.editRoleInfo, "roleSort", t)
                        }, expression: "editRoleInfo.roleSort"
                    }
                })], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("备注")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    attrs: {placeholder: "请输入内容"},
                    model: {
                        value: e.editRoleInfo.remark, callback: function (t) {
                            e.$set(e.editRoleInfo, "remark", t)
                        }, expression: "editRoleInfo.remark"
                    }
                })], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("菜单权限")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-tree", {
                    ref: "editTree",
                    attrs: {data: e.authorizationList, "show-checkbox": "", "node-key": "id", "highlight-current": ""}
                })], 1)], 1), e._v(" "), a("div", {
                    staticClass: "dialog-footer",
                    attrs: {slot: "footer"},
                    slot: "footer"
                }, [a("el-button", {on: {click: e.clearEditRole}}, [e._v("清 空")]), e._v(" "), a("el-button", {
                    attrs: {type: "danger"},
                    on: {click: e.addEditRole}
                }, [e._v("确 定")])], 1)], 1), e._v(" "), a("el-dialog", {
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
                })], 1), e._v(" "), a("div", {staticClass: "lookBoxTree"}, [a("div", {staticClass: "name"}, [e._v("权限")]), e._v(" "), a("el-tree", {
                    staticClass: "data",
                    attrs: {data: e.lookBoxTree}
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
                        center: "",
                        width: "600px",
                        title: "添加角色管理",
                        visible: e.newRoleDialog
                    }, on: {
                        "update:visible": function (t) {
                            e.newRoleDialog = t
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
                }, [e._v("角色名称")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    attrs: {placeholder: "请输入内容"},
                    model: {
                        value: e.newRoleInfo.roleName, callback: function (t) {
                            e.$set(e.newRoleInfo, "roleName", t)
                        }, expression: "newRoleInfo.roleName"
                    }
                })], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("权限字符")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    attrs: {placeholder: "请输入内容"},
                    model: {
                        value: e.newRoleInfo.roleKey, callback: function (t) {
                            e.$set(e.newRoleInfo, "roleKey", t)
                        }, expression: "newRoleInfo.roleKey"
                    }
                })], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("显示顺序")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    attrs: {placeholder: "请输入内容"},
                    model: {
                        value: e.newRoleInfo.roleSort, callback: function (t) {
                            e.$set(e.newRoleInfo, "roleSort", t)
                        }, expression: "newRoleInfo.roleSort"
                    }
                })], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("备注")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    attrs: {placeholder: "请输入内容"},
                    model: {
                        value: e.newRoleInfo.remark, callback: function (t) {
                            e.$set(e.newRoleInfo, "remark", t)
                        }, expression: "newRoleInfo.remark"
                    }
                })], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("菜单权限")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-tree", {
                    ref: "tree",
                    attrs: {data: e.authorizationList, "show-checkbox": "", "node-key": "id", "highlight-current": ""}
                })], 1)], 1), e._v(" "), a("div", {
                    staticClass: "dialog-footer",
                    attrs: {slot: "footer"},
                    slot: "footer"
                }, [a("el-button", {on: {click: e.clearNewRole}}, [e._v("清 空")]), e._v(" "), a("el-button", {
                    attrs: {type: "primary"},
                    on: {click: e.addNewRole}
                }, [e._v("确 定")])], 1)], 1)], 1)
            }, staticRenderFns: []
        };
        var A = a("VU/8")(O, L, !1, function (e) {
            a("RGLD")
        }, "data-v-6acb9333", null).exports, B = {
            name: "admin-system", data: function () {
                return {
                    isTabOne: !0,
                    newUserDialog: !1,
                    editDialog: !1,
                    viewDetailDialog: !1,
                    deleteVisiable: !1,
                    featuresInfo: {data: []},
                    searchInfo: {data: [], loginName: "", userName: "", phonenumber: ""},
                    viewInfo: {characher: [], data: [{value: ""}, {value: ""}, {value: ""}, {value: ""}], id: 0},
                    deleteUsersState: {index: [], ids: []},
                    user_character: [],
                    newUserInfo: {userName: "", pwd: "", raceName: "", phone: "", user_character_select: [], remark: ""}
                }
            }, mounted: function () {
                this.loadFeaturesData()
            }, methods: {
                clearEditUser: function () {
                    this.viewInfo.data.forEach(function (e) {
                        e.value = ""
                    }), this.viewInfo.characher = [], this.viewInfo.id = 0
                }, addEditUser: function () {
                    var e = this;
                    return u()(o.a.mark(function t() {
                        var a, n;
                        return o.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, a = e.user_character.filter(function (t) {
                                        var a = !0, n = !1, l = void 0;
                                        try {
                                            for (var r, s = P()(e.viewInfo.characher); !(a = (r = s.next()).done); a = !0) {
                                                if (r.value === t.value) return !0
                                            }
                                        } catch (e) {
                                            n = !0, l = e
                                        } finally {
                                            try {
                                                !a && s.return && s.return()
                                            } finally {
                                                if (n) throw l
                                            }
                                        }
                                        return !1
                                    }).map(function (e) {
                                        return e.id
                                    }), t.next = 4, z({
                                        loginName: e.viewInfo.data[0].value,
                                        userName: e.viewInfo.data[1].value,
                                        phonenumber: e.viewInfo.data[2].value,
                                        roleIds: a,
                                        userId: e.viewInfo.id,
                                        remark: e.viewInfo.data[3].value
                                    });
                                case 4:
                                    return n = t.sent, t.next = 7, e.$checkData(n.data);
                                case 7:
                                    e.clearEditUser(), e.editDialog = !1, e.isTabOne ? e.loadFeaturesData() : e.loadSearchData(), t.next = 15;
                                    break;
                                case 12:
                                    t.prev = 12, t.t0 = t.catch(0), console.log(t.t0);
                                case 15:
                                case"end":
                                    return t.stop()
                            }
                        }, t, e, [[0, 12]])
                    }))()
                }, tableSelect: function (e) {
                    var t = [], a = [], n = !0, l = !1, r = void 0;
                    try {
                        for (var s, i = P()(e); !(n = (s = i.next()).done); n = !0) {
                            var o = s.value;
                            t.push(o.id), a.push(o.index)
                        }
                    } catch (e) {
                        l = !0, r = e
                    } finally {
                        try {
                            !n && i.return && i.return()
                        } finally {
                            if (l) throw r
                        }
                    }
                    this.deleteUsersState.index = a, this.deleteUsersState.ids = t
                }, deleteMoreUsers: function () {
                    var e = this;
                    return u()(o.a.mark(function t() {
                        return o.a.wrap(function (t) {
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
                    return u()(o.a.mark(function n() {
                        return o.a.wrap(function (n) {
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
                    return u()(o.a.mark(function t() {
                        var a;
                        return o.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, y(e.deleteUsersState.ids);
                                case 3:
                                    return a = t.sent, t.next = 6, e.$checkData(a.data);
                                case 6:
                                    e.deleteUsersState.index = [], e.deleteUsersState.ids = [], e.$message({
                                        showClose: !0,
                                        message: "删除成功",
                                        type: "success"
                                    }), e.isTabOne ? e.loadFeaturesData() : e.loadSearchData(), e.deleteVisiable = !1, t.next = 16;
                                    break;
                                case 13:
                                    t.prev = 13, t.t0 = t.catch(0), console.log(t.t0);
                                case 16:
                                case"end":
                                    return t.stop()
                            }
                        }, t, e, [[0, 13]])
                    }))()
                }, clearSearchInfo: function () {
                    this.searchInfo.loginName = "", this.searchInfo.userName = "", this.searchInfo.phonenumber = ""
                }, searchUserInfo: function () {
                    var e = this;
                    return u()(o.a.mark(function t() {
                        return o.a.wrap(function (t) {
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
                    return u()(o.a.mark(function t() {
                        var a;
                        return o.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    a = e.user_character.filter(function (t) {
                                        var a = !0, n = !1, l = void 0;
                                        try {
                                            for (var r, s = P()(e.newUserInfo.user_character_select); !(a = (r = s.next()).done); a = !0) {
                                                if (r.value === t.value) return !0
                                            }
                                        } catch (e) {
                                            n = !0, l = e
                                        } finally {
                                            try {
                                                !a && s.return && s.return()
                                            } finally {
                                                if (n) throw l
                                            }
                                        }
                                        return !1
                                    }).map(function (e) {
                                        return e.id
                                    }), C({
                                        loginName: e.newUserInfo.userName,
                                        userName: e.newUserInfo.raceName,
                                        phonenumber: e.newUserInfo.phone,
                                        roleIds: a,
                                        password: e.newUserInfo.pwd,
                                        remark: e.newUserInfo.remark
                                    }).then(function (t) {
                                        e.$checkData(t.data).then(function (t) {
                                            e.$message({
                                                showClose: !0,
                                                message: "添加成功",
                                                type: "success"
                                            }), e.newUserDialog = !1, e.clearNewUser(), e.isTabOne ? e.loadFeaturesData() : e.loadSearchData()
                                        }).catch(function (e) {
                                            console.log(e)
                                        })
                                    }).catch(function (e) {
                                        console.log(e)
                                    });
                                case 2:
                                case"end":
                                    return t.stop()
                            }
                        }, t, e)
                    }))()
                }, checkPhoneNumber: function (e) {
                    var t = this;
                    return u()(o.a.mark(function a() {
                        return o.a.wrap(function (a) {
                            for (; ;) switch (a.prev = a.next) {
                                case 0:
                                    return a.prev = 0, a.t0 = t, a.next = 4, k(e);
                                case 4:
                                    return a.t1 = a.sent.data, a.next = 7, a.t0.$checkData.call(a.t0, a.t1);
                                case 7:
                                    a.next = 12;
                                    break;
                                case 9:
                                    a.prev = 9, a.t2 = a.catch(0), console.log(a.t2);
                                case 12:
                                case"end":
                                    return a.stop()
                            }
                        }, a, t, [[0, 9]])
                    }))()
                }, checkUserName: function (e) {
                    var t = this;
                    return u()(o.a.mark(function a() {
                        return o.a.wrap(function (a) {
                            for (; ;) switch (a.prev = a.next) {
                                case 0:
                                    return a.prev = 0, a.t0 = t, a.next = 4, x(e);
                                case 4:
                                    return a.t1 = a.sent.data, a.next = 7, a.t0.$checkData.call(a.t0, a.t1);
                                case 7:
                                    a.next = 12;
                                    break;
                                case 9:
                                    a.prev = 9, a.t2 = a.catch(0), console.log(a.t2);
                                case 12:
                                case"end":
                                    return a.stop()
                            }
                        }, a, t, [[0, 9]])
                    }))()
                }, clearNewUser: function () {
                    this.newUserInfo.userName = "", this.newUserInfo.phone = "", this.newUserInfo.raceName = "", this.newUserInfo.pwd = "", this.newUserInfo.remark = "", this.newUserInfo.user_character_select = []
                }, loadFeaturesData: function () {
                    var e = this;
                    return u()(o.a.mark(function t() {
                        var a, n;
                        return o.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, I();
                                case 3:
                                    a = t.sent, n = a.data, e.featuresInfo.table_total = n.total, e.featuresInfo.data = [], n.forEach(function (t) {
                                        e.featuresInfo.data.push({
                                            id: t.menuId,
                                            name: t.menuName,
                                            sort: t.orderNum,
                                            type: t.menuType,
                                            perms: t.perms ? t.perms : "无"
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
                }, loadSearchData: function () {
                    var e = this;
                    return u()(o.a.mark(function t() {
                        var a, n;
                        return o.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, I((e.searchInfo.loginName, e.searchInfo.userName, e.searchInfo.phonenumber));
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
                        case"id":
                            t = "权限ID";
                            break;
                        case"name":
                            t = "菜单名称";
                            break;
                        case"sort":
                            t = "排序";
                            break;
                        case"type":
                            t = "类型";
                            break;
                        case"perms":
                            t = "权限标识"
                    }
                    return t
                }, viewDetail: function (e) {
                    for (var t in this.viewDetailDialog = !0, this.viewInfo.data = [], this.viewInfo.id = e.id, e) "id" !== t && "index" !== t && ("character" === t && (this.viewInfo.characher = e[t].split(",")), this.viewInfo.data.push({
                        name: this.formatName(t),
                        value: e[t]
                    }))
                }, editInfo: function (e) {
                    for (var t in this.editDialog = !0, this.viewInfo.data = [], this.viewInfo.id = e.id, e) "id" !== t && "index" !== t && ("character" === t ? this.viewInfo.characher = e[t].split(",") : this.viewInfo.data.push({
                        name: this.formatName(t),
                        value: e[t]
                    }))
                }, newUser: function () {
                    this.newUserDialog = !0
                }, changeTab: function (e) {
                    this.isTabOne = "search" !== e.name
                }
            }
        }, K = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("el-tabs", {
                    staticClass: "content",
                    attrs: {type: "border-card", value: "Features"},
                    on: {"tab-click": e.changeTab}
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
                        prop: "id",
                        label: "权限ID"
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
                        prop: "sort",
                        label: "排序"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "200",
                        align: "center",
                        prop: "type",
                        label: "类型"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "200",
                        align: "center",
                        prop: "perms",
                        label: "权限标识"
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
                            }, [e._v("修改\n          ")]), e._v(" "), a("el-button", {
                                attrs: {
                                    size: "mini",
                                    type: "danger"
                                }, on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.showDeleteDialog([t.$index], [t.store.states.data[t.$index].id])
                                    }
                                }
                            }, [e._v("删除\n          ")])]
                        }
                    }])
                })], 1)], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "查询选择",
                        name: "search"
                    }
                }, [a("el-input", {
                    staticStyle: {width: "280px"},
                    attrs: {placeholder: "请输入"},
                    nativeOn: {
                        keyup: function (t) {
                            return "button" in t || 13 === t.keyCode ? e.searchUserInfo(t) : null
                        }
                    },
                    model: {
                        value: e.searchInfo.loginName, callback: function (t) {
                            e.$set(e.searchInfo, "loginName", t)
                        }, expression: "searchInfo.loginName"
                    }
                }, [a("template", {slot: "prepend"}, [e._v("用户名")])], 2), e._v(" "), a("el-input", {
                    staticStyle: {width: "280px"},
                    attrs: {placeholder: "请输入"},
                    nativeOn: {
                        keyup: function (t) {
                            return "button" in t || 13 === t.keyCode ? e.searchUserInfo(t) : null
                        }
                    },
                    model: {
                        value: e.searchInfo.userName, callback: function (t) {
                            e.$set(e.searchInfo, "userName", t)
                        }, expression: "searchInfo.userName"
                    }
                }, [a("template", {slot: "prepend"}, [e._v("真实姓名")])], 2), e._v(" "), a("el-input", {
                    staticStyle: {width: "280px"},
                    attrs: {placeholder: "请输入"},
                    nativeOn: {
                        keyup: function (t) {
                            return "button" in t || 13 === t.keyCode ? e.searchUserInfo(t) : null
                        }
                    },
                    model: {
                        value: e.searchInfo.phonenumber, callback: function (t) {
                            e.$set(e.searchInfo, "phonenumber", t)
                        }, expression: "searchInfo.phonenumber"
                    }
                }, [a("template", {slot: "prepend"}, [e._v("电话号码")])], 2), e._v(" "), a("el-row", {staticStyle: {"margin-top": "20px"}}, [a("el-button", {
                    attrs: {type: "success"},
                    on: {click: e.searchUserInfo}
                }, [e._v("立即查询")]), e._v(" "), a("el-button", {on: {click: e.clearSearchInfo}}, [e._v("重置")])], 1), e._v(" "), a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.searchInfo.data, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "id",
                        label: "权限ID"
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
                        prop: "sort",
                        label: "排序"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "200",
                        align: "center",
                        prop: "type",
                        label: "类型"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "200",
                        align: "center",
                        prop: "perms",
                        label: "权限标识"
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
                            }, [e._v("修改\n          ")]), e._v(" "), a("el-button", {
                                attrs: {
                                    size: "mini",
                                    type: "danger"
                                }, on: {
                                    click: function (a) {
                                        a.stopPropagation(), e.showDeleteDialog([t.$index], [t.store.states.data[t.$index]])
                                    }
                                }
                            }, [e._v("删除\n          ")])]
                        }
                    }])
                })], 1)], 1), e._v(" "), a("el-dialog", {
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
                    on: {
                        blur: function (t) {
                            e.checkUserName(e.viewInfo.data[0].value)
                        }
                    },
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
                    }, on: {
                        blur: function (t) {
                            e.checkPhoneNumber(e.viewInfo.data[2].value)
                        }
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
                }, [e._v("备注")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    attrs: {placeholder: "请输入内容"},
                    model: {
                        value: e.viewInfo.data[3].value, callback: function (t) {
                            e.$set(e.viewInfo.data[3], "value", t)
                        }, expression: "viewInfo.data[3].value"
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
                }, [e._v("菜单名称")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    staticClass: "newUserInput",
                    attrs: {placeholder: "请输入内容"},
                    on: {
                        blur: function (t) {
                            e.checkUserName(e.newUserInfo.userName)
                        }
                    },
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
                    on: {
                        blur: function (t) {
                            e.checkPhoneNumber(e.newUserInfo.phone)
                        }
                    },
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
                }, [e._v("备注")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    staticClass: "newUserInput",
                    attrs: {placeholder: "请输入内容"},
                    model: {
                        value: e.newUserInfo.remark, callback: function (t) {
                            e.$set(e.newUserInfo, "remark", t)
                        }, expression: "newUserInfo.remark"
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
        var q = a("VU/8")(B, K, !1, function (e) {
            a("wv6N")
        }, "data-v-22d5a798", null).exports, J = {
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
                }, [a("el-col", {attrs: {span: 1}}, [e._v("服务器:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.channel.value, callback: function (t) {
                            e.$set(e.channel, "value", t)
                        }, expression: "channel.value"
                    }
                }, e._l(e.channel.data, function (e) {
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
                }, [e._v("\n      牛逼服务器\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 5}
                }, [e._v("\n      开服日期\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 6}
                }, [e._v("\n      2018-07-29 10:00:00\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 5}
                }, [e._v("\n      开服天数\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 3}
                }, [e._v("\n      3\n    ")])], 1), e._v(" "), a("el-row", {
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
                }, [e._v("\n      1234567894152\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 5}
                }, [e._v("\n      当前在线角色数\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 6}
                }, [e._v("\n      2018-07-29 10:00:00\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 5}
                }, [e._v("\n      当前活跃用户\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 3}
                }, [e._v("\n      30000000000\n    ")])], 1), e._v(" "), a("el-row", {
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
                }, [e._v("\n      123465.00\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 5}
                }, [e._v("\n      总充值人数\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 6}
                }, [e._v("\n      10\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 5}
                }, [e._v("\n      arpu值\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 3}
                }, [e._v("\n      87.33\n    ")])], 1)], 1)
            }, staticRenderFns: []
        };
        var H = a("VU/8")({
            name: "overview", data: function () {
                return {
                    servers: {data: [{value: "选项1", label: "牛逼服务器"}], value: ""},
                    channel: {data: [{value: "选项1", label: "牛逼渠道"}], value: ""}
                }
            }
        }, J, !1, function (e) {
            a("ztTm")
        }, "data-v-26caf92e", null).exports, Q = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("el-tabs", {
                    staticClass: "content",
                    attrs: {type: "border-card", value: "user"}
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 1}}, [e._v("日期:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-date-picker", {
                    attrs: {
                        type: "date",
                        placeholder: "选择日期"
                    }, model: {
                        value: e.time1, callback: function (t) {
                            e.time1 = t
                        }, expression: "time1"
                    }
                })], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.channel.value, callback: function (t) {
                            e.$set(e.channel, "value", t)
                        }, expression: "channel.value"
                    }
                }, e._l(e.channel.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-tab-pane", {
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
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "payARUP",
                        label: "付费ARUP"
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
        var W = a("VU/8")({
            name: "daily", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({one: t, count: 0});
                return {
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    tableData: e.slice(0, 10),
                    channelValue: "",
                    time1: "",
                    servers: {data: [{value: "选项1", label: "牛逼服务器"}], value: ""},
                    channel: {data: [{value: "选项1", label: "牛逼渠道"}], value: ""}
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
            a("Azkq")
        }, "data-v-1b3c5744", null).exports, Z = {
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
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.channel.value, callback: function (t) {
                            e.$set(e.channel, "value", t)
                        }, expression: "channel.value"
                    }
                }, e._l(e.channel.data, function (e) {
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
        var G = a("VU/8")({
            name: "new-player", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({date: 20170102131248, device: "1", name: "2"});
                return {
                    servers: {data: [{value: "选项1", label: "牛逼服务器"}], value: ""},
                    channel: {data: [{value: "选项1", label: "牛逼渠道"}], value: ""},
                    tableData: e.slice(0, 10),
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
        }, Z, !1, function (e) {
            a("/zT1")
        }, "data-v-6bfd81a3", null).exports, X = {
            name: "active-player", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({date: "2018-8-4 14:35", retain: Math.pow(t, 2)});
                return {
                    tableData: e.slice(0, 10),
                    servers: {data: [{value: "选项1", label: "牛逼服务器"}], value: ""},
                    channel: {data: [{value: "选项1", label: "牛逼渠道"}], value: ""},
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
        }, Y = {
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
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.channel.value, callback: function (t) {
                            e.$set(e.channel, "value", t)
                        }, expression: "channel.value"
                    }
                }, e._l(e.channel.data, function (e) {
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
        var ee = a("VU/8")(X, Y, !1, function (e) {
            a("JuJB")
        }, "data-v-11e8be23", null).exports, te = {
            name: "active-player", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({
                    date: "2018-8-4 14:35",
                    new_player: Math.pow(t, 2) + "%",
                    seven_retain: t + "%",
                    three_retain: 2 * t + "%"
                });
                return {
                    tableData: e.slice(0, 10),
                    servers: {data: [{value: "选项1", label: "牛逼服务器"}], value: ""},
                    channel: {data: [{value: "选项1", label: "牛逼渠道"}], value: ""},
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
        }, ae = {
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
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.channel.value, callback: function (t) {
                            e.$set(e.channel, "value", t)
                        }, expression: "channel.value"
                    }
                }, e._l(e.channel.data, function (e) {
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
                        prop: "three_retain",
                        label: "3留"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "seven_retain",
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
        var ne = a("VU/8")(te, ae, !1, function (e) {
            a("QHqV")
        }, "data-v-338c8bbe", null).exports, le = {
            name: "loss-player", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({
                    date: "2018-8-4 14:35",
                    new_player: Math.pow(t, 2),
                    retain: t + "%"
                });
                return {
                    tableData: e.slice(0, 10),
                    servers: {data: [{value: "选项1", label: "牛逼服务器"}], value: ""},
                    channel: {data: [{value: "选项1", label: "牛逼渠道"}], value: ""},
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
        }, re = {
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
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.channel.value, callback: function (t) {
                            e.$set(e.channel, "value", t)
                        }, expression: "channel.value"
                    }
                }, e._l(e.channel.data, function (e) {
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
        var se = a("VU/8")(le, re, !1, function (e) {
            a("iA9g")
        }, "data-v-7f1fff38", null).exports, ie = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("el-tabs", {
                    staticClass: "content",
                    attrs: {type: "border-card", value: "day"}
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.channel.value, callback: function (t) {
                            e.$set(e.channel, "value", t)
                        }, expression: "channel.value"
                    }
                }, e._l(e.channel.data, function (e) {
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
        var oe = a("VU/8")({
            name: "admin-system", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({one: t, count: 0});
                return {
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    tableData: e.slice(0, 10),
                    servers: {data: [{value: "选项1", label: "牛逼服务器"}], value: ""},
                    channel: {data: [{value: "选项1", label: "牛逼渠道"}], value: ""}
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
        }, ie, !1, function (e) {
            a("BtQI")
        }, "data-v-4621e421", null).exports, ce = {
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
                }, [a("el-col", {attrs: {span: 13}}, [e._v("在线用户: 123456")]), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择渠道"},
                    model: {
                        value: e.channel.value, callback: function (t) {
                            e.$set(e.channel, "value", t)
                        }, expression: "channel.value"
                    }
                }, e._l(e.channel.data, function (e) {
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
                })], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("服务器:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择服务器"},
                    model: {
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
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
        var ue = a("VU/8")({
            name: "online-user", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({date: "2018-8-4 14:35", onlineUser: t + "%"});
                return {
                    tableData: e.slice(0, 10),
                    time1: "",
                    servers: {data: [{value: "选项1", label: "牛逼服务器"}], value: ""},
                    channel: {data: [{value: "选项1", label: "牛逼渠道"}], value: ""},
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
            a("K6Kw")
        }, "data-v-649cd654", null).exports, pe = {
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
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.channel.value, callback: function (t) {
                            e.$set(e.channel, "value", t)
                        }, expression: "channel.value"
                    }
                }, e._l(e.channel.data, function (e) {
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
        var ve = a("VU/8")({
            name: "active-player", data: function () {
                for (var e = [], t = 0; t < 20; t++) e.push({vip: "vip" + t, number_of_people: t * t});
                return {
                    tableData: e.slice(0, 10),
                    community: [{value: "选项1", label: "channel1"}],
                    communityValue: "",
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    servers: {data: [{value: "选项1", label: "牛逼服务器"}], value: ""},
                    channel: {data: [{value: "选项1", label: "牛逼渠道"}], value: ""}
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
        }, pe, !1, function (e) {
            a("iONU")
        }, "data-v-ea327636", null).exports, de = {
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
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.channel.value, callback: function (t) {
                            e.$set(e.channel, "value", t)
                        }, expression: "channel.value"
                    }
                }, e._l(e.channel.data, function (e) {
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
        var he = a("VU/8")({
            name: "active-player", data: function () {
                for (var e = [], t = 0; t < 20; t++) e.push({rank: "等级" + t, number_of_rank: t * t});
                return {
                    tableData: e.slice(0, 10),
                    communityValue: "",
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    servers: {data: [{value: "选项1", label: "牛逼服务器"}], value: ""},
                    channel: {data: [{value: "选项1", label: "牛逼渠道"}], value: ""},
                    community: {data: [{value: "选项1", label: "牛逼区服"}], value: ""}
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
        }, de, !1, function (e) {
            a("JNSh")
        }, "data-v-287fe8e5", null).exports, me = {
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
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.channel.value, callback: function (t) {
                            e.$set(e.channel, "value", t)
                        }, expression: "channel.value"
                    }
                }, e._l(e.channel.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-table", {
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
        var ge = a("VU/8")({
            name: "active-player", data: function () {
                for (var e = [], t = 0; t < 20; t++) e.push({community: "区服" + t, number_of_community: t * t});
                return {
                    tableData: e.slice(0, 10),
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    servers: {data: [{value: "选项1", label: "牛逼服务器"}], value: ""},
                    channel: {data: [{value: "选项1", label: "牛逼渠道"}], value: ""}
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
        }, me, !1, function (e) {
            a("eFz3")
        }, "data-v-7cbf2e04", null).exports, fe = {
            name: "task-information", data: function () {
                for (var e = [], t = 0; t < 20; t++) e.push({list: t, number: Math.pow(t, t)});
                return {
                    tableData: e.slice(0, 10),
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    servers: {data: [{value: "选项1", label: "牛逼服务器"}], value: ""},
                    channel: {data: [{value: "选项1", label: "牛逼渠道"}], value: ""},
                    community: {data: [{value: "选项1", label: "牛逼区服"}], value: ""}
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
                }, [a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择区服"},
                    model: {
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.channel.value, callback: function (t) {
                            e.$set(e.channel, "value", t)
                        }, expression: "channel.value"
                    }
                }, e._l(e.channel.data, function (e) {
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
        var _e = a("VU/8")(fe, be, !1, function (e) {
            a("5Z3B")
        }, "data-v-e593de58", null).exports, we = {
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
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.channel.value, callback: function (t) {
                            e.$set(e.channel, "value", t)
                        }, expression: "channel.value"
                    }
                }, e._l(e.channel.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("日期:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-date-picker", {
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
        var ye = a("VU/8")({
            name: "output-expends", data: function () {
                for (var e = [], t = 0; t < 20; t++) e.push({name: "生命宝石" + t, output: 2 * t, expends: t});
                return {
                    tableData: e.slice(0, 10),
                    time1: "",
                    community: [{value: "选项1", label: "channel1"}],
                    communityValue: "",
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    servers: {data: [{value: "选项1", label: "牛逼服务器"}], value: ""},
                    channel: {data: [{value: "选项1", label: "牛逼渠道"}], value: ""}
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
        }, we, !1, function (e) {
            a("jToE")
        }, "data-v-562b8ba4", null).exports, xe = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("el-tabs", {
                    staticClass: "content",
                    attrs: {type: "border-card", value: "power"}
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择渠道"},
                    model: {
                        value: e.channel.value, callback: function (t) {
                            e.$set(e.channel, "value", t)
                        }, expression: "channel.value"
                    }
                }, e._l(e.channel.data, function (e) {
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
        var ke = a("VU/8")({
            name: "rank-information", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({one: t, count: 0});
                return {
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    tableData: e.slice(0, 10),
                    servers: {data: [{value: "选项1", label: "牛逼服务器"}], value: ""},
                    channel: {data: [{value: "选项1", label: "牛逼渠道"}], value: ""}
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
            a("90M1")
        }, "data-v-4e07f714", null).exports, Ce = {
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
        var ze = a("VU/8")({
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
        }, Ce, !1, function (e) {
            a("18uj")
        }, "data-v-7785042f", null).exports, Ie = {
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
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.channel.value, callback: function (t) {
                            e.$set(e.channel, "value", t)
                        }, expression: "channel.value"
                    }
                }, e._l(e.channel.data, function (e) {
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
        var Se = a("VU/8")({
            name: "user-rank", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({rankList: "等级" + t, count: t});
                return {
                    tableData: e.slice(0, 10),
                    channelValue: "",
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    servers: {data: [{value: "选项1", label: "牛逼区服"}], value: ""},
                    channel: {data: [{value: "选项1", label: "牛逼渠道"}], value: ""}
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
        }, Ie, !1, function (e) {
            a("mLVr")
        }, "data-v-e258d49e", null).exports, De = {
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
        }, Ue = {
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
        var Ne = a("VU/8")(De, Ue, !1, function (e) {
            a("9zCC")
        }, "data-v-02abf34d", null).exports, $e = {
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
                        prop: "id",
                        label: "道具id"
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
        var Re = a("VU/8")({
            name: "activity-output-expends", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({output: t, expends: t, id: 0});
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
        }, $e, !1, function (e) {
            a("JsaW")
        }, "data-v-e237ff66", null).exports, Pe = {
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
        var je = a("VU/8")({
            name: "admin-system", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({one: t, count: 0, name: "猪猪侠"});
                return {
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    tableData: e.slice(0, 10),
                    channel: [{value: "选项1", label: "channel1"}],
                    channelValue: "",
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
        }, Pe, !1, function (e) {
            a("uQDH")
        }, "data-v-62550066", null).exports, Ee = {
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
                })], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.channel.value, callback: function (t) {
                            e.$set(e.channel, "value", t)
                        }, expression: "channel.value"
                    }
                }, e._l(e.channel.data, function (e) {
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
        var Ve = a("VU/8")({
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
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    time1: "",
                    time2: "",
                    servers: {data: [{value: "选项1", label: "牛逼服务器"}], value: ""},
                    channel: {data: [{value: "选项1", label: "牛逼渠道"}], value: ""}
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
        }, Ee, !1, function (e) {
            a("qQyu")
        }, "data-v-30bb2d5a", null).exports, Te = {
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
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.channel.value, callback: function (t) {
                            e.$set(e.channel, "value", t)
                        }, expression: "channel.value"
                    }
                }, e._l(e.channel.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-table", {
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
        var Fe = a("VU/8")({
            name: "user-rank", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({billingPoint: "计费点" + t, count: t, count1: t});
                return {
                    tableData: e.slice(0, 10),
                    channelValue: "",
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    servers: {data: [{value: "选项1", label: "牛逼服务器"}], value: ""},
                    channel: {data: [{value: "选项1", label: "牛逼渠道"}], value: ""}
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
        }, Te, !1, function (e) {
            a("TqG/")
        }, "data-v-c94d8f78", null).exports, Me = {
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
        var Oe = a("VU/8")({
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
        }, Me, !1, function (e) {
            a("9VM1")
        }, "data-v-00d8c9dc", null).exports, Le = {
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
        var Ae = a("VU/8")({name: "system-mail"}, Le, !1, function (e) {
            a("gxZj")
        }, "data-v-2e3f04c9", null).exports, Be = {
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
        var Ke = a("VU/8")({name: "inform-management"}, Be, !1, function (e) {
            a("oJEQ")
        }, "data-v-30560a41", null).exports, qe = {
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
        var Je = a("VU/8")({name: "chat-monitor"}, qe, !1, function (e) {
            a("a2N3")
        }, "data-v-2e0cfe1e", null).exports, He = {
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
        var Qe = a("VU/8")({name: "chat-monitor"}, He, !1, function (e) {
            a("BcMH")
        }, "data-v-94c24ed6", null).exports, We = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {staticClass: "ltv"}, [a("el-row", {
                    staticClass: "top",
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 4}}, [a("el-button", {
                    attrs: {type: "success", size: "small"},
                    on: {
                        click: function (t) {
                            return t.stopPropagation(), e.newUser(t)
                        }
                    }
                }, [e._v("筛选")]), e._v(" "), a("el-button", {
                    attrs: {
                        type: "warning",
                        size: "small"
                    }
                }, [a("i", {staticClass: "el-icon-share"}), e._v("导出 Excel")])], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.channel.value, callback: function (t) {
                            e.$set(e.channel, "value", t)
                        }, expression: "channel.value"
                    }
                }, e._l(e.channel.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-table", {
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
        var Ze = a("VU/8")({
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
                    }],
                    servers: {data: [{value: "选项1", label: "牛逼服务器"}], value: ""},
                    channel: {data: [{value: "选项1", label: "牛逼渠道"}], value: ""}
                }
            }
        }, We, !1, function (e) {
            a("qZX5")
        }, "data-v-359c1859", null).exports, Ge = {
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
        var Xe = a("VU/8")({
            name: "recharge", data: function () {
                return {
                    userName: {select: "全部平台", options: [{value: "选项1", label: "全部平台"}]},
                    server: {select: "全部服务器", options: [{value: "选项1", label: "全部服务器"}]},
                    recharge: {select: "月卡", options: [{value: "选项1", label: "月卡"}]}
                }
            }
        }, Ge, !1, function (e) {
            a("ks9u")
        }, "data-v-4651a4aa", null).exports, Ye = {
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
                })], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("服务器:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.channel.value, callback: function (t) {
                            e.$set(e.channel, "value", t)
                        }, expression: "channel.value"
                    }
                }, e._l(e.channel.data, function (e) {
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
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "operate",
                        label: "操作人"
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
        var et = a("VU/8")({
            name: "loss-player", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({
                    date: "2018-8-4 14:35",
                    people_number: t + 1,
                    people_number1: t + 2,
                    count: t + 1,
                    count1: t + 2,
                    amount: t + 1,
                    amount1: t + 2,
                    operate: "zzz"
                });
                return {
                    tableData: e.slice(0, 10),
                    page_size: 10,
                    current_page: 1,
                    item: e,
                    time1: "",
                    time2: "",
                    servers: {data: [{value: "选项1", label: "牛逼服务器"}], value: ""},
                    channel: {data: [{value: "选项1", label: "牛逼渠道"}], value: ""}
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
        }, Ye, !1, function (e) {
            a("4w7F")
        }, "data-v-3e8dc7cc", null).exports;
        n.default.use(s.a);
        var tt = new s.a({
            routes: [{
                path: "/",
                name: "management",
                component: $,
                children: [{
                    path: "/management/rechargeLog",
                    name: "rechargeLog",
                    component: et
                }, {path: "/management/recharge", name: "recharge", component: Xe}, {
                    path: "/management/ltv",
                    name: "ltv",
                    component: Ze
                }, {
                    path: "/management/playerInfoSearch",
                    name: "playerInfoSearch",
                    component: Qe
                }, {
                    path: "/management/chatMonitor",
                    name: "chatMonitor",
                    component: Je
                }, {
                    path: "/management/informManagement",
                    name: "informManagement",
                    component: Ke
                }, {path: "/management/systemMail", name: "systemMail", component: Ae}, {
                    path: "/management/gameOpen",
                    name: "gameOpen",
                    component: Oe
                }, {
                    path: "/management/rankInformation",
                    name: "rankInformation",
                    component: ke
                }, {
                    path: "/management/outputExpends",
                    name: "outputExpends",
                    component: ye
                }, {
                    path: "/management/taskInformation",
                    name: "taskInformation",
                    component: _e
                }, {path: "/management/daily", name: "daily", component: W}, {
                    path: "/management/listManagement",
                    name: "listManagement",
                    component: q
                }, {
                    path: "/management/billingPointAnalysis",
                    name: "billingPointAnalysis",
                    component: Fe
                }, {
                    path: "/management/rechargeEveryDay",
                    name: "rechargeEveryDay",
                    component: Ve
                }, {
                    path: "/management/activityRank",
                    name: "activityRank",
                    component: je
                }, {
                    path: "/management/activityOutputExpends",
                    name: "activityOutputExpends",
                    component: Re
                }, {
                    path: "/management/activityPeopleNumber",
                    name: "activityPeopleNumber",
                    component: Ne
                }, {
                    path: "/management/loosLvPlayer",
                    name: "loosLvPlayer",
                    component: oe
                }, {
                    path: "/management/loosPlayer",
                    name: "loosPlayer",
                    component: se
                }, {
                    path: "/management/gameUserRank",
                    name: "gameUserRank",
                    component: Se
                }, {
                    path: "/management/channelData",
                    name: "channelData",
                    component: ze
                }, {
                    path: "/management/gameBehaviorNumber",
                    name: "gameBehaviorNumber",
                    component: ge
                }, {
                    path: "/management/gameBehaviorRank",
                    name: "gameBehaviorRank",
                    component: he
                }, {
                    path: "/management/gameBehaviorVip",
                    name: "gameBehaviorVip",
                    component: ve
                }, {
                    path: "/management/onlineUser",
                    name: "onlineUser",
                    component: ue
                }, {
                    path: "/management/admin-management",
                    name: "adminSystem",
                    component: V
                }, {path: "/management/role-management", name: "roleManagement", component: A}, {
                    path: "/",
                    name: "overview",
                    component: H
                }, {path: "/management/newPlayer", name: "newPlayer", component: G}, {
                    path: "/management/activePlayer",
                    name: "activePlayer",
                    component: ee
                }, {path: "/management/retainPlayer", name: "retainPlayer", component: ne}]
            }]
        }), at = a("zL8q"), nt = a.n(at);
        a("tvR6");
        n.default.use(nt.a), n.default.config.productionTip = !1, n.default.prototype.$http = b.a, n.default.prototype.$checkData = function (e) {
            var t = this;
            return new F.a(function (a, n) {
                e.ErrorMsg ? (t.$message({
                    showClose: !0,
                    message: e.ErrorMsg,
                    type: "error"
                }), n(e.ErrorMsg)) : a(e.data)
            })
        }, new n.default({el: "#app", router: tt, components: {App: r}, template: "<App/>"})
    }, QHqV: function (e, t) {
    }, RGLD: function (e, t) {
    }, "SpM/": function (e, t) {
    }, "TqG/": function (e, t) {
    }, a2N3: function (e, t) {
    }, cDog: function (e, t) {
    }, eFz3: function (e, t) {
    }, gxZj: function (e, t) {
    }, hRnl: function (e, t) {
    }, iA9g: function (e, t) {
    }, iONU: function (e, t) {
    }, jToE: function (e, t) {
    }, ks9u: function (e, t) {
    }, mLVr: function (e, t) {
    }, oJEQ: function (e, t) {
    }, qQyu: function (e, t) {
    }, qZX5: function (e, t) {
    }, tvR6: function (e, t) {
    }, uQDH: function (e, t) {
    }, wv6N: function (e, t) {
    }, ztTm: function (e, t) {
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