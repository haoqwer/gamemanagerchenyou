webpackJsonp([1], {
    "+90l": function (e, t) {
    }, "+YQ9": function (e, t) {
    }, "/uQs": function (e, t) {
    }, "3y5I": function (e, t) {
    }, "4w7F": function (e, t) {
    }, "8w7e": function (e, t) {
    }, "8wUX": function (e, t) {
    }, "9VM1": function (e, t) {
    }, BE8B: function (e, t) {
    }, Gcsl: function (e, t) {
    }, HCkT: function (e, t) {
    }, IvgY: function (e, t) {
    }, NHnr: function (e, t, a) {
        "use strict";
        Object.defineProperty(t, "__esModule", {value: !0});
        var n = a("Xxa5"), l = a.n(n), r = a("exGp"), s = a.n(r), o = a("7+uW"), i = {
            render: function () {
                var e = this.$createElement, t = this._self._c || e;
                return t("div", {attrs: {id: "app"}}, [t("router-view")], 1)
            }, staticRenderFns: []
        };
        var c = a("VU/8")({name: "App"}, i, !1, function (e) {
            a("/uQs")
        }, null, null).exports, u = a("/ocq"), p = a("zwpc"), v = {
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

        function k(e) {
            return b.a.get("/user/checkLoginNameUnique.do?loginName=" + e)
        }

        function x(e) {
            return b()(g()({method: "POST", url: "/user/checkPhoneUnique.do", data: {phonenumber: e}}, _))
        }

        function D(e) {
            return b()(g()({method: "POST", url: "/user/saveUser.do", data: e}, _))
        }

        function T(e) {
            return b()(g()({method: "POST", url: "/user/updateUser.do", data: e}, _))
        }

        function C() {
            return b()({url: "/menu/listMenu.do"})
        }

        function I() {
            var e = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : "";
            return b()({url: "/menu/roleMenuTreeData.do", params: {roleId: e}})
        }

        function z(e) {
            return b.a.get("/role/search.do?roleName=" + e.roleName + "&page=" + e.page + "&rows=" + e.size)
        }

        function P(e, t, a, n, l, r) {
            return b.a.get("/general/listUserCount.do", {
                params: {
                    start: e,
                    end: t,
                    serverId: a,
                    channelId: n,
                    page: l,
                    rows: r
                }
            })
        }

        function S(e, t, a, n, l, r) {
            return b.a.get("/general/listInCome.do", {
                params: {
                    start: e,
                    end: t,
                    serverId: a,
                    channelId: n,
                    page: l,
                    rows: r
                }
            })
        }

        function U(e, t, a, n, l, r) {
            return b.a.get("/general/listChannel.do", {
                params: {
                    start: e,
                    end: t,
                    serverId: a,
                    channelId: n,
                    page: l,
                    rows: r
                }
            })
        }

        function R(e, t, a, n, l, r) {
            return b.a.get("/game/listLoginDay.do", {
                params: {
                    start: e,
                    end: t,
                    serverId: a,
                    channelId: n,
                    page: l,
                    rows: r
                }
            })
        }

        function N(e, t, a, n, l, r) {
            return b.a.get("/game/listAwayGrade.do", {
                params: {
                    start: e,
                    end: t,
                    serverId: a,
                    channelId: n,
                    page: l,
                    rows: r
                }
            })
        }

        function $(e, t, a, n, l, r) {
            return b.a.get("/game/listAwayOutput.do", {
                params: {
                    start: e,
                    end: t,
                    serverId: a,
                    channelId: n,
                    page: l,
                    rows: r
                }
            })
        }

        function E(e, t, a, n, l, r) {
            return b.a.get("/behavior/listForceRank.do", {
                params: {
                    start: e,
                    end: t,
                    serverId: a,
                    channelId: n,
                    page: l,
                    rows: r
                }
            })
        }

        function L(e, t, a, n, l, r) {
            return b.a.get("/behavior/listLevelRank.do", {
                params: {
                    start: e,
                    end: t,
                    serverId: a,
                    channelId: n,
                    page: l,
                    rows: r
                }
            })
        }

        function j(e, t, a, n, l, r) {
            return b.a.get("/behavior/listIntimacyRank.do", {
                params: {
                    start: e,
                    end: t,
                    serverId: a,
                    channelId: n,
                    page: l,
                    rows: r
                }
            })
        }

        function O(e, t, a, n, l, r) {
            return b.a.get("/behavior/listGangRank.do", {
                params: {
                    start: e,
                    end: t,
                    serverId: a,
                    channelId: n,
                    page: l,
                    rows: r
                }
            })
        }

        function V(e, t, a, n, l) {
            return b.a.get("/activity/listActivityRank.do", {params: {start: e, end: t, serverId: a, page: n, rows: l}})
        }

        function A(e, t, a, n, l) {
            return b.a.get("/activity/listPersonRank.do", {params: {start: e, end: t, serverId: a, page: n, rows: l}})
        }

        var F, M = a("//Fk"), G = a.n(M), W = {ServerList: {}, ChannelList: {}}, B = (F = s()(l.a.mark(function e() {
            var t;
            return l.a.wrap(function (e) {
                for (; ;) switch (e.prev = e.next) {
                    case 0:
                        return e.next = 2, G.a.all([b.a.get("/select/listServer.do"), b.a.get("/select/listChannel.do")]);
                    case 2:
                        t = e.sent, W.ServerList = t[0].data.data, W.ChannelList = t[1].data.data;
                    case 5:
                    case"end":
                        return e.stop()
                }
            }, e, this)
        })), function () {
            return F.apply(this, arguments)
        });

        function K(e) {
            var t = this;
            return new G.a(function (a, n) {
                console.log(e), e.ErrorMsg ? (t.$message({
                    showClose: !0,
                    message: e.ErrorMsg,
                    type: "error"
                }), n(e.ErrorMsg)) : a(e.data)
            })
        }

        var q = [{label: "玩家新增", value: ""}, {label: " 玩家名称", value: ""}, {label: " 玩家id", value: ""}, {
            label: " 玩家区服",
            value: ""
        }, {label: " 玩家渠道", value: ""}, {label: "  玩家帮派", value: ""}, {label: " 帮派编号", value: ""}, {
            label: " 玩家等级",
            value: ""
        }, {label: " Vip等级", value: ""}, {label: " 玩家角色", value: ""}, {label: " 创建时间", value: ""}, {
            label: " 任务进度",
            value: ""
        }, {label: " 关卡进度", value: ""}, {label: " 元宝数量", value: ""}, {label: " 政绩数量", value: ""}, {
            label: " 银两数量",
            value: ""
        }, {label: " 粮草数量 ", value: ""}, {label: "  士兵数量", value: ""}, {label: " 势力值", value: ""}, {
            label: " 武力值",
            value: ""
        }, {label: " 智力值", value: ""}, {label: " 政治值", value: ""}, {label: " 魅力值", value: ""}, {
            label: " 拥有道具内容",
            value: ""
        }, {label: " 帮派信息", value: ""}, {label: " 帮派名称 ", value: ""}, {label: " 帮派id ", value: ""}, {
            label: " 帮派人数 ",
            value: ""
        }, {label: "  帮派等级 ", value: ""}, {label: "  帮派经验 ", value: ""}, {
            label: " 帮派财富 ",
            value: ""
        }, {label: " 帮会势力值 ", value: ""}], Y = [{
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
        }, {title: "推送设置", child: [{title: "消息发布"}]}];

        function Q(e) {
            var t = X(e), a = [];
            return Y.forEach(function (e) {
                var n = {title: e.title, child: []};
                t.some(function (t) {
                    e.title === t.label && e.child.forEach(function (e) {
                        t.children.some(function (t) {
                            if (e.title === t.label) return n.child.push(e), !0
                        })
                    })
                }), 0 !== n.child.length && a.push(n)
            }), a
        }

        function X(e) {
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

        function H() {
            var e = this;
            this.servers && (this.servers.data.push({
                value: null,
                label: "---------------------------"
            }), this.servers.value = null, W.ServerList.forEach(function (t) {
                e.servers.data.push({value: t.serverId, label: t.serverName})
            })), this.channel && (this.channel.data.push({
                value: null,
                label: "---------------------------"
            }), this.channel.value = null, W.ChannelList.forEach(function (t) {
                e.channel.data.push({value: t.channelId, label: t.channelName})
            }))
        }

        var J = {
            name: "management", data: function () {
                return {
                    showCalc: !1,
                    editPswDialog: !1,
                    selectPage: "游戏概况",
                    nav: [],
                    user: {},
                    password: {oldWord: "", newWord: "", newWord2: ""}
                }
            }, components: {calculator: h}, mounted: function () {
                var e = this;
                return s()(l.a.mark(function t() {
                    var a, n;
                    return l.a.wrap(function (t) {
                        for (; ;) switch (t.prev = t.next) {
                            case 0:
                                return t.prev = 0, t.next = 3, b()({url: "/getUser.do"});
                            case 3:
                                return a = t.sent, e.user = a.data, t.next = 7, b.a.get("/index.do");
                            case 7:
                                n = t.sent.data.data, e.nav = Q(n), e.editPswDialog = !1, t.next = 15;
                                break;
                            case 12:
                                t.prev = 12, t.t0 = t.catch(0), console.log(t.t0);
                            case 15:
                            case"end":
                                return t.stop()
                        }
                    }, t, e, [[0, 12]])
                }))()
            }, methods: {
                enterEditPassword: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, n = e.password.oldWord, l = e.password.newWord, r = e.password.newWord2, b()(g()({
                                        method: "POST",
                                        url: "/user/changepwd.do",
                                        data: {newPassword: l, oldPassword: n, againPassword: r}
                                    }, _));
                                case 3:
                                    return a = t.sent, t.next = 6, e.$checkData(a.data);
                                case 6:
                                    e.$message({
                                        showClose: !0,
                                        message: "修改成功",
                                        type: "success"
                                    }), e.editPswDialog = !1, e.clearEditPassWord(), t.next = 14;
                                    break;
                                case 11:
                                    t.prev = 11, t.t0 = t.catch(0), console.log(t.t0);
                                case 14:
                                case"end":
                                    return t.stop()
                            }
                            var n, l, r
                        }, t, e, [[0, 11]])
                    }))()
                }, clearEditPassWord: function () {
                    this.password.oldWord = "", this.password.newWord = "", this.password.newWord2 = ""
                }, selectMenu: function (e) {
                    var t = this;
                    this.nav.some(function (a) {
                        return a.child.some(function (a) {
                            if (a.path === e) return t.selectPage = a.title, !0
                        })
                    })
                }, showEditPswDialog: function (e) {
                    var t = this;
                    return s()(l.a.mark(function a() {
                        return l.a.wrap(function (a) {
                            for (; ;) switch (a.prev = a.next) {
                                case 0:
                                    if (a.prev = 0, "0" !== e) {
                                        a.next = 5;
                                        break
                                    }
                                    t.editPswDialog = !0, a.next = 9;
                                    break;
                                case 5:
                                    if ("1" !== e) {
                                        a.next = 9;
                                        break
                                    }
                                    return a.next = 8, b.a.get("/logout.do");
                                case 8:
                                    window.location.href = "/login.html";
                                case 9:
                                    a.next = 14;
                                    break;
                                case 11:
                                    a.prev = 11, a.t0 = a.catch(0), console.log(a.t0);
                                case 14:
                                case"end":
                                    return a.stop()
                            }
                        }, a, t, [[0, 11]])
                    }))()
                }, toggleCalc: function () {
                    this.showCalc = !this.showCalc
                }
            }
        }, Z = {
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
                }, [a("el-row", [e._v("\n            原密码"), a("el-input", {
                    attrs: {placeholder: "请输入原密码"},
                    model: {
                        value: e.password.oldWord, callback: function (t) {
                            e.$set(e.password, "oldWord", t)
                        }, expression: "password.oldWord"
                    }
                })], 1), e._v(" "), a("el-row", {staticStyle: {"margin-top": "10px"}}, [e._v("\n            新密码"), a("el-input", {
                    attrs: {
                        type: "password",
                        placeholder: "请输入新密码"
                    }, model: {
                        value: e.password.newWord, callback: function (t) {
                            e.$set(e.password, "newWord", t)
                        }, expression: "password.newWord"
                    }
                })], 1), e._v(" "), a("el-row", {staticStyle: {"margin-top": "10px"}}, [e._v("\n            确认密码"), a("el-input", {
                    attrs: {
                        type: "password",
                        placeholder: "请再次输入新密码"
                    }, model: {
                        value: e.password.newWord2, callback: function (t) {
                            e.$set(e.password, "newWord2", t)
                        }, expression: "password.newWord2"
                    }
                })], 1), e._v(" "), a("div", {
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
                    attrs: {type: "primary"},
                    on: {click: e.enterEditPassword}
                }, [e._v("确 定")])], 1)], 1), e._v(" "), a("div", {staticClass: "tool-fix"}, [a("img", {
                    attrs: {src: "/static/img/calculator.gif"},
                    on: {click: e.toggleCalc}
                })]), e._v(" "), e.showCalc ? a("calculator", {on: {hideMsg: e.toggleCalc}}) : e._e()], 1)
            }, staticRenderFns: []
        };
        var ee = a("VU/8")(J, Z, !1, function (e) {
            a("lrWy")
        }, "data-v-2775a54c", null).exports, te = a("BO1k"), ae = a.n(te), ne = {
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
                    newUserInfo: {
                        userName: "",
                        pwd: "",
                        raceName: "",
                        phone: "",
                        user_character_select: [],
                        remark: ""
                    }
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
                    return s()(l.a.mark(function t() {
                        return l.a.wrap(function (t) {
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
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, a = e.user_character.filter(function (t) {
                                        var a = !0, n = !1, l = void 0;
                                        try {
                                            for (var r, s = ae()(e.viewInfo.characher); !(a = (r = s.next()).done); a = !0) {
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
                                    }), t.next = 4, T({
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
                        for (var r, s = ae()(e); !(a = (r = s.next()).done); a = !0) {
                            var o = r.value;
                            t.push(o.id)
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
                    return s()(l.a.mark(function t() {
                        var a;
                        return l.a.wrap(function (t) {
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
                    return s()(l.a.mark(function t() {
                        var a;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    a = e.user_character.filter(function (t) {
                                        var a = !0, n = !1, l = void 0;
                                        try {
                                            for (var r, s = ae()(e.newUserInfo.user_character_select); !(a = (r = s.next()).done); a = !0) {
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
                                    }), D({
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
                    return s()(l.a.mark(function a() {
                        return l.a.wrap(function (a) {
                            for (; ;) switch (a.prev = a.next) {
                                case 0:
                                    return a.prev = 0, a.next = 3, t.$checkData(x(e).data);
                                case 3:
                                    a.next = 8;
                                    break;
                                case 5:
                                    a.prev = 5, a.t0 = a.catch(0), console.log(a.t0);
                                case 8:
                                case"end":
                                    return a.stop()
                            }
                        }, a, t, [[0, 5]])
                    }))()
                }, checkUserName: function (e) {
                    var t = this;
                    return s()(l.a.mark(function a() {
                        return l.a.wrap(function (a) {
                            for (; ;) switch (a.prev = a.next) {
                                case 0:
                                    return a.prev = 0, a.next = 3, t.$checkData(k(e).data);
                                case 3:
                                    a.next = 8;
                                    break;
                                case 5:
                                    a.prev = 5, a.t0 = a.catch(0), console.log(a.t0);
                                case 8:
                                case"end":
                                    return a.stop()
                            }
                        }, a, t, [[0, 5]])
                    }))()
                }, clearNewUser: function () {
                    this.newUserInfo.userName = "", this.newUserInfo.phone = "", this.newUserInfo.raceName = "", this.newUserInfo.pwd = "", this.newUserInfo.remark = "", this.newUserInfo.user_character_select = []
                }, loadFeaturesData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, l = e.featuresInfo.current_page, r = e.featuresInfo.page_size, b.a.get("/user/findPage.do?page=" + l + "&rows=" + r);
                                case 3:
                                    return a = t.sent, n = a.data, t.next = 7, e.$checkData(n);
                                case 7:
                                    e.featuresInfo.table_total = n.total, e.featuresInfo.data = [], n.rows.forEach(function (t) {
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
                                    }), t.next = 15;
                                    break;
                                case 12:
                                    t.prev = 12, t.t0 = t.catch(0), console.log(t.t0);
                                case 15:
                                case"end":
                                    return t.stop()
                            }
                            var l, r
                        }, t, e, [[0, 12]])
                    }))()
                }, loadSearchData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
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
                                    return a = t.sent, n = a.data, t.next = 7, e.$checkData(n);
                                case 7:
                                    e.searchInfo.table_total = n.total, e.searchInfo.data = [], n.rows.forEach(function (t) {
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
                                    }), t.next = 15;
                                    break;
                                case 12:
                                    t.prev = 12, t.t0 = t.catch(0), console.log(t.t0);
                                case 15:
                                case"end":
                                    return t.stop()
                            }
                        }, t, e, [[0, 12]])
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
                    this.isTabOne = "search" !== e.name, this.isTabOne && this.loadFeaturesData()
                }
            }
        }, le = {
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
        var re = a("VU/8")(ne, le, !1, function (e) {
            a("IvgY")
        }, "data-v-6081b35b", null).exports, se = {
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
                return s()(l.a.mark(function t() {
                    var a;
                    return l.a.wrap(function (t) {
                        for (; ;) switch (t.prev = t.next) {
                            case 0:
                                return e.loadFeaturesData(), t.next = 3, I();
                            case 3:
                                a = t.sent, e.authorizationList = X(a.data);
                            case 5:
                            case"end":
                                return t.stop()
                        }
                    }, t, e)
                }))()
            }, methods: {
                loadSearchData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, z({
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
                    return s()(l.a.mark(function t() {
                        var a;
                        return l.a.wrap(function (t) {
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
                    return s()(l.a.mark(function t() {
                        return l.a.wrap(function (t) {
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
                    return s()(l.a.mark(function a() {
                        var n, r, s, o, i, c, u;
                        return l.a.wrap(function (a) {
                            for (; ;) switch (a.prev = a.next) {
                                case 0:
                                    return t.editDialog = !0, a.next = 3, I(e.number);
                                case 3:
                                    for (n = a.sent, r = !0, s = !1, o = void 0, a.prev = 7, i = ae()(n.data); !(r = (c = i.next()).done); r = !0) u = c.value, t.$refs.editTree.setChecked(u.id, u.chcked);
                                    a.next = 15;
                                    break;
                                case 11:
                                    a.prev = 11, a.t0 = a.catch(7), s = !0, o = a.t0;
                                case 15:
                                    a.prev = 15, a.prev = 16, !r && i.return && i.return();
                                case 18:
                                    if (a.prev = 18, !s) {
                                        a.next = 21;
                                        break
                                    }
                                    throw o;
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
                    return s()(l.a.mark(function a() {
                        var n, r;
                        return l.a.wrap(function (a) {
                            for (; ;) switch (a.prev = a.next) {
                                case 0:
                                    return t.viewDetailDialog = !0, a.next = 3, I(e.number);
                                case 3:
                                    for (r in n = a.sent, t.lookBoxTree = X(n.data, !0), t.viewInfo.data = [], t.viewInfo.id = e.id, e) t.viewInfo.data.push({
                                        name: t.formatName(r),
                                        value: e[r]
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
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
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
                    return s()(l.a.mark(function t() {
                        var a;
                        return l.a.wrap(function (t) {
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
                        for (var r, s = ae()(e); !(a = (r = s.next()).done); a = !0) {
                            var o = r.value;
                            t.push(o.number)
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
        }, oe = {
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
                    nativeOn: {
                        keyup: function (t) {
                            return "button" in t || 13 === t.keyCode ? e.loadSearchData(t) : null
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
        var ie = a("VU/8")(se, oe, !1, function (e) {
            a("lF3Q")
        }, "data-v-4958d1a6", null).exports, ce = {
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
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, a = e.user_character.filter(function (t) {
                                        var a = !0, n = !1, l = void 0;
                                        try {
                                            for (var r, s = ae()(e.viewInfo.characher); !(a = (r = s.next()).done); a = !0) {
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
                                    }), t.next = 4, T({
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
                        for (var s, o = ae()(e); !(n = (s = o.next()).done); n = !0) {
                            var i = s.value;
                            t.push(i.id), a.push(i.index)
                        }
                    } catch (e) {
                        l = !0, r = e
                    } finally {
                        try {
                            !n && o.return && o.return()
                        } finally {
                            if (l) throw r
                        }
                    }
                    this.deleteUsersState.index = a, this.deleteUsersState.ids = t
                }, deleteMoreUsers: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        return l.a.wrap(function (t) {
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
                    return s()(l.a.mark(function n() {
                        return l.a.wrap(function (n) {
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
                    return s()(l.a.mark(function t() {
                        var a;
                        return l.a.wrap(function (t) {
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
                    return s()(l.a.mark(function t() {
                        return l.a.wrap(function (t) {
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
                    return s()(l.a.mark(function t() {
                        var a;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    a = e.user_character.filter(function (t) {
                                        var a = !0, n = !1, l = void 0;
                                        try {
                                            for (var r, s = ae()(e.newUserInfo.user_character_select); !(a = (r = s.next()).done); a = !0) {
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
                                    }), D({
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
                    return s()(l.a.mark(function a() {
                        return l.a.wrap(function (a) {
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
                }, checkUserName: function (e) {
                    var t = this;
                    return s()(l.a.mark(function a() {
                        return l.a.wrap(function (a) {
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
                }, clearNewUser: function () {
                    this.newUserInfo.userName = "", this.newUserInfo.phone = "", this.newUserInfo.raceName = "", this.newUserInfo.pwd = "", this.newUserInfo.remark = "", this.newUserInfo.user_character_select = []
                }, loadFeaturesData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, C();
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
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, C((e.searchInfo.loginName, e.searchInfo.userName, e.searchInfo.phonenumber));
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
        }, ue = {
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
        var pe = a("VU/8")(ce, ue, !1, function (e) {
            a("wv6N")
        }, "data-v-22d5a798", null).exports, ve = {
            name: "overview", data: function () {
                return {servers: {data: [], value: ""}, channel: {data: [], value: ""}, overflow: {}}
            }, mounted: function () {
                H.call(this), this.getOverFlow()
            }, methods: {
                getOverFlow: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, l = e.servers.value, r = e.channel.value, b.a.get("/general/aboutGame.do", {
                                        params: {
                                            serverId: l,
                                            channelId: r
                                        }
                                    });
                                case 3:
                                    return a = t.sent, n = a.data, t.next = 7, e.$checkData(n);
                                case 7:
                                    e.overflow = n.data, t.next = 14;
                                    break;
                                case 10:
                                    t.prev = 10, t.t0 = t.catch(0), console.log(t.t0), e.overflow = {};
                                case 14:
                                case"end":
                                    return t.stop()
                            }
                            var l, r
                        }, t, e, [[0, 10]])
                    }))()
                }
            }, watch: {
                "servers.value": function (e, t) {
                    "" !== e && this.getOverFlow()
                }, "channel.value": function (e, t) {
                    "" !== e && this.getOverFlow()
                }
            }
        }, de = {
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
                }))], 1)], 1), e._v(" "), a("el-row", {
                    attrs: {
                        gutter: 20,
                        type: "flex",
                        align: "middle"
                    }
                }, [a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 2}
                }, [e._v("区服")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 3}
                }, [e._v("\n      " + e._s(e.overflow.serverName) + "\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 5}
                }, [e._v("\n      开服日期\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 6}
                }, [e._v("\n      " + e._s(e.overflow.stime) + "\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 5}
                }, [e._v("\n      开服天数\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 3}
                }, [e._v("\n      " + e._s(e.overflow.day) + "\n    ")])], 1), e._v(" "), a("el-row", {
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
                }, [e._v("\n      " + e._s(e.overflow.createNum) + "\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 5}
                }, [e._v("\n      当前在线角色数\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 6}
                }, [e._v("\n      " + e._s(e.overflow.onlineNum) + "\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 5}
                }, [e._v("\n      当前活跃用户\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 3}
                }, [e._v("\n      " + e._s(e.overflow.activeNum) + "\n    ")])], 1), e._v(" "), a("el-row", {
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
                }, [e._v("\n      " + e._s(e.overflow.money) + "\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 5}
                }, [e._v("\n      总充值人数\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 6}
                }, [e._v("\n      " + e._s(e.overflow.payNum) + "\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 5}
                }, [e._v("\n      arpu值\n    ")]), e._v(" "), a("el-col", {
                    staticClass: "info1",
                    attrs: {span: 3}
                }, [e._v("\n      " + e._s(e.overflow.arpu) + "\n    ")])], 1)], 1)
            }, staticRenderFns: []
        };
        var he = a("VU/8")(ve, de, !1, function (e) {
                a("yusl")
            }, "data-v-00154f86", null).exports,
            me = {name: "timerPicker", props: {time: {}, span: {type: Number, default: 12}}}, ge = {
                render: function () {
                    var e = this, t = e.$createElement, a = e._self._c || t;
                    return a("el-col", {
                        staticStyle: {display: "flex", "align-items": "center"},
                        attrs: {span: e.span}
                    }, [a("el-col", {attrs: {span: 3}}, [e._v("时间段:")]), e._v(" "), a("el-col", {attrs: {span: 21}}, [a("el-date-picker", {
                        attrs: {
                            format: "yyyy 年 MM 月 dd 日",
                            "value-format": "yyyy-MM-dd",
                            type: "date",
                            placeholder: "选择日期"
                        }, model: {
                            value: e.time.fromTime, callback: function (t) {
                                e.$set(e.time, "fromTime", t)
                            }, expression: "time.fromTime"
                        }
                    }), e._v("\n    ~\n    "), a("el-date-picker", {
                        attrs: {
                            format: "yyyy 年 MM 月 dd 日",
                            "value-format": "yyyy-MM-dd",
                            type: "date",
                            placeholder: "选择日期"
                        }, model: {
                            value: e.time.toTime, callback: function (t) {
                                e.$set(e.time, "toTime", t)
                            }, expression: "time.toTime"
                        }
                    })], 1)], 1)
                }, staticRenderFns: []
            }, fe = a("VU/8")(me, ge, !1, null, null, null).exports, be = {
                name: "daily", data: function () {
                    return {
                        userCount: {page_size: 10, current_page: 1, tableData: [], total: 0},
                        incomeCount: {page_size: 10, current_page: 1, tableData: [], total: 0},
                        channelCount: {page_size: 10, current_page: 1, tableData: [], total: 0},
                        servers: {data: [], value: ""},
                        channel: {data: [], value: ""},
                        selectPane: "user",
                        time: {fromTime: "", toTime: ""}
                    }
                }, components: {timerPicker: fe}, mounted: function () {
                    H.call(this), this.loadTableData()
                }, methods: {
                    loadTableData: function () {
                        var e = this;
                        return s()(l.a.mark(function t() {
                            var a, n, r, s, o;
                            return l.a.wrap(function (t) {
                                for (; ;) switch (t.prev = t.next) {
                                    case 0:
                                        return t.prev = 0, a = null, n = null, "user" === e.selectPane ? (a = "userCount", n = P) : "income" === e.selectPane ? (a = "incomeCount", n = S) : "channel" === e.selectPane && (a = "channelCount", n = U), r = e[a], t.next = 7, n(e.time.fromTime, e.time.toTime, e.servers.value, e.channel.value, r.current_page, r.page_size);
                                    case 7:
                                        return s = t.sent, r.tableData = [], t.next = 11, e.$checkData(s.data);
                                    case 11:
                                        o = t.sent, r.total = o.total, o.rows.forEach(function (t) {
                                            var a = {};
                                            "user" === e.selectPane ? a = {
                                                countTime: t.countTime,
                                                online: t.avgOnlineUsers,
                                                time: t.avgGametime,
                                                launch: t.avgLoginNum,
                                                active: t.activeUser,
                                                active1: t.activateUser,
                                                registered: t.registerUser,
                                                peakOnline: t.peakOnline,
                                                secondStay: t.dayLeave,
                                                threeStay: t.threedayLeave,
                                                sevenStay: t.sevendayLeave,
                                                thirtyStay: t.monthLeave
                                            } : "income" === e.selectPane ? a = {
                                                recordeTime: t.recordeTime,
                                                payAp: t.payAp,
                                                addAp: t.addAp,
                                                day: t.dayIncome,
                                                dayPay: t.dayPayrate,
                                                newPayPlayer: t.addRateUser,
                                                payPlayer: t.countRateUser
                                            } : "channel" === e.selectPane && (a = {
                                                countTime: t.countTime,
                                                name: t.channelName,
                                                newPlayer: t.addUser,
                                                activePlayer: t.activeUser,
                                                rechargePlayer: t.rechargeUser,
                                                payLv: t.payrate,
                                                ap: t.apvalue,
                                                secondStay: t.timeLeave,
                                                threeStay: t.threedayLeave,
                                                sevenStay: t.weekLeave,
                                                payARUP: t.payArup
                                            }), r.tableData.push(a)
                                        }), t.next = 19;
                                        break;
                                    case 16:
                                        t.prev = 16, t.t0 = t.catch(0), console.log(t.t0);
                                    case 19:
                                    case"end":
                                        return t.stop()
                                }
                            }, t, e, [[0, 16]])
                        }))()
                    }, handleCurrentChange: function (e) {
                        "user" === this.selectPane ? this.userCount.current_page = e : "income" === this.selectPane ? this.incomeCount.current_page = e : "channel" === this.selectPane && (this.channelCount.current_page = e), this.loadTableData()
                    }, handleSizeChange: function (e) {
                        "user" === this.selectPane ? this.userCount.page_size = e : "income" === this.selectPane ? this.incomeCount.page_size = e : "channel" === this.selectPane && (this.channelCount.page_size = e), this.loadTableData()
                    }, changeTab: function (e) {
                        this.selectPane = e.name, this.time.fromTime = "", this.time.toTime = "", this.channel.value = null, this.servers.value = null, this.loadTableData()
                    }
                }, watch: {
                    "servers.value": function (e, t) {
                        "" !== e && this.loadTableData()
                    }, "channel.value": function (e, t) {
                        "" !== e && this.loadTableData()
                    }, "time.fromTime": function () {
                        this.loadTableData()
                    }, "time.toTime": function () {
                        this.loadTableData()
                    }
                }
            }, _e = {
                render: function () {
                    var e = this, t = e.$createElement, a = e._self._c || t;
                    return a("el-tabs", {
                        staticClass: "content",
                        attrs: {type: "border-card", value: "user"},
                        on: {"tab-click": e.changeTab}
                    }, [a("el-row", {
                        staticStyle: {"margin-bottom": "10px"},
                        attrs: {type: "flex", align: "middle"}
                    }, [a("timerPicker", {attrs: {time: e.time}}), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
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
                    }))], 1)], 1), e._v(" "), a("el-tab-pane", {
                        attrs: {
                            label: "用户类",
                            name: "user"
                        }
                    }, [a("el-table", {
                        staticClass: "dataTable",
                        attrs: {data: e.userCount.tableData, border: !0}
                    }, [a("el-table-column", {
                        attrs: {
                            width: "150",
                            align: "center",
                            prop: "countTime",
                            label: "日期"
                        }
                    }), e._v(" "), a("el-table-column", {
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
                            "current-page": e.userCount.current_page,
                            "page-sizes": [10, 50, 100, 200],
                            "page-size": e.userCount.page_size,
                            layout: "total, sizes, prev, pager, next, jumper",
                            total: e.userCount.total
                        },
                        on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                    })], 1), e._v(" "), a("el-tab-pane", {
                        attrs: {
                            label: "收入类",
                            name: "income"
                        }
                    }, [a("el-table", {
                        staticClass: "dataTable",
                        attrs: {data: e.incomeCount.tableData, border: !0}
                    }, [a("el-table-column", {
                        attrs: {
                            width: "150",
                            align: "center",
                            prop: "recordeTime",
                            label: "日期"
                        }
                    }), e._v(" "), a("el-table-column", {
                        attrs: {
                            width: "150",
                            align: "center",
                            prop: "payAp",
                            label: "付费arpu"
                        }
                    }), e._v(" "), a("el-table-column", {
                        attrs: {
                            width: "150",
                            align: "center",
                            prop: "addAp",
                            label: "新增arpu"
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
                            "current-page": e.incomeCount.current_page,
                            "page-sizes": [10, 50, 100, 200],
                            "page-size": e.incomeCount.page_size,
                            layout: "total, sizes, prev, pager, next, jumper",
                            total: e.incomeCount.total
                        },
                        on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                    })], 1), e._v(" "), a("el-tab-pane", {
                        attrs: {
                            label: "渠道统计",
                            name: "channel"
                        }
                    }, [a("el-table", {
                        staticClass: "dataTable",
                        attrs: {data: e.channelCount.tableData, border: !0}
                    }, [a("el-table-column", {
                        attrs: {
                            width: "150",
                            align: "center",
                            prop: "countTime",
                            label: "日期"
                        }
                    }), e._v(" "), a("el-table-column", {
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
                            label: "付费arpu"
                        }
                    })], 1), e._v(" "), a("el-pagination", {
                        staticClass: "pagination",
                        attrs: {
                            "current-page": e.channelCount.current_page,
                            "page-sizes": [10, 50, 100, 200],
                            "page-size": e.channelCount.page_size,
                            layout: "total, sizes, prev, pager, next, jumper",
                            total: e.channelCount.total
                        },
                        on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                    })], 1)], 1)
                }, staticRenderFns: []
            };
        var we = a("VU/8")(be, _e, !1, function (e) {
            a("gbDQ")
        }, "data-v-1618221e", null).exports, ye = {
            name: "new-player", data: function () {
                return {
                    servers: {data: [], value: ""},
                    channel: {data: [], value: ""},
                    newPlayer: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    time: {fromTime: "", toTime: ""}
                }
            }, components: {timerPicker: fe}, mounted: function () {
                H.call(this), this.loadTableData()
            }, methods: {
                loadTableData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, n = e.time.fromTime, l = e.time.toTime, r = e.servers.value, s = e.channel.value, o = e.newPlayer.current_page, i = e.newPlayer.page_size, b.a.get("/game/listAddNewPlayer.do", {
                                        params: {
                                            start: n,
                                            end: l,
                                            serverId: r,
                                            channelId: s,
                                            page: o,
                                            rows: i
                                        }
                                    });
                                case 3:
                                    return a = t.sent, e.newPlayer.tableData = [], t.next = 7, e.$checkData(a.data);
                                case 7:
                                    e.newPlayer.total = a.data.data.total, a.data.data.rows.forEach(function (t) {
                                        e.newPlayer.tableData.push({
                                            date: t.registerTime,
                                            device: t.registerPlant,
                                            name: t.registerPlayer
                                        })
                                    }), t.next = 14;
                                    break;
                                case 11:
                                    t.prev = 11, t.t0 = t.catch(0), console.log(t.t0);
                                case 14:
                                case"end":
                                    return t.stop()
                            }
                            var n, l, r, s, o, i
                        }, t, e, [[0, 11]])
                    }))()
                }, handleCurrentChange: function (e) {
                    this.newPlayer.current_page = e, this.loadTableData()
                }, handleSizeChange: function (e) {
                    this.newPlayer.page_size = e, this.loadTableData()
                }
            }, watch: {
                "servers.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "channel.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
                }
            }
        }, ke = {
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
                }, [a("timerPicker", {
                    attrs: {
                        time: e.time,
                        span: 8
                    }
                }), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
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
                    attrs: {data: e.newPlayer.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "300",
                        align: "center",
                        prop: "date",
                        label: "注册时间"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "300",
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
                        "current-page": e.newPlayer.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.newPlayer.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.newPlayer.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var xe = a("VU/8")(ye, ke, !1, function (e) {
            a("+90l")
        }, "data-v-256bdc58", null).exports, De = {
            name: "active-player", data: function () {
                return {
                    servers: {data: [], value: ""},
                    channel: {data: [], value: ""},
                    activePlayer: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    time: {fromTime: "", toTime: ""}
                }
            }, components: {timerPicker: fe}, mounted: function () {
                H.call(this), this.loadTableData()
            }, methods: {
                loadTableData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, n = e.time.fromTime, l = e.time.toTime, r = e.servers.value, s = e.channel.value, o = e.activePlayer.current_page, i = e.activePlayer.page_size, b.a.get("/game/listActivePlayer.do", {
                                        params: {
                                            start: n,
                                            end: l,
                                            serverId: r,
                                            channelId: s,
                                            page: o,
                                            rows: i
                                        }
                                    });
                                case 3:
                                    return a = t.sent, e.activePlayer.tableData = [], t.next = 7, e.$checkData(a.data);
                                case 7:
                                    e.activePlayer.total = a.data.data.total, a.data.data.rows.forEach(function (t) {
                                        e.activePlayer.tableData.push({date: t.showTime, retain: t.activePlayerCount})
                                    }), t.next = 14;
                                    break;
                                case 11:
                                    t.prev = 11, t.t0 = t.catch(0), console.log(t.t0);
                                case 14:
                                case"end":
                                    return t.stop()
                            }
                            var n, l, r, s, o, i
                        }, t, e, [[0, 11]])
                    }))()
                }, handleCurrentChange: function (e) {
                    this.activePlayer.current_page = e, this.loadTableData()
                }, handleSizeChange: function (e) {
                    this.activePlayer.page_size = e, this.loadTableData()
                }
            }, watch: {
                "servers.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "channel.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
                }
            }
        }, Te = {
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
                }, [a("timerPicker", {attrs: {time: e.time}}), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
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
                    attrs: {data: e.activePlayer.tableData, stripe: "", border: !0}
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
                        "current-page": e.activePlayer.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.activePlayer.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.activePlayer.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var Ce = a("VU/8")(De, Te, !1, function (e) {
            a("8w7e")
        }, "data-v-611fa589", null).exports, Ie = {
            name: "active-player", data: function () {
                return {
                    servers: {data: [], value: ""},
                    channel: {data: [], value: ""},
                    retainPlayer: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    time: {fromTime: "", toTime: ""}
                }
            }, components: {timerPicker: fe}, mounted: function () {
                H.call(this), this.loadTableData()
            }, methods: {
                loadTableData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, n = e.time.fromTime, l = e.time.toTime, r = e.servers.value, s = e.channel.value, o = e.retainPlayer.current_page, i = e.retainPlayer.page_size, b.a.get("/game/listRetainPlayer.do", {
                                        params: {
                                            start: n,
                                            end: l,
                                            serverId: r,
                                            channelId: s,
                                            page: o,
                                            rows: i
                                        }
                                    });
                                case 3:
                                    return a = t.sent, e.retainPlayer.tableData = [], t.next = 7, e.$checkData(a.data);
                                case 7:
                                    e.retainPlayer.total = a.data.data.total, a.data.data.rows.forEach(function (t) {
                                        e.retainPlayer.tableData.push({
                                            date: t.showTime,
                                            retain: t.onedayRetain,
                                            three_retain: t.threedayRetain,
                                            seven_retain: t.weeklyRetain
                                        })
                                    }), t.next = 14;
                                    break;
                                case 11:
                                    t.prev = 11, t.t0 = t.catch(0), console.log(t.t0);
                                case 14:
                                case"end":
                                    return t.stop()
                            }
                            var n, l, r, s, o, i
                        }, t, e, [[0, 11]])
                    }))()
                }, handleCurrentChange: function (e) {
                    this.retainPlayer.current_page = e, this.loadTableData()
                }, handleSizeChange: function (e) {
                    this.retainPlayer.page_size = e, this.loadTableData()
                }
            }, watch: {
                "servers.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "channel.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
                }
            }
        }, ze = {
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
                }, [a("timerPicker", {attrs: {time: e.time}}), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
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
                    attrs: {data: e.retainPlayer.tableData, stripe: "", border: !0}
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
                        label: "1留"
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
                        "current-page": e.retainPlayer.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.retainPlayer.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.retainPlayer.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var Pe = a("VU/8")(Ie, ze, !1, function (e) {
            a("llAr")
        }, "data-v-05a6fa7b", null).exports, Se = {
            name: "loss-player", data: function () {
                return {
                    servers: {data: [], value: ""},
                    channel: {data: [], value: ""},
                    playerLose: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    time: {fromTime: "", toTime: ""}
                }
            }, components: {timerPicker: fe}, mounted: function () {
                H.call(this), this.loadTableData()
            }, methods: {
                loadTableData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, n = e.time.fromTime, l = e.time.toTime, r = e.servers.value, s = e.channel.value, o = e.playerLose.current_page, i = e.playerLose.page_size, b.a.get("/game/listAwayPlayer.do", {
                                        params: {
                                            start: n,
                                            end: l,
                                            serverId: r,
                                            channelId: s,
                                            page: o,
                                            rows: i
                                        }
                                    });
                                case 3:
                                    return a = t.sent, e.playerLose.tableData = [], t.next = 7, e.$checkData(a.data);
                                case 7:
                                    e.playerLose.total = a.data.data.total, a.data.data.rows.forEach(function (t) {
                                        e.playerLose.tableData.push({
                                            date: t.recordTime,
                                            loos: t.awayPlayer,
                                            new_player: t.addPlayer
                                        })
                                    }), t.next = 14;
                                    break;
                                case 11:
                                    t.prev = 11, t.t0 = t.catch(0), console.log(t.t0);
                                case 14:
                                case"end":
                                    return t.stop()
                            }
                            var n, l, r, s, o, i
                        }, t, e, [[0, 11]])
                    }))()
                }, handleCurrentChange: function (e) {
                    this.playerLose.current_page = e, this.loadTableData()
                }, handleSizeChange: function (e) {
                    this.playerLose.page_size = e, this.loadTableData()
                }
            }, watch: {
                "servers.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "channel.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
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
                }, [a("timerPicker", {attrs: {time: e.time}}), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
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
                    attrs: {data: e.playerLose.tableData, stripe: "", border: !0}
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
                        prop: "loos",
                        label: "流失用户"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.playerLose.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.playerLose.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.playerLose.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var Re = a("VU/8")(Se, Ue, !1, function (e) {
            a("+YQ9")
        }, "data-v-6b9f0cb6", null).exports, Ne = {
            name: "admin-system", data: function () {
                return {
                    LoginDay: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    AwayGrade: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    AwayOutput: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    servers: {data: [], value: ""},
                    channel: {data: [], value: ""},
                    selectPane: "LoginDay",
                    time: {fromTime: "", toTime: ""}
                }
            }, components: {timerPicker: fe}, mounted: function () {
                H.call(this), this.loadTableData()
            }, methods: {
                loadTableData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a, n, r, s, o;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, a = null, n = null, "LoginDay" === e.selectPane ? (a = "LoginDay", n = R) : "AwayGrade" === e.selectPane ? (a = "AwayGrade", n = N) : "AwayOutput" === e.selectPane && (a = "AwayOutput", n = $), r = e[a], t.next = 7, n(e.time.fromTime, e.time.toTime, e.servers.value, e.channel.value, (r.current_page - 1) * r.page_size + 1, r.page_size);
                                case 7:
                                    return s = t.sent, r.tableData = [], t.next = 11, e.$checkData(s.data);
                                case 11:
                                    o = t.sent, r.total = o.total, o.rows.forEach(function (t) {
                                        var a = {};
                                        "LoginDay" === e.selectPane ? a = {
                                            showTime: t.showTime,
                                            one: t.countDay,
                                            count: t.countNum
                                        } : "AwayGrade" === e.selectPane ? a = {
                                            showTime: t.showTime,
                                            rank: t.gameGrade,
                                            count: t.countPlayer
                                        } : "AwayOutput" === e.selectPane && (a = {
                                            showTime: t.showTime,
                                            level: t.awayOutput,
                                            count: t.countPlayer
                                        }), r.tableData.push(a)
                                    }), t.next = 18;
                                    break;
                                case 16:
                                    t.prev = 16, t.t0 = t.catch(0);
                                case 18:
                                case"end":
                                    return t.stop()
                            }
                        }, t, e, [[0, 16]])
                    }))()
                }, handleCurrentChange: function (e) {
                    "LoginDay" === this.selectPane ? this.LoginDay.current_page = e : "AwayGrade" === this.selectPane ? this.AwayGrade.current_page = e : "AwayOutput" === this.selectPane && (this.AwayOutput.current_page = e), this.loadTableData()
                }, handleSizeChange: function (e) {
                    "LoginDay" === this.selectPane ? this.LoginDay.page_size = e : "AwayGrade" === this.selectPane ? this.AwayGrade.page_size = e : "AwayOutput" === this.selectPane && (this.AwayOutput.page_size = e), this.loadTableData()
                }, changeTab: function (e) {
                    this.selectPane = e.name, this.time.fromTime = "", this.time.toTime = "", this.channel.value = null, this.servers.value = null, this.loadTableData()
                }
            }, watch: {
                "servers.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "channel.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
                }
            }
        }, $e = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("el-tabs", {
                    staticClass: "content",
                    attrs: {type: "border-card", value: "LoginDay"},
                    on: {"tab-click": e.changeTab}
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("timerPicker", {attrs: {time: e.time}}), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
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
                }))], 1)], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "登录天数",
                        name: "LoginDay"
                    }
                }, [a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.LoginDay.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "showTime",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
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
                        "current-page": e.LoginDay.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.LoginDay.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.LoginDay.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "流失等级",
                        name: "AwayGrade"
                    }
                }, [a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.AwayGrade.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "showTime",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "rank",
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
                        "current-page": e.AwayGrade.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.AwayGrade.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.AwayGrade.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "流失关卡",
                        name: "AwayOutput"
                    }
                }, [a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.AwayOutput.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "showTime",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "level",
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
                        "current-page": e.AwayOutput.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.AwayOutput.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.AwayOutput.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)], 1)
            }, staticRenderFns: []
        };
        var Ee = a("VU/8")(Ne, $e, !1, function (e) {
            a("BE8B")
        }, "data-v-506619ae", null).exports, Le = {
            name: "online-user", data: function () {
                return {
                    onLineUsers: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    servers: {data: [], value: ""},
                    channel: {data: [], value: ""},
                    time: {fromTime: "", toTime: ""},
                    allplayerCount: 123456
                }
            }, components: {timerPicker: fe}, mounted: function () {
                H.call(this), this.loadTableData()
            }, methods: {
                loadTableData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, l = e.time.fromTime, r = e.time.toTime, s = e.servers.value, o = e.channel.value, i = e.onLineUsers.current_page, c = e.onLineUsers.page_size, b.a.get("/online/listOnlinePlayerCount.do", {
                                        params: {
                                            start: l,
                                            end: r,
                                            serverId: s,
                                            channelId: o,
                                            page: i,
                                            rows: c
                                        }
                                    });
                                case 3:
                                    return a = t.sent, e.onLineUsers.tableData = [], t.next = 7, e.$checkData(a.data);
                                case 7:
                                    n = t.sent, e.onLineUsers.total = n.total, n.rows.forEach(function (t) {
                                        e.onLineUsers.tableData.push({
                                            recordTime: t.recordTime,
                                            date: t.showTimeHour,
                                            onlineUser: t.onlinePlayerCount
                                        })
                                    }), t.next = 14;
                                    break;
                                case 12:
                                    t.prev = 12, t.t0 = t.catch(0);
                                case 14:
                                case"end":
                                    return t.stop()
                            }
                            var l, r, s, o, i, c
                        }, t, e, [[0, 12]])
                    }))()
                }, handleCurrentChange: function (e) {
                    this.onLineUsers.current_page = e, this.loadTableData()
                }, handleSizeChange: function (e) {
                    this.onLineUsers.page_size = e, this.loadTableData()
                }
            }, watch: {
                "servers.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "channel.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
                }
            }
        }, je = {
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
                }, [a("el-col", {attrs: {span: 13}}, [e._v("在线用户: " + e._s(e.allplayerCount))]), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("渠道:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
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
                }, [a("timerPicker", {
                    attrs: {
                        time: e.time,
                        span: 13
                    }
                }), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
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
                    attrs: {data: e.onLineUsers.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "recordTime",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
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
                        "current-page": e.onLineUsers.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.onLineUsers.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.onLineUsers.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var Oe = a("VU/8")(Le, je, !1, function (e) {
            a("a4bl")
        }, "data-v-88803f1c", null).exports, Ve = {
            name: "vip-count", data: function () {
                return {
                    vipCount: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    servers: {data: [], value: ""},
                    channel: {data: [], value: ""},
                    time: {fromTime: "", toTime: ""}
                }
            }, components: {timerPicker: fe}, mounted: function () {
                H.call(this), this.loadTableData()
            }, methods: {
                loadTableData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, l = e.time.fromTime, r = e.time.toTime, s = e.servers.value, o = e.channel.value, i = e.vipCount.current_page, c = e.vipCount.page_size, b.a.get("/behavior/listVipCount.do", {
                                        params: {
                                            start: l,
                                            end: r,
                                            serverId: s,
                                            channelId: o,
                                            page: i,
                                            rows: c
                                        }
                                    });
                                case 3:
                                    return a = t.sent, e.vipCount.tableData = [], t.next = 7, e.$checkData(a.data);
                                case 7:
                                    n = t.sent, e.vipCount.total = n.total, n.rows.forEach(function (t) {
                                        e.vipCount.tableData.push({
                                            showTime: t.showTime,
                                            vip: t.vipGrade,
                                            count: t.vipOnlineCount
                                        })
                                    }), t.next = 14;
                                    break;
                                case 12:
                                    t.prev = 12, t.t0 = t.catch(0);
                                case 14:
                                case"end":
                                    return t.stop()
                            }
                            var l, r, s, o, i, c
                        }, t, e, [[0, 12]])
                    }))()
                }, handleCurrentChange: function (e) {
                    this.vipCount.current_page = e, this.loadTableData()
                }, handleSizeChange: function (e) {
                    this.vipCount.page_size = e, this.loadTableData()
                }
            }, watch: {
                "servers.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "channel.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
                }
            }
        }, Ae = {
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
                }, [a("timerPicker", {attrs: {time: e.time}}), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
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
                    attrs: {data: e.vipCount.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "showTime",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
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
                        prop: "count",
                        label: "在线人数"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.vipCount.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.vipCount.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.vipCount.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var Fe = a("VU/8")(Ve, Ae, !1, function (e) {
            a("kXCV")
        }, "data-v-6a2dff86", null).exports, Me = {
            name: "gang-rank", data: function () {
                return {
                    gangRank: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    servers: {data: [], value: ""},
                    channel: {data: [], value: ""},
                    time: {fromTime: "", toTime: ""}
                }
            }, components: {timerPicker: fe}, mounted: function () {
                H.call(this), this.loadTableData()
            }, methods: {
                loadTableData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, l = e.time.fromTime, r = e.time.toTime, s = e.servers.value, o = e.channel.value, i = e.gangRank.current_page, c = e.gangRank.page_size, b.a.get("/behavior/listGangGrade.do", {
                                        params: {
                                            start: l,
                                            end: r,
                                            serverId: s,
                                            channelId: o,
                                            page: i,
                                            rows: c
                                        }
                                    });
                                case 3:
                                    return a = t.sent, e.gangRank.tableData = [], t.next = 7, e.$checkData(a.data);
                                case 7:
                                    n = t.sent, e.gangRank.total = n.total, n.rows.forEach(function (t) {
                                        e.gangRank.tableData.push({
                                            showTime: t.showTime,
                                            rank: t.gangGrade,
                                            count: t.gangCount
                                        })
                                    }), t.next = 14;
                                    break;
                                case 12:
                                    t.prev = 12, t.t0 = t.catch(0);
                                case 14:
                                case"end":
                                    return t.stop()
                            }
                            var l, r, s, o, i, c
                        }, t, e, [[0, 12]])
                    }))()
                }, handleCurrentChange: function (e) {
                    this.gangRank.current_page = e, this.loadTableData()
                }, handleSizeChange: function (e) {
                    this.gangRank.page_size = e, this.loadTableData()
                }
            }, watch: {
                "servers.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "channel.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
                }
            }
        }, Ge = {
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
                }, [a("timerPicker", {attrs: {time: e.time}}), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
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
                    attrs: {data: e.gangRank.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "showTime",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
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
                        prop: "count",
                        label: "数量"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.gangRank.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.gangRank.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.gangRank.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var We = a("VU/8")(Me, Ge, !1, function (e) {
            a("z90V")
        }, "data-v-71867ca4", null).exports, Be = {
            name: "game-number", data: function () {
                return {
                    gangNumber: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    servers: {data: [], value: ""},
                    channel: {data: [], value: ""},
                    time: {fromTime: "", toTime: ""}
                }
            }, components: {timerPicker: fe}, mounted: function () {
                H.call(this), this.loadTableData()
            }, methods: {
                loadTableData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, l = e.time.fromTime, r = e.time.toTime, s = e.servers.value, o = e.channel.value, i = e.gangNumber.current_page, c = e.gangNumber.page_size, b.a.get("/behavior/listGangCount.do", {
                                        params: {
                                            start: l,
                                            end: r,
                                            serverId: s,
                                            channelId: o,
                                            page: i,
                                            rows: c
                                        }
                                    });
                                case 3:
                                    return a = t.sent, e.gangNumber.tableData = [], t.next = 7, e.$checkData(a.data);
                                case 7:
                                    n = t.sent, e.gangNumber.total = n.total, n.rows.forEach(function (t) {
                                        e.gangNumber.tableData.push({
                                            showTime: t.showTime,
                                            community: t.serverName,
                                            count: t.gangNum
                                        })
                                    }), t.next = 14;
                                    break;
                                case 12:
                                    t.prev = 12, t.t0 = t.catch(0);
                                case 14:
                                case"end":
                                    return t.stop()
                            }
                            var l, r, s, o, i, c
                        }, t, e, [[0, 12]])
                    }))()
                }, handleCurrentChange: function (e) {
                    this.gangNumber.current_page = e, this.loadTableData()
                }, handleSizeChange: function (e) {
                    this.gangNumber.page_size = e, this.loadTableData()
                }
            }, watch: {
                "servers.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "channel.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
                }
            }
        }, Ke = {
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
                }, [a("timerPicker", {attrs: {time: e.time}}), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
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
                    attrs: {data: e.gangNumber.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "showTime",
                        label: "时间"
                    }
                }), e._v(" "), a("el-table-column", {
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
                        prop: "count",
                        label: "帮派数量"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.gangNumber.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.gangNumber.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.gangNumber.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var qe = a("VU/8")(Be, Ke, !1, function (e) {
            a("xL7u")
        }, "data-v-17e103b4", null).exports, Ye = {
            name: "task-information", data: function () {
                return {
                    taskInfo: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    servers: {data: [], value: ""},
                    channel: {data: [], value: ""},
                    time: {fromTime: "", toTime: ""}
                }
            }, components: {timerPicker: fe}, mounted: function () {
                H.call(this), this.loadTableData()
            }, methods: {
                loadTableData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, l = e.time.fromTime, r = e.time.toTime, s = e.servers.value, o = e.channel.value, i = e.taskInfo.current_page, c = e.taskInfo.page_size, b.a.get("/behavior/listTaskMessage.do", {
                                        params: {
                                            start: l,
                                            end: r,
                                            serverId: s,
                                            channelId: o,
                                            page: i,
                                            rows: c
                                        }
                                    });
                                case 3:
                                    return a = t.sent, e.taskInfo.tableData = [], t.next = 7, e.$checkData(a.data);
                                case 7:
                                    n = t.sent, e.taskInfo.total = n.total, n.rows.forEach(function (t) {
                                        e.taskInfo.tableData.push({
                                            showTime: t.showTime,
                                            list: t.taskList,
                                            count: t.nowProgressNum
                                        })
                                    }), t.next = 14;
                                    break;
                                case 12:
                                    t.prev = 12, t.t0 = t.catch(0);
                                case 14:
                                case"end":
                                    return t.stop()
                            }
                            var l, r, s, o, i, c
                        }, t, e, [[0, 12]])
                    }))()
                }, handleCurrentChange: function (e) {
                    this.taskInfo.current_page = e, this.loadTableData()
                }, handleSizeChange: function (e) {
                    this.taskInfo.page_size = e, this.loadTableData()
                }
            }, watch: {
                "servers.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "channel.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
                }
            }
        }, Qe = {
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
                }, [a("timerPicker", {attrs: {time: e.time}}), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
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
                    attrs: {data: e.taskInfo.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "showTime",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
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
                        prop: "count",
                        label: "当前进度人数"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.taskInfo.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.taskInfo.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.taskInfo.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var Xe = a("VU/8")(Ye, Qe, !1, function (e) {
            a("vLj+")
        }, "data-v-1917fcda", null).exports, He = {
            name: "output-expends", data: function () {
                return {
                    outPutExpends: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    servers: {data: [], value: ""},
                    channel: {data: [], value: ""},
                    time: {fromTime: "", toTime: ""}
                }
            }, components: {timerPicker: fe}, mounted: function () {
                H.call(this), this.loadTableData()
            }, methods: {
                loadTableData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, l = e.time.fromTime, r = e.time.toTime, s = e.servers.value, o = e.channel.value, i = e.outPutExpends.current_page, c = e.outPutExpends.page_size, b.a.get("/behavior/listOutConsume.do", {
                                        params: {
                                            start: l,
                                            end: r,
                                            serverId: s,
                                            channelId: o,
                                            page: i,
                                            rows: c
                                        }
                                    });
                                case 3:
                                    return a = t.sent, e.outPutExpends.tableData = [], t.next = 7, e.$checkData(a.data);
                                case 7:
                                    n = t.sent, e.outPutExpends.total = n.total, n.rows.forEach(function (t) {
                                        e.outPutExpends.tableData.push({
                                            recordTime: t.recordTime,
                                            name: t.goods,
                                            output: t.ration,
                                            expends: t.consume
                                        })
                                    }), t.next = 14;
                                    break;
                                case 12:
                                    t.prev = 12, t.t0 = t.catch(0);
                                case 14:
                                case"end":
                                    return t.stop()
                            }
                            var l, r, s, o, i, c
                        }, t, e, [[0, 12]])
                    }))()
                }, handleCurrentChange: function (e) {
                    this.outPutExpends.current_page = e, this.loadTableData()
                }, handleSizeChange: function (e) {
                    this.outPutExpends.page_size = e, this.loadTableData()
                }
            }, watch: {
                "servers.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "channel.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
                }
            }
        }, Je = {
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
                }, [a("timerPicker", {attrs: {time: e.time}}), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
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
                    attrs: {data: e.outPutExpends.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "recordTime",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
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
                        "current-page": e.outPutExpends.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.outPutExpends.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.outPutExpends.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var Ze = a("VU/8")(He, Je, !1, function (e) {
            a("m4YG")
        }, "data-v-61248e5a", null).exports, et = {
            name: "rank-information", data: function () {
                return {
                    powerRank: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    levelRank: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    loveRank: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    gangRank: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    servers: {data: [], value: ""},
                    channel: {data: [], value: ""},
                    selectPane: "power",
                    time: {fromTime: "", toTime: ""}
                }
            }, components: {timerPicker: fe}, mounted: function () {
                H.call(this), this.loadTableData()
            }, methods: {
                loadTableData: function () {
                    var e = s()(l.a.mark(function e() {
                        var t, a, n, r, s, o = this;
                        return l.a.wrap(function (e) {
                            for (; ;) switch (e.prev = e.next) {
                                case 0:
                                    return e.prev = 0, t = null, a = null, "power" === this.selectPane ? (t = "powerRank", a = E) : "level" === this.selectPane ? (t = "levelRank", a = L) : "love" === this.selectPane ? (t = "loveRank", a = j) : "gang" === this.selectPane && (t = "gangRank", a = O), n = this[t], e.next = 7, a(this.time.fromTime, this.time.toTime, this.servers.value, this.channel.value, n.current_page, n.page_size);
                                case 7:
                                    return r = e.sent, n.tableData = [], e.next = 11, this.$checkData(r.data);
                                case 11:
                                    s = e.sent, n.total = s.total, s.rows.forEach(function (e) {
                                        var t = {};
                                        "power" === o.selectPane ? t = {
                                            showTime: e.showTime,
                                            rank: e.forceRank,
                                            playerName: e.playerName,
                                            power: e.forceValue,
                                            server: e.serverName
                                        } : "level" === o.selectPane ? t = {
                                            showTime: e.showTime,
                                            rank: e.levelRank,
                                            playerName: e.playerName,
                                            power: e.levelValue,
                                            server: e.serverName
                                        } : "love" === o.selectPane ? t = {
                                            showTime: e.showTime,
                                            rank: e.intimateRank,
                                            playerName: e.playerName,
                                            power: e.intimateRank,
                                            server: e.serverName
                                        } : "gang" === o.selectPane && (t = {
                                            showTime: e.showTime,
                                            rank: e.gangRank,
                                            playerName: e.gangName,
                                            power: e.forceValue,
                                            server: e.serverName,
                                            gangRank: e.gangGrade
                                        }), n.tableData.push(t)
                                    }), e.next = 18;
                                    break;
                                case 16:
                                    e.prev = 16, e.t0 = e.catch(0);
                                case 18:
                                case"end":
                                    return e.stop()
                            }
                        }, e, this, [[0, 16]])
                    }));
                    return function () {
                        return e.apply(this, arguments)
                    }
                }(), handleCurrentChange: function (e) {
                    "power" === this.selectPane ? this.powerRank.current_page = e : "level" === this.selectPane ? this.levelRank.current_page = e : "love" === this.selectPane ? this.loveRank.current_page = e : "gang" === this.selectPane && (this.gangRank.current_page = e), this.loadTableData()
                }, handleSizeChange: function (e) {
                    "power" === this.selectPane ? this.powerRank.page_size = e : "level" === this.selectPane ? this.levelRank.page_size = e : "love" === this.selectPane ? this.loveRank.page_size = e : "gang" === this.selectPane && (this.gangRank.page_size = e), this.loadTableData()
                }, changeTab: function (e) {
                    this.selectPane = e.name, this.time.fromTime = "", this.time.toTime = "", this.channel.value = null, this.servers.value = null, this.loadTableData()
                }
            }, watch: {
                "servers.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "channel.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
                }
            }
        }, tt = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("el-tabs", {
                    staticClass: "content",
                    attrs: {type: "border-card", value: "power"},
                    on: {"tab-click": e.changeTab}
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("timerPicker", {attrs: {time: e.time}}), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
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
                    attrs: {data: e.powerRank.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "showTime",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "rank",
                        label: "排名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "playerName",
                        label: "玩家名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "power",
                        label: "势力值"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "server",
                        label: "玩家获得的所属区服"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.powerRank.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.powerRank.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.powerRank.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "关卡榜",
                        name: "level"
                    }
                }, [a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.levelRank.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "showTime",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "rank",
                        label: "排名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "playerName",
                        label: "玩家名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "power",
                        label: "势力值"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "server",
                        label: "玩家获得的所属区服"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.levelRank.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.levelRank.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.levelRank.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "亲密榜",
                        name: "love"
                    }
                }, [a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.loveRank.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "showTime",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "rank",
                        label: "排名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "playerName",
                        label: "玩家名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "power",
                        label: "势力值"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "server",
                        label: "玩家获得的所属区服"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.loveRank.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.loveRank.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.loveRank.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "帮派榜",
                        name: "gang"
                    }
                }, [a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.gangRank.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "showTime",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "rank",
                        label: "排名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "playerName",
                        label: "帮派名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "power",
                        label: "势力值"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "gangRank",
                        label: "帮派等级"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "server",
                        label: "所属区服"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.gangRank.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.gangRank.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.gangRank.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)], 1)
            }, staticRenderFns: []
        };
        var at = a("VU/8")(et, tt, !1, function (e) {
            a("3y5I")
        }, "data-v-e0005f28", null).exports, nt = {
            name: "channel-data", data: function () {
                return {
                    channelData: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    time: {fromTime: "", toTime: ""}
                }
            }, components: {timerPicker: fe}, mounted: function () {
                this.loadTableData()
            }, methods: {
                loadTableData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, l = e.time.fromTime, r = e.time.toTime, s = e.channelData.current_page, o = e.channelData.page_size, b.a.get("/channel/listChanelSummary.do", {
                                        params: {
                                            start: l,
                                            end: r,
                                            page: s,
                                            rows: o
                                        }
                                    });
                                case 3:
                                    return a = t.sent, e.channelData.tableData = [], t.next = 7, e.$checkData(a.data);
                                case 7:
                                    n = t.sent, e.channelData.total = n.total, n.rows.forEach(function (t) {
                                        e.channelData.tableData.push({
                                            showTime: t.showTime,
                                            name: t.channelName,
                                            activation: t.activatePlayer,
                                            registered: t.registerPlayer,
                                            active: t.activePlayer,
                                            recharge: t.rechargePlayer,
                                            secondStay: t.timeLeave,
                                            threeStay: t.threedayLeave,
                                            sevenStay: t.sevendayLeave,
                                            PaymentRate: t.payRate,
                                            rechargeAmount: t.rechargeMoney,
                                            PaymentAp: t.payAp,
                                            registeredAp: t.registerAp
                                        })
                                    }), t.next = 14;
                                    break;
                                case 12:
                                    t.prev = 12, t.t0 = t.catch(0);
                                case 14:
                                case"end":
                                    return t.stop()
                            }
                            var l, r, s, o
                        }, t, e, [[0, 12]])
                    }))()
                }, handleCurrentChange: function (e) {
                    this.channelData.current_page = e, this.loadTableData()
                }, handleSizeChange: function (e) {
                    this.channelData.page_size = e, this.loadTableData()
                }
            }, watch: {
                "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
                }
            }
        }, lt = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {
                    staticStyle: {
                        padding: "5px 15px",
                        "box-sizing": "border-box"
                    }
                }, [a("timerPicker", {
                    staticStyle: {"margin-bottom": "5px"},
                    attrs: {time: e.time, span: 16}
                }), e._v(" "), a("el-table", {
                    attrs: {
                        data: e.channelData.tableData,
                        stripe: "",
                        border: !0
                    }
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "showTime",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
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
                        "current-page": e.channelData.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.channelData.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.channelData.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var rt = a("VU/8")(nt, lt, !1, function (e) {
            a("kiiE")
        }, "data-v-83a10136", null).exports, st = {
            name: "user-rank", data: function () {
                return {
                    userRank: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    servers: {data: [], value: ""},
                    channel: {data: [], value: ""},
                    time: {fromTime: "", toTime: ""}
                }
            }, components: {timerPicker: fe}, mounted: function () {
                H.call(this), this.loadTableData()
            }, methods: {
                loadTableData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, l = e.time.fromTime, r = e.time.toTime, s = e.servers.value, o = e.channel.value, i = e.userRank.current_page, c = e.userRank.page_size, b.a.get("/behavior/listGradePalyer.do", {
                                        params: {
                                            start: l,
                                            end: r,
                                            serverId: s,
                                            channelId: o,
                                            page: i,
                                            rows: c
                                        }
                                    });
                                case 3:
                                    return a = t.sent, e.userRank.tableData = [], t.next = 7, e.$checkData(a.data);
                                case 7:
                                    n = t.sent, e.userRank.total = n.total, n.rows.forEach(function (t) {
                                        e.userRank.tableData.push({
                                            showTime: t.showTime,
                                            rankList: t.gradeSection,
                                            count: t.gradePlayer
                                        })
                                    }), t.next = 14;
                                    break;
                                case 12:
                                    t.prev = 12, t.t0 = t.catch(0);
                                case 14:
                                case"end":
                                    return t.stop()
                            }
                            var l, r, s, o, i, c
                        }, t, e, [[0, 12]])
                    }))()
                }, handleCurrentChange: function (e) {
                    this.userRank.current_page = e, this.loadTableData()
                }, handleSizeChange: function (e) {
                    this.userRank.page_size = e, this.loadTableData()
                }
            }, watch: {
                "servers.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "channel.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
                }
            }
        }, ot = {
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
                }, [a("timerPicker", {
                    attrs: {
                        time: e.time,
                        span: 8
                    }
                }), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
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
                    attrs: {data: e.userRank.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "showTime",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
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
                        "current-page": e.userRank.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.userRank.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.userRank.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var it = a("VU/8")(st, ot, !1, function (e) {
            a("zI6l")
        }, "data-v-0c291970", null).exports, ct = {
            name: "activity-people-number", data: function () {
                return {
                    activityPeople: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    servers: {data: [], value: ""},
                    time: {fromTime: "", toTime: ""}
                }
            }, components: {timerPicker: fe}, mounted: function () {
                H.call(this), this.loadTableData()
            }, methods: {
                loadTableData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, l = e.time.fromTime, r = e.time.toTime, s = e.servers.value, o = e.activityPeople.current_page, i = e.activityPeople.page_size, b.a.get("/activity/listActivityNum.do", {
                                        params: {
                                            start: l,
                                            end: r,
                                            serverId: s,
                                            page: o,
                                            rows: i
                                        }
                                    });
                                case 3:
                                    return a = t.sent, e.activityPeople.tableData = [], t.next = 7, e.$checkData(a.data);
                                case 7:
                                    n = t.sent, e.activityPeople.total = n.total, n.rows.forEach(function (t) {
                                        e.activityPeople.tableData.push({
                                            recordTime: t.recordTime,
                                            number: t.activityNumber,
                                            count: t.activityPlayerCount,
                                            expend: t.consumeIngot
                                        })
                                    }), t.next = 14;
                                    break;
                                case 12:
                                    t.prev = 12, t.t0 = t.catch(0);
                                case 14:
                                case"end":
                                    return t.stop()
                            }
                            var l, r, s, o, i
                        }, t, e, [[0, 12]])
                    }))()
                }, handleCurrentChange: function (e) {
                    this.activityPeople.current_page = e, this.loadTableData()
                }, handleSizeChange: function (e) {
                    this.activityPeople.page_size = e, this.loadTableData()
                }
            }, watch: {
                "servers.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
                }
            }
        }, ut = {
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
                }, [a("timerPicker", {attrs: {time: e.time}}), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择区服"},
                    model: {
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-table", {
                    staticStyle: {width: "100%"},
                    attrs: {data: e.activityPeople.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "recordTime",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
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
                        "current-page": e.activityPeople.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.activityPeople.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.activityPeople.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var pt = a("VU/8")(ct, ut, !1, function (e) {
            a("pmgW")
        }, "data-v-6497a02d", null).exports, vt = {
            name: "activity-output-expends", data: function () {
                return {
                    activityOutput: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    servers: {data: [], value: ""},
                    time: {fromTime: "", toTime: ""}
                }
            }, components: {timerPicker: fe}, mounted: function () {
                H.call(this), this.loadTableData()
            }, methods: {
                loadTableData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, l = e.time.fromTime, r = e.time.toTime, s = e.servers.value, o = e.activityOutput.current_page, i = e.activityOutput.page_size, b.a.get("/activity/listActivityOutput.do", {
                                        params: {
                                            start: l,
                                            end: r,
                                            serverId: s,
                                            page: o,
                                            rows: i
                                        }
                                    });
                                case 3:
                                    return a = t.sent, e.activityOutput.tableData = [], t.next = 7, e.$checkData(a.data);
                                case 7:
                                    n = t.sent, e.activityOutput.total = n.total, n.rows.forEach(function (t) {
                                        e.activityOutput.tableData.push({
                                            recordeTime: t.recordeTime,
                                            id: t.propId,
                                            output: t.output,
                                            expends: t.consume
                                        })
                                    }), t.next = 14;
                                    break;
                                case 12:
                                    t.prev = 12, t.t0 = t.catch(0);
                                case 14:
                                case"end":
                                    return t.stop()
                            }
                            var l, r, s, o, i
                        }, t, e, [[0, 12]])
                    }))()
                }, handleCurrentChange: function (e) {
                    this.activityOutput.current_page = e, this.loadTableData()
                }, handleSizeChange: function (e) {
                    this.activityOutput.page_size = e, this.loadTableData()
                }
            }, watch: {
                "servers.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
                }
            }
        }, dt = {
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
                }, [a("timerPicker", {attrs: {time: e.time}}), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择区服"},
                    model: {
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-table", {
                    staticStyle: {width: "100%"},
                    attrs: {data: e.activityOutput.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "recordeTime",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
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
                        "current-page": e.activityOutput.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.activityOutput.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.activityOutput.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var ht = a("VU/8")(vt, dt, !1, function (e) {
            a("YtVe")
        }, "data-v-78a6c36c", null).exports, mt = {
            name: "admin-system", data: function () {
                return {
                    gangRank: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    personRank: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    servers: {data: [], value: ""},
                    selectPane: "gang",
                    time: {fromTime: "", toTime: ""}
                }
            }, components: {timerPicker: fe}, mounted: function () {
                H.call(this), this.loadTableData()
            }, methods: {
                loadTableData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a, n, r, s, o;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, a = null, n = null, "gang" === e.selectPane ? (a = "gangRank", n = V) : "person" === e.selectPane && (a = "personRank", n = A), r = e[a], t.next = 7, n(e.time.fromTime, e.time.toTime, e.servers.value, r.current_page, r.page_size);
                                case 7:
                                    return s = t.sent, r.tableData = [], t.next = 11, e.$checkData(s.data);
                                case 11:
                                    o = t.sent, r.total = o.total, o.rows.forEach(function (t) {
                                        var a = {};
                                        "gang" === e.selectPane ? a = {
                                            recordTime: t.recordTime,
                                            one: t.gangId,
                                            name: t.gangName,
                                            count: t.serverName
                                        } : "person" === e.selectPane && (a = {
                                            recordTime: t.recordTime,
                                            one: t.personRankId,
                                            name: t.playerName,
                                            count: t.serverName
                                        }), r.tableData.push(a)
                                    }), t.next = 18;
                                    break;
                                case 16:
                                    t.prev = 16, t.t0 = t.catch(0);
                                case 18:
                                case"end":
                                    return t.stop()
                            }
                        }, t, e, [[0, 16]])
                    }))()
                }, handleCurrentChange: function (e) {
                    "gang" === this.selectPane ? this.gangRank.current_page = e : "person" === this.selectPane && (this.personRank.current_page = e), this.loadTableData()
                }, handleSizeChange: function (e) {
                    "gang" === this.selectPane ? this.gangRank.page_size = e : "person" === this.selectPane && (this.personRank.page_size = e), this.loadTableData()
                }, changeTab: function (e) {
                    this.selectPane = e.name, this.time.fromTime = "", this.time.toTime = "", this.servers.value = null, this.loadTableData()
                }
            }, watch: {
                "servers.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
                }
            }
        }, gt = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("el-tabs", {
                    staticClass: "content",
                    attrs: {type: "border-card", value: "gang"},
                    on: {"tab-click": e.changeTab}
                }, [a("el-row", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {type: "flex", align: "middle"}
                }, [a("timerPicker", {attrs: {time: e.time}}), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "帮派排行",
                        name: "gang"
                    }
                }, [a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.gangRank.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "recordTime",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
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
                        "current-page": e.gangRank.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.gangRank.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.gangRank.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "个人排行",
                        name: "person"
                    }
                }, [a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.personRank.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "recordTime",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
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
                        "current-page": e.personRank.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.personRank.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.personRank.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)], 1)
            }, staticRenderFns: []
        };
        var ft = a("VU/8")(mt, gt, !1, function (e) {
            a("HCkT")
        }, "data-v-3e54a454", null).exports, bt = {
            name: "loss-player", data: function () {
                return {
                    everyDayPay: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    servers: {data: [], value: ""},
                    channel: {data: [], value: ""},
                    time: {fromTime: "", toTime: ""}
                }
            }, components: {timerPicker: fe}, mounted: function () {
                H.call(this), this.loadTableData()
            }, methods: {
                loadTableData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, l = e.time.fromTime, r = e.time.toTime, s = e.servers.value, o = e.channel.value, i = e.everyDayPay.current_page, c = e.everyDayPay.page_size, b.a.get("/recharge/listEveryDayCharge.do", {
                                        params: {
                                            start: l,
                                            end: r,
                                            serverId: s,
                                            channelId: o,
                                            page: i,
                                            rows: c
                                        }
                                    });
                                case 3:
                                    return a = t.sent, e.everyDayPay.tableData = [], t.next = 7, e.$checkData(a.data);
                                case 7:
                                    n = t.sent, e.everyDayPay.total = n.total, n.rows.forEach(function (t) {
                                        e.everyDayPay.tableData.push({
                                            date: t.rechargeTime,
                                            people_number: t.rechargeUserCount,
                                            people_number1: t.rechargeFirstUser,
                                            count: t.rechargeCount,
                                            count1: t.rechargeFirstCount,
                                            amount: t.rechargeMoney,
                                            amount1: t.rechargeFirstMoney,
                                            yuanbao: t.rechargeIngot,
                                            yuanbao1: t.rechargeFirstIngot,
                                            arpu: t.arpu,
                                            arpu1: t.firstArpu
                                        })
                                    }), t.next = 14;
                                    break;
                                case 12:
                                    t.prev = 12, t.t0 = t.catch(0);
                                case 14:
                                case"end":
                                    return t.stop()
                            }
                            var l, r, s, o, i, c
                        }, t, e, [[0, 12]])
                    }))()
                }, handleCurrentChange: function (e) {
                    this.everyDayPay.current_page = e, this.loadTableData()
                }, handleSizeChange: function (e) {
                    this.everyDayPay.page_size = e, this.loadTableData()
                }
            }, watch: {
                "servers.value": function (e, t) {
                    "" !== e && this.loadTableData()
                }, "channel.value": function (e, t) {
                    "" !== e && this.loadTableData()
                }, "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
                }
            }
        }, _t = {
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
                }, [a("timerPicker", {attrs: {time: e.time}}), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
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
                    attrs: {data: e.everyDayPay.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "300",
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
                        "current-page": e.everyDayPay.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.everyDayPay.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.everyDayPay.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var wt = a("VU/8")(bt, _t, !1, function (e) {
            a("Gcsl")
        }, "data-v-50964aac", null).exports, yt = {
            name: "user-rank", data: function () {
                return {
                    billingPointAnalysis: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    servers: {data: [], value: ""},
                    channel: {data: [], value: ""},
                    time: {fromTime: "", toTime: ""}
                }
            }, components: {timerPicker: fe}, mounted: function () {
                H.call(this), this.loadTableData()
            }, methods: {
                loadTableData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a, n;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, l = e.time.fromTime, r = e.time.toTime, s = e.servers.value, o = e.channel.value, i = e.billingPointAnalysis.current_page, c = e.billingPointAnalysis.page_size, b.a.get("/recharge/listPointAnalyse.do", {
                                        params: {
                                            start: l,
                                            end: r,
                                            serverId: s,
                                            channelId: o,
                                            page: i,
                                            rows: c
                                        }
                                    });
                                case 3:
                                    return a = t.sent, e.billingPointAnalysis.tableData = [], t.next = 7, e.$checkData(a.data);
                                case 7:
                                    n = t.sent, e.billingPointAnalysis.total = n.total, n.rows.forEach(function (t) {
                                        e.billingPointAnalysis.tableData.push({
                                            showTime: t.showTime,
                                            billingPoint: t.chargingTime,
                                            count: t.buyNumUser,
                                            count1: t.rechargeFirstBuyuser
                                        })
                                    }), t.next = 14;
                                    break;
                                case 12:
                                    t.prev = 12, t.t0 = t.catch(0);
                                case 14:
                                case"end":
                                    return t.stop()
                            }
                            var l, r, s, o, i, c
                        }, t, e, [[0, 12]])
                    }))()
                }, handleCurrentChange: function (e) {
                    this.billingPointAnalysis.current_page = e, this.loadTableData()
                }, handleSizeChange: function (e) {
                    this.billingPointAnalysis.page_size = e, this.loadTableData()
                }
            }, watch: {
                "servers.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "channel.value": function (e) {
                    "" !== e && this.loadTableData()
                }, "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
                }
            }
        }, kt = {
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
                }, [a("timerPicker", {attrs: {time: e.time}}), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
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
                    attrs: {data: e.billingPointAnalysis.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "showTime",
                        label: "日期"
                    }
                }), e._v(" "), a("el-table-column", {
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
                        "current-page": e.billingPointAnalysis.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.billingPointAnalysis.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.billingPointAnalysis.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        };
        var xt = a("VU/8")(yt, kt, !1, function (e) {
            a("qkpU")
        }, "data-v-232cff24", null).exports, Dt = {
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
        var Tt = a("VU/8")({
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
        }, Dt, !1, function (e) {
            a("9VM1")
        }, "data-v-00d8c9dc", null).exports, Ct = {
            name: "system-mail", data: function () {
                return {
                    sendLog: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    servers: {value: "", data: []},
                    channel: {value: "", data: []},
                    all: !1,
                    selectPane: "send",
                    time: {fromTime: "", toTime: ""}
                }
            }, components: {timerPicker: fe}, mounted: function () {
                H.call(this)
            }, methods: {
                changeTab: function (e) {
                    this.selectPane = e.name, "log" === e.name && this.loadTableData()
                }
            }
        }, It = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("el-tabs", {
                    staticClass: "content",
                    attrs: {type: "border-card", value: "send"},
                    on: {"tab-click": e.changeTab}
                }, [a("el-tab-pane", {attrs: {label: "发送邮件", name: "send"}}, [a("el-row", {
                    attrs: {
                        type: "flex",
                        align: "middle",
                        justify: "center"
                    }
                }, [a("el-col", {attrs: {span: 2}}, [e._v("区服")]), e._v(" "), a("el-col", {
                    attrs: {
                        span: 6,
                        align: "left"
                    }
                }, [a("el-select", {
                    attrs: {multiple: "", placeholder: "请选择区服"},
                    model: {
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("渠道")]), e._v(" "), a("el-col", {
                    attrs: {
                        span: 6,
                        align: "left"
                    }
                }, [a("el-select", {
                    attrs: {multiple: "", placeholder: "请选择区服"},
                    model: {
                        value: e.channel.value, callback: function (t) {
                            e.$set(e.channel, "value", t)
                        }, expression: "channel.value"
                    }
                }, e._l(e.channel.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("玩家")]), e._v(" "), a("el-col", {
                    attrs: {
                        span: 6,
                        align: "left"
                    }
                }, [a("el-input", {attrs: {placeholder: "请输入玩家id,多个玩家用英文逗号分开"}})], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("全体")]), e._v(" "), a("el-col", {
                    attrs: {
                        span: 6,
                        align: "left"
                    }
                }, [a("el-checkbox", {
                    model: {
                        value: e.all, callback: function (t) {
                            e.all = t
                        }, expression: "all"
                    }
                })], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
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
                }, [a("el-col", {attrs: {span: 2}}, [e._v("道具")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("div", {
                    staticStyle: {"margin-top": "20px"},
                    attrs: {align: "center"}
                }, [a("el-button", [e._v("清 空")]), e._v(" "), a("el-button", {attrs: {type: "primary"}}, [e._v("确 定")])], 1)], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "发送记录",
                        name: "log"
                    }
                }, [a("timerPicker", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {time: e.time}
                }), e._v(" "), a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.sendLog.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "one",
                        label: "发送条件"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "name",
                        label: "服务器"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "name",
                        label: "邮件内容"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "发送人"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "发送时间"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "发送状态"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    staticStyle: {"margin-top": "10px"},
                    attrs: {
                        "current-page": e.sendLog.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.sendLog.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.sendLog.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)], 1)
            }, staticRenderFns: []
        };
        var zt = a("VU/8")(Ct, It, !1, function (e) {
            a("gGqR")
        }, "data-v-b9fdce56", null).exports, Pt = {
            name: "inform-management", data: function () {
                return {
                    synchronize: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    time: {fromTime: "", toTime: ""},
                    selectPane: "send"
                }
            }, components: {timerPicker: fe}, methods: {
                changeTab: function (e) {
                    this.selectPane = e.name, "synchronize" === e.name && this.loadTableData()
                }
            }
        }, St = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("el-tabs", {
                    staticClass: "content",
                    attrs: {type: "border-card", value: "send"},
                    on: {"tab-click": e.changeTab}
                }, [a("el-tab-pane", {
                    attrs: {
                        label: "发送公告",
                        name: "send"
                    }
                }, [a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("公告标题")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-input", {attrs: {placeholder: "请输入标题"}})], 1)], 1), e._v(" "), a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("内容")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-input", {
                    attrs: {
                        type: "textarea",
                        placeholder: "请输入内容",
                        rows: 10
                    }
                })], 1)], 1), e._v(" "), a("div", {
                    staticStyle: {"margin-top": "20px"},
                    attrs: {align: "center"}
                }, [a("el-button", [e._v("清 空")]), e._v(" "), a("el-button", {attrs: {type: "primary"}}, [e._v("确 定")])], 1)], 1), e._v(" "), a("el-tab-pane", {
                    attrs: {
                        label: "同步公告",
                        name: "synchronize"
                    }
                }, [a("timerPicker", {
                    staticStyle: {"margin-bottom": "10px"},
                    attrs: {time: e.time}
                }), e._v(" "), a("el-table", {
                    staticClass: "dataTable",
                    attrs: {data: e.synchronize.tableData, border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "one",
                        label: "id"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "name",
                        label: "标题"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "name",
                        label: "内容"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "奖励"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "通知"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "同步"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "时间"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "日志"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    staticStyle: {"margin-top": "10px"},
                    attrs: {
                        "current-page": e.synchronize.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.synchronize.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.synchronize.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)], 1)
            }, staticRenderFns: []
        };
        var Ut = a("VU/8")(Pt, St, !1, function (e) {
            a("8wUX")
        }, "data-v-ca7389ac", null).exports, Rt = {
            name: "chat-monitor", data: function () {
                return {
                    chatMonitor: {page_size: 10, current_page: 1, tableData: [], total: 0},
                    servers: {data: [], value: ""},
                    crossService: {data: [], value: ""},
                    alliance: {data: [], value: ""},
                    time: {fromTime: "", toTime: ""}
                }
            }, components: {timerPicker: fe}, mounted: function () {
                H.call(this), this.loadTableData()
            }, methods: {
                loadTableData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        return l.a.wrap(function (e) {
                            for (; ;) switch (e.prev = e.next) {
                                case 0:
                                case 1:
                                case"end":
                                    return e.stop()
                            }
                        }, t, e)
                    }))()
                }, handleCurrentChange: function (e) {
                    this.chatMonitor.current_page = e, this.loadTableData()
                }, handleSizeChange: function (e) {
                    this.chatMonitor.page_size = e, this.loadTableData()
                }
            }, watch: {
                "servers.value": function (e, t) {
                    "" !== t && this.loadTableData()
                }, "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
                }
            }
        }, Nt = {
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
                }, [a("timerPicker", {attrs: {time: e.time}})], 1), e._v(" "), a("el-row", {
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
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("跨服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.crossService.value, callback: function (t) {
                            e.$set(e.crossService, "value", t)
                        }, expression: "crossService.value"
                    }
                }, e._l(e.crossService.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("联盟:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {placeholder: "请选择"},
                    model: {
                        value: e.alliance.value, callback: function (t) {
                            e.$set(e.alliance, "value", t)
                        }, expression: "alliance.value"
                    }
                }, e._l(e.alliance.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1)], 1), e._v(" "), a("el-table", {
                    staticStyle: {width: "100%"},
                    attrs: {data: e.chatMonitor.tableData, stripe: "", border: !0}
                }, [a("el-table-column", {
                    attrs: {
                        width: "300",
                        align: "center",
                        prop: "date",
                        label: "服务器"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "people_number",
                        label: "角色名"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "people_number1",
                        label: "账号"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count",
                        label: "等级"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "count1",
                        label: "充值(元宝)"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "amount",
                        label: "聊天内容"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "amount1",
                        label: "时间"
                    }
                }), e._v(" "), a("el-table-column", {
                    attrs: {
                        width: "150",
                        align: "center",
                        prop: "yuanbao",
                        label: "操作"
                    }
                })], 1), e._v(" "), a("el-pagination", {
                    staticClass: "pagination",
                    attrs: {
                        "current-page": e.chatMonitor.current_page,
                        "page-sizes": [10, 50, 100, 200],
                        "page-size": e.chatMonitor.page_size,
                        layout: "total, sizes, prev, pager, next, jumper",
                        total: e.chatMonitor.total
                    },
                    on: {"size-change": e.handleSizeChange, "current-change": e.handleCurrentChange}
                })], 1)
            }, staticRenderFns: []
        }, $t = a("VU/8")(Rt, Nt, !1, null, null, null).exports, Et = {
            name: "chat-monitor", data: function () {
                return {servers: {value: "", data: []}, tableData: q}
            }, mounted: function () {
                H.call(this)
            }
        }, Lt = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {attrs: {align: "center"}}, [a("el-row", {
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 1}}, [e._v("区服")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
                    attrs: {
                        multiple: "",
                        placeholder: "请选择区服"
                    }, model: {
                        value: e.servers.value, callback: function (t) {
                            e.$set(e.servers, "value", t)
                        }, expression: "servers.value"
                    }
                }, e._l(e.servers.data, function (e) {
                    return a("el-option", {key: e.value, attrs: {label: e.label, value: e.value}})
                }))], 1), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("玩家id")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-input", {attrs: {placeholder: "请输入id号"}})], 1)], 1), e._v(" "), a("el-form", {
                    staticStyle: {
                        width: "700px",
                        "margin-top": "30px"
                    }, attrs: {"label-position": "left", inline: ""}
                }, e._l(e.tableData, function (e) {
                    return a("el-form-item", {key: e.id, staticClass: "form-item", attrs: {label: e.label}})
                })), e._v(" "), a("div", {staticStyle: {"margin-top": "20px"}}, [a("el-button", {attrs: {type: "primary"}}, [e._v("查 询")]), e._v(" "), a("el-button", {attrs: {type: "danger"}}, [e._v("修 改")])], 1)], 1)
            }, staticRenderFns: []
        };
        var jt = a("VU/8")(Et, Lt, !1, function (e) {
            a("hXVB")
        }, "data-v-4789650d", null).exports, Ot = {
            name: "ltv", data: function () {
                return {
                    ltvData: [],
                    servers: {data: [], value: ""},
                    channel: {data: [], value: ""},
                    time: {fromTime: "", toTime: ""}
                }
            }, mounted: function () {
                H.call(this), this.loadTableData()
            }, components: {timerPicker: fe}, methods: {
                exportExcel: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        return l.a.wrap(function (e) {
                            for (; ;) switch (e.prev = e.next) {
                                case 0:
                                    window.open("/general/exportLtvCount.do");
                                case 1:
                                case"end":
                                    return e.stop()
                            }
                        }, t, e)
                    }))()
                }, loadTableData: function () {
                    var e = this;
                    return s()(l.a.mark(function t() {
                        var a;
                        return l.a.wrap(function (t) {
                            for (; ;) switch (t.prev = t.next) {
                                case 0:
                                    return t.prev = 0, t.next = 3, n = e.time.fromTime, l = e.time.toTime, r = e.servers.value, s = e.channel.value, b.a.get("/general/listLtvCount.do", {
                                        params: {
                                            start: n,
                                            end: l,
                                            serverId: r,
                                            channelId: s
                                        }
                                    });
                                case 3:
                                    return a = t.sent, e.ltvData = [], t.next = 7, e.$checkData(a.data);
                                case 7:
                                    a.data.data.forEach(function (t) {
                                        e.ltvData.push({
                                            time: t.recordeTime,
                                            one: t.onedayLtv,
                                            two: t.twodayLtv,
                                            three: t.threedayLtv,
                                            four: t.fourdayLtv,
                                            five: t.fivedayLtv,
                                            six: t.sixdayLtv,
                                            seven: t.sevendayLtv,
                                            fifteen: t.fifteendayLtv,
                                            thirty: t.thirtydayLtv
                                        })
                                    }), t.next = 13;
                                    break;
                                case 10:
                                    t.prev = 10, t.t0 = t.catch(0), console.log(t.t0);
                                case 13:
                                case"end":
                                    return t.stop()
                            }
                            var n, l, r, s
                        }, t, e, [[0, 10]])
                    }))()
                }
            }, watch: {
                "servers.value": function (e, t) {
                    "" !== e && this.loadTableData()
                }, "channel.value": function (e, t) {
                    "" !== e && this.loadTableData()
                }, "time.fromTime": function () {
                    this.loadTableData()
                }, "time.toTime": function () {
                    this.loadTableData()
                }
            }
        }, Vt = {
            render: function () {
                var e = this, t = e.$createElement, a = e._self._c || t;
                return a("div", {staticClass: "ltv"}, [a("el-row", {
                    staticClass: "top",
                    attrs: {type: "flex", align: "middle"}
                }, [a("el-col", {attrs: {span: 2}}, [a("el-button", {
                    attrs: {type: "warning", size: "small"},
                    on: {click: e.exportExcel}
                }, [a("i", {staticClass: "el-icon-share"}), e._v("导出 Excel")])], 1), e._v(" "), a("timerPicker", {
                    attrs: {
                        time: e.time,
                        span: 8
                    }
                }), e._v(" "), a("el-col", {attrs: {span: 1}}, [e._v("区服:")]), e._v(" "), a("el-col", {attrs: {span: 4}}, [a("el-select", {
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
                        label: "日期"
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
        var At = a("VU/8")(Ot, Vt, !1, function (e) {
            a("YpNa")
        }, "data-v-4ca9609e", null).exports, Ft = {
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
                }, [a("el-col", {attrs: {span: 2}}, [e._v("角色id")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("el-row", {
                    staticClass: "item",
                    staticStyle: {"margin-top": "10px"},
                    attrs: {type: "flex", align: "middle", justify: "center"}
                }, [a("el-col", {attrs: {span: 2}}, [e._v("订单ID")]), e._v(" "), a("el-col", {attrs: {span: 6}}, [a("el-input", {attrs: {placeholder: "请输入内容"}})], 1)], 1), e._v(" "), a("div", {staticStyle: {"margin-top": "20px"}}, [a("el-button", [e._v("清 空")]), e._v(" "), a("el-button", {attrs: {type: "primary"}}, [e._v("确 定")])], 1)], 1)
            }, staticRenderFns: []
        };
        var Mt = a("VU/8")({
            name: "recharge", data: function () {
                return {
                    userName: {select: "全部平台", options: [{value: "选项1", label: "全部平台"}]},
                    server: {select: "全部服务器", options: [{value: "选项1", label: "全部服务器"}]},
                    recharge: {select: "月卡", options: [{value: "选项1", label: "月卡"}]}
                }
            }
        }, Ft, !1, function (e) {
            a("aPik")
        }, "data-v-0fbdfe46", null).exports, Gt = {
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
        var Wt = a("VU/8")({
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
        }, Gt, !1, function (e) {
            a("4w7F")
        }, "data-v-3e8dc7cc", null).exports;
        o.default.use(u.a);
        var Bt = new u.a({
            routes: [{
                path: "/",
                name: "management",
                component: ee,
                children: [{
                    path: "/management/rechargeLog",
                    name: "rechargeLog",
                    component: Wt
                }, {path: "/management/recharge", name: "recharge", component: Mt}, {
                    path: "/management/ltv",
                    name: "ltv",
                    component: At
                }, {
                    path: "/management/playerInfoSearch",
                    name: "playerInfoSearch",
                    component: jt
                }, {
                    path: "/management/chatMonitor",
                    name: "chatMonitor",
                    component: $t
                }, {
                    path: "/management/informManagement",
                    name: "informManagement",
                    component: Ut
                }, {path: "/management/systemMail", name: "systemMail", component: zt}, {
                    path: "/management/gameOpen",
                    name: "gameOpen",
                    component: Tt
                }, {
                    path: "/management/rankInformation",
                    name: "rankInformation",
                    component: at
                }, {
                    path: "/management/outputExpends",
                    name: "outputExpends",
                    component: Ze
                }, {
                    path: "/management/taskInformation",
                    name: "taskInformation",
                    component: Xe
                }, {path: "/management/daily", name: "daily", component: we}, {
                    path: "/management/listManagement",
                    name: "listManagement",
                    component: pe
                }, {
                    path: "/management/billingPointAnalysis",
                    name: "billingPointAnalysis",
                    component: xt
                }, {
                    path: "/management/rechargeEveryDay",
                    name: "rechargeEveryDay",
                    component: wt
                }, {
                    path: "/management/activityRank",
                    name: "activityRank",
                    component: ft
                }, {
                    path: "/management/activityOutputExpends",
                    name: "activityOutputExpends",
                    component: ht
                }, {
                    path: "/management/activityPeopleNumber",
                    name: "activityPeopleNumber",
                    component: pt
                }, {
                    path: "/management/loosLvPlayer",
                    name: "loosLvPlayer",
                    component: Ee
                }, {
                    path: "/management/loosPlayer",
                    name: "loosPlayer",
                    component: Re
                }, {
                    path: "/management/gameUserRank",
                    name: "gameUserRank",
                    component: it
                }, {
                    path: "/management/channelData",
                    name: "channelData",
                    component: rt
                }, {
                    path: "/management/gameBehaviorNumber",
                    name: "gameBehaviorNumber",
                    component: qe
                }, {
                    path: "/management/gameBehaviorRank",
                    name: "gameBehaviorRank",
                    component: We
                }, {
                    path: "/management/gameBehaviorVip",
                    name: "gameBehaviorVip",
                    component: Fe
                }, {
                    path: "/management/onlineUser",
                    name: "onlineUser",
                    component: Oe
                }, {
                    path: "/management/admin-management",
                    name: "adminSystem",
                    component: re
                }, {path: "/management/role-management", name: "roleManagement", component: ie}, {
                    path: "/",
                    name: "overview",
                    component: he
                }, {path: "/management/newPlayer", name: "newPlayer", component: xe}, {
                    path: "/management/activePlayer",
                    name: "activePlayer",
                    component: Ce
                }, {path: "/management/retainPlayer", name: "retainPlayer", component: Pe}]
            }]
        }), Kt = a("zL8q"), qt = a.n(Kt);
        a("tvR6");
        s()(l.a.mark(function e() {
            return l.a.wrap(function (e) {
                for (; ;) switch (e.prev = e.next) {
                    case 0:
                        return o.default.use(qt.a), o.default.config.productionTip = !1, o.default.prototype.$http = b.a, o.default.prototype.$checkData = K, e.prev = 4, e.next = 7, B();
                    case 7:
                        e.next = 12;
                        break;
                    case 9:
                        e.prev = 9, e.t0 = e.catch(4), console.log();
                    case 12:
                        new o.default({el: "#app", router: Bt, components: {App: c}, template: "<App/>"});
                    case 13:
                    case"end":
                        return e.stop()
                }
            }, e, this, [[4, 9]])
        }))()
    }, YpNa: function (e, t) {
    }, YtVe: function (e, t) {
    }, a4bl: function (e, t) {
    }, aPik: function (e, t) {
    }, gGqR: function (e, t) {
    }, gbDQ: function (e, t) {
    }, hRnl: function (e, t) {
    }, hXVB: function (e, t) {
    }, kXCV: function (e, t) {
    }, kiiE: function (e, t) {
    }, lF3Q: function (e, t) {
    }, llAr: function (e, t) {
    }, lrWy: function (e, t) {
    }, m4YG: function (e, t) {
    }, pmgW: function (e, t) {
    }, qkpU: function (e, t) {
    }, tvR6: function (e, t) {
    }, "vLj+": function (e, t) {
    }, wv6N: function (e, t) {
    }, xL7u: function (e, t) {
    }, yusl: function (e, t) {
    }, z90V: function (e, t) {
    }, zI6l: function (e, t) {
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