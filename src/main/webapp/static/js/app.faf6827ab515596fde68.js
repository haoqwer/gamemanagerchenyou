webpackJsonp([1], {
    "/vOn": function (e, t) {
    }, "9VM1": function (e, t) {
    }, "9zCC": function (e, t) {
    }, BcMH: function (e, t) {
    }, CeZa: function (e, t) {
    }, D0cx: function (e, t) {
    }, DeHJ: function (e, t) {
    }, Fied: function (e, t) {
    }, GbUp: function (e, t) {
    }, HDdk: function (e, t) {
    }, HhBa: function (e, t) {
    }, "Hm/4": function (e, t) {
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
        var i = a("VU/8")({name: "App"}, l, !1, function (e) {
            a("HwS2")
        }, null, null).exports, r = a("/ocq"), s = a("zwpc"), o = {
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
                    nav: [{
                        title: "概况",
                        child: [{title: "游戏概况", path: "/management/overview"}, {title: "日报", path: "/management/daily"}]
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
                        }, {title: "玩家信息查询", path: "/management/playerInfoSearch"}]
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
                showEditPswDialog: function (e) {
                    "0" === e ? this.editPswDialog = !0 : "1" === e && (localStorage.removeItem("user"), localStorage.removeItem("password"), this.$router.push("/"))
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
                        "default-active": "/management/admin-management",
                        "background-color": "#2f4050",
                        "text-color": "#fff",
                        "active-text-color": "#ffd04b"
                    }
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
                }, [a("el-header", {staticStyle: {background: "#283847"}}, [a("el-dropdown", {on: {command: e.showEditPswDialog}}, [a("i", {
                    staticClass: "el-icon-setting",
                    staticStyle: {"margin-right": "15px", color: "#fff"}
                }), e._v(" "), a("el-dropdown-menu", {
                    attrs: {slot: "dropdown"},
                    slot: "dropdown"
                }, [a("el-dropdown-item", {attrs: {command: "0"}}, [a("i", {staticClass: "el-icon-edit"}), e._v("修改密码")]), e._v(" "), a("el-dropdown-item", {attrs: {command: "1"}}, [a("i", {staticClass: "el-icon-circle-close"}), e._v("" +
                    "退出")])], 1)], 1), e._v(" "), a("span", {staticStyle: {color: "#fff"}}, [e._v("你好, 九伐中原")])], 1), e._v(" "), a("router-view"), e._v(" "), a("el-footer", {
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
                    attrs: {src: "./static/img/calculator.gif"},
                    on: {click: e.toggleCalc}
                })]), e._v(" "), e.showCalc ? a("calculator", {on: {hideMsg: e.toggleCalc}}) : e._e()], 1)
            }, staticRenderFns: []
        };
        var g = a("VU/8")(p, u, !1, function (e) {
            a("rc81")
        }, "data-v-2fa295c4", null).exports, d = a("gRE1"), h = a.n(d), v = a("fZjL"), m = a.n(v), _ = {
            name: "admin-system", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({
                    name: "司马仲达",
                    pwd: "",
                    raceName: "司马懿" + t + "号",
                    phone: "15172712800" + t,
                    character: "吃瓜群众",
                    state: "关禁闭"
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
                    var a = m()(e.row), n = h()(e.row);
                    this.state.viewInfo = [], a.forEach(function (e, a) {
                        t.state.viewInfo.push({name: t.formatName(e), value: n[a]})
                    })
                }, editInfo: function (e) {
                    this.editDialog = !0, this.state.editInfo = e.row
                }, newUser: function () {
                    this.newUserDialog = !0
                }
            }
        }, b = {
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
                        prop: "name",
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
                }, [a("template", {slot: "prepend"}, [e._v("用户名")])], 2), e._v(" "), a("el-input", {
                    staticStyle: {width: "280px"},
                    attrs: {placeholder: "请输入"}
                }, [a("template", {slot: "prepend"}, [e._v("真实姓名")])], 2), e._v(" "), a("el-input", {
                    staticStyle: {width: "280px"},
                    attrs: {placeholder: "请输入"}
                }, [a("template", {slot: "prepend"}, [e._v("电话号码")])], 2), e._v(" "), a("el-row", {staticStyle: {"margin-top": "20px"}}, [a("el-button", {attrs: {type: "success"}}, [e._v("立即查询")]), e._v(" "), a("el-button", [e._v("重置")])], 1), e._v(" "), a("el-table", {
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
                }, [e._v("用户名")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("用户姓名")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("el-row", {
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
                        value: e.user_character_select, callback: function (t) {
                            e.user_character_select = t
                        }, expression: "user_character_select"
                    }
                }, e._l(e.user_character, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("用户状态")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1)], 1), e._v(" "), a("el-dialog", {
                    attrs: {
                        center: "",
                        width: "600px",
                        title: "添加管理员",
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
                }, [e._v("用户名")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("密码框")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {
                    attrs: {
                        placeholder: "请输入内容",
                        type: "password"
                    }
                })], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("用户姓名")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("el-row", {
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
                        value: e.user_character_select, callback: function (t) {
                            e.user_character_select = t
                        }, expression: "user_character_select"
                    }
                }, e._l(e.user_character, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {
                    attrs: {
                        offset: 3,
                        span: 3
                    }
                }, [e._v("用户状态")]), e._v(" "), a("el-col", {attrs: {span: 12}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("div", {
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
        var f = a("VU/8")(_, b, !1, function (e) {
            a("HDdk")
        }, "data-v-e798c84e", null).exports, y = {
            name: "admin-system", data: function () {
                for (var e = [], t = 0; t < 100; t++) e.push({name: "丞相" + t, label: "诸葛亮"});
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
                    }, {id: 2, label: "一级 2", children: [{id: 5, label: "二级 2-1"}, {id: 6, label: "二级 2-2"}]}, {
                        id: 3,
                        label: "一级 3",
                        children: [{id: 7, label: "二级 3-1"}, {id: 8, label: "二级 3-2"}]
                    }],
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
                    var a = m()(e.row), n = h()(e.row);
                    this.state.viewInfo = [], a.forEach(function (e, a) {
                        t.state.viewInfo.push({name: t.formatName(e), value: n[a]})
                    })
                }, editInfo: function (e) {
                    this.editDialog = !0, this.state.editInfo = e.row
                }, newUser: function () {
                    this.newUserDialog = !0
                }
            }
        }, w = {
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
        var x = a("VU/8")(y, w, !1, function (e) {
            a("/vOn")
        }, "data-v-f71eedb6", null).exports, z = {
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
                    var a = m()(e.row), n = h()(e.row);
                    this.state.viewInfo = [], a.forEach(function (e, a) {
                        t.state.viewInfo.push({name: t.formatName(e), value: n[a]})
                    })
                }, editInfo: function (e) {
                    this.editDialog = !0, this.state.editInfo = e.row
                }, newUser: function () {
                    this.newUserDialog = !0
                }
            }
        }, C = {
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
        var k = a("VU/8")(z, C, !1, function (e) {
            a("eGeP")
        }, "data-v-4f272c24", null).exports, D = {
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
                        gutter: "20",
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
                        gutter: "20",
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
                        gutter: "20",
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
        var S = a("VU/8")({
            name: "overview", data: function () {
                return {servers: [{value: "选项1", label: "牛逼服务器"}]}
            }
        }, D, !1, function (e) {
            a("Hm/4")
        }, "data-v-7f6f16b4", null).exports, V = {
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
        var P = a("VU/8")({
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
        }, V, !1, function (e) {
            a("SxxJ")
        }, "data-v-3f633a45", null).exports, j = {
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
        var U = a("VU/8")({
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
        }, j, !1, function (e) {
            a("CeZa")
        }, "data-v-0a553e28", null).exports, E = {
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
        }, R = {
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
        var I = a("VU/8")(E, R, !1, function (e) {
            a("r2Q6")
        }, "data-v-361c2e28", null).exports, M = {
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
        }, F = {
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
        var $ = a("VU/8")(M, F, !1, function (e) {
            a("W0FJ")
        }, "data-v-2b9240d0", null).exports, N = {
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
        }, O = {
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
        var T = a("VU/8")(N, O, !1, function (e) {
            a("X1ur")
        }, "data-v-35ceb3f0", null).exports, A = {
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
        var L = a("VU/8")({
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
        }, A, !1, function (e) {
            a("Omf/")
        }, "data-v-1f70671f", null).exports, B = {
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
        var H = a("VU/8")({
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
        }, B, !1, function (e) {
            a("u9Y3")
        }, "data-v-3f94e4cf", null).exports, J = {
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
        var q = a("VU/8")({
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
        }, J, !1, function (e) {
            a("K/X1")
        }, "data-v-2e0b1841", null).exports, K = {
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
        var W = a("VU/8")({
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
        }, K, !1, function (e) {
            a("S1wc")
        }, "data-v-13fea2ac", null).exports, G = {
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
        var Q = a("VU/8")({
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
        }, G, !1, function (e) {
            a("JG7b")
        }, "data-v-a7866d1e", null).exports, X = {
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
        }, Z = {
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
        var Y = a("VU/8")(X, Z, !1, function (e) {
            a("LVDI")
        }, "data-v-62424cc3", null).exports, ee = {
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
        var te = a("VU/8")({
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
        }, ee, !1, function (e) {
            a("Fied")
        }, "data-v-d3a96cce", null).exports, ae = {
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
        var ne = a("VU/8")({
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
        }, ae, !1, function (e) {
            a("D0cx")
        }, "data-v-09f64f57", null).exports, le = {
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
        var ie = a("VU/8")({
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
        }, le, !1, function (e) {
            a("JOUd")
        }, "data-v-4525147a", null).exports, re = {
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
        var se = a("VU/8")({
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
        }, re, !1, function (e) {
            a("S3NL")
        }, "data-v-7e2ee11f", null).exports, oe = {
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
        }, ce = {
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
        var pe = a("VU/8")(oe, ce, !1, function (e) {
            a("9zCC")
        }, "data-v-02abf34d", null).exports, ue = {
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
        var ge = a("VU/8")({
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
        }, ue, !1, function (e) {
            a("ogPK")
        }, "data-v-d7594cda", null).exports, de = {
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
        var he = a("VU/8")({
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
        }, de, !1, function (e) {
            a("c5tj")
        }, "data-v-3d174416", null).exports, ve = {
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
        var me = a("VU/8")({
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
        }, ve, !1, function (e) {
            a("GbUp")
        }, "data-v-16534002", null).exports, _e = {
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
        var be = a("VU/8")({
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
        }, _e, !1, function (e) {
            a("HhBa")
        }, "data-v-7fadc6b6", null).exports, fe = {
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
        var ye = a("VU/8")({
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
        }, fe, !1, function (e) {
            a("9VM1")
        }, "data-v-00d8c9dc", null).exports, we = {
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
        var xe = a("VU/8")({name: "system-mail"}, we, !1, function (e) {
            a("DeHJ")
        }, "data-v-3e51d30e", null).exports, ze = {
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
        var Ce = a("VU/8")({name: "inform-management"}, ze, !1, function (e) {
            a("oJEQ")
        }, "data-v-30560a41", null).exports, ke = {
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
        var De = a("VU/8")({name: "chat-monitor"}, ke, !1, function (e) {
            a("a2N3")
        }, "data-v-2e0cfe1e", null).exports, Se = {
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
        var Ve = a("VU/8")({name: "chat-monitor"}, Se, !1, function (e) {
            a("BcMH")
        }, "data-v-94c24ed6", null).exports;
        n.default.use(r.a);
        var Pe = new r.a({
            routes: [{
                path: "/",
                name: "management",
                component: g,
                children: [{path: "/", name: "playerInfoSearch", component: Ve}, {
                    path: "/management/chatMonitor",
                    name: "chatMonitor",
                    component: De
                }, {
                    path: "/management/informManagement",
                    name: "informManagement",
                    component: Ce
                }, {path: "/management/systemMail", name: "systemMail", component: xe}, {
                    path: "/management/gameOpen",
                    name: "gameOpen",
                    component: ye
                }, {
                    path: "/management/rankInformation",
                    name: "rankInformation",
                    component: ne
                }, {
                    path: "/management/outputExpends",
                    name: "outputExpends",
                    component: te
                }, {
                    path: "/management/taskInformation",
                    name: "taskInformation",
                    component: Y
                }, {path: "/management/daily", name: "daily", component: P}, {
                    path: "/management/listManagement",
                    name: "listManagement",
                    component: k
                }, {
                    path: "/management/billingPointAnalysis",
                    name: "billingPointAnalysis",
                    component: be
                }, {
                    path: "/management/rechargeEveryDay",
                    name: "rechargeEveryDay",
                    component: me
                }, {
                    path: "/management/activityRank",
                    name: "activityRank",
                    component: he
                }, {
                    path: "/management/activityOutputExpends",
                    name: "activityOutputExpends",
                    component: ge
                }, {
                    path: "/management/activityPeopleNumber",
                    name: "activityPeopleNumber",
                    component: pe
                }, {
                    path: "/management/loosLvPlayer",
                    name: "loosLvPlayer",
                    component: L
                }, {
                    path: "/management/loosPlayer",
                    name: "loosPlayer",
                    component: T
                }, {
                    path: "/management/gameUserRank",
                    name: "gameUserRank",
                    component: se
                }, {
                    path: "/management/channelData",
                    name: "channelData",
                    component: ie
                }, {
                    path: "/management/gameBehaviorNumber",
                    name: "gameBehaviorNumber",
                    component: Q
                }, {
                    path: "/management/gameBehaviorRank",
                    name: "gameBehaviorRank",
                    component: W
                }, {
                    path: "/management/gameBehaviorVip",
                    name: "gameBehaviorVip",
                    component: q
                }, {
                    path: "/management/onlineUser",
                    name: "onlineUser",
                    component: H
                }, {
                    path: "/management/admin-management",
                    name: "adminSystem",
                    component: f
                }, {
                    path: "/management/role-management",
                    name: "roleManagement",
                    component: x
                }, {path: "/management/overview", name: "overview", component: S}, {
                    path: "/management/newPlayer",
                    name: "newPlayer",
                    component: U
                }, {
                    path: "/management/activePlayer",
                    name: "activePlayer",
                    component: I
                }, {path: "/management/retainPlayer", name: "retainPlayer", component: $}]
            }]
        }), je = a("zL8q"), Ue = a.n(je);
        a("tvR6");
        n.default.use(Ue.a), n.default.config.productionTip = !1, new n.default({
            el: "#app",
            router: Pe,
            components: {App: i},
            template: "<App/>"
        })
    }, "Omf/": function (e, t) {
    }, S1wc: function (e, t) {
    }, S3NL: function (e, t) {
    }, SxxJ: function (e, t) {
    }, W0FJ: function (e, t) {
    }, X1ur: function (e, t) {
    }, a2N3: function (e, t) {
    }, c5tj: function (e, t) {
    }, eGeP: function (e, t) {
    }, hRnl: function (e, t) {
    }, oJEQ: function (e, t) {
    }, ogPK: function (e, t) {
    }, r2Q6: function (e, t) {
    }, rc81: function (e, t) {
    }, tvR6: function (e, t) {
    }, u9Y3: function (e, t) {
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