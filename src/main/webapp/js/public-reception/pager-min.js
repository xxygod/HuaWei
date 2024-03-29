(function (c) {
    var d = function (a) {
        var b = /^\d*$/;
        return b.test(a)
    };
    c.fn.pager = function (b) {
        function f(h, e) {
            this.render = function () {
                if (h.pageNumber > h.pageCount) {
                    return
                }
                var g = c("<ul></ul>");
                var i = h.item;
                for (var l = 0; l < i.length; l++) {
                    g.append(this.handler(i[l]))
                }
                return g
            };
            this.handler = function (j) {
                switch (j) {
                    case"recordCount":
                        var g = h.text.recordCount;
                        g = g.replace(/{#recordCount}/g, h.recordCount);
                        return c('<li class="recordCount">' + g + "</li>");
                    case"first":
                    case"pre":
                    case"next":
                    case"last":
                        return this.renderButton(j);
                    case"pageCount":
                        var g = h.text.pageCount;
                        g = g.replace(/{#pageCount}/g, h.pageCount);
                        return c('<li class="pageCount">' + g + "</li>");
                    case"qpage":
                        return this.renderQPages();
                    case"pageSizer":
                        return this.renderPageSizer();
                    case"quickPager":
                        return this.renderQuickPager();
                    default:
                        return '<li class="text">' + j + "</li>"
                }
            };
            this.renderButton = function (g) {
                var o = 1;
                var m = h.text[g];
                switch (g) {
                    case"first":
                        o = 1;
                        break;
                    case"pre":
                        o = h.pageNumber - 1;
                        break;
                    case"next":
                        o = h.pageNumber + 1;
                        break;
                    case"last":
                        o = h.pageCount;
                        break;
                    case"pageCount":
                        o = h.pageCount;
                        break
                }
                var p = new RegExp("{#" + g + "}", "gi");
                m = m.replace(p, o);
                var n = c('<li class="pgNext link ' + g + '">' + m + "</li>");
                if (g == "first" || g == "pre") {
                    h.pageNumber <= 1 ? n.addClass(g + "-empty") : n.bind("click", {E: this}, function (i) {
                        i.data.E.callBack(o)
                    })
                } else {
                    h.pageNumber >= h.pageCount ? n.addClass(g + "-empty") : n.bind("click", {E: this}, function (i) {
                        i.data.E.callBack(o)
                    })
                }
                return n
            };
            this.renderQPages = function () {
                var p = h.text.qpage;
                var m = c("<span class='qpages'></span>");
                var r = 1;
                var u = h.qpageSize;
                var v = parseInt(u / 2);
                if (h.pageNumber > v) {
                    r = h.pageNumber - v;
                    u = h.pageNumber + v
                }
                if (u > h.pageCount) {
                    r = h.pageCount - v * 2;
                    u = h.pageCount
                }
                if (r < 1) {
                    r = 1
                }
                for (var q = r; q <= u; q++) {
                    var k = c('<li class="page-number link">' + p.replace(/{#qpage}/g, q) + "</li>");
                    q == h.pageNumber ? k.addClass("pgCurrent") : k.bind("click", {E: this}, function (i) {
                        i.data.E.callBack(this.firstChild.data)
                    });
                    k.appendTo(m)
                }
                if (h.pageCount > h.qpageSize) {
                    var g = c('<li class="page-number link page-number-last">' + p.replace(/{#qpage}/g, h.pageCount) + "</li>");
                    var l = c('<li class="page-number link page-number-first">' + p.replace(/{#qpage}/g, "1") + "</li>");
                    h.pageNumber >= h.pageCount ? g.addClass("pgEmpty") : g.bind("click", {E: this}, function (i) {
                        i.data.E.callBack(h.pageCount)
                    });
                    var t = k.parent().find(".page-number").eq(0).text();
                    if (t > 1 && t == 2) {
                        l.bind("click", {F: this}, function (i) {
                            i.data.F.callBack("1")
                        });
                        l.prependTo(m)
                    } else {
                        if (t > 2) {
                            l.bind("click", {F: this}, function (i) {
                                i.data.F.callBack("1")
                            });
                            m.prepend('<li class="text">...</li>');
                            l.prependTo(m)
                        }
                    }
                    if (h.pageNumber < h.pageCount - 4) {
                        m.append('<li class="text">...</li>');
                        m.append(g)
                    }
                    var n = Number(g.parent().find(".page-number").eq(-2).text()),
                        s = Number(g.parent().find(".page-number").eq(-1).text());
                    if (n + 1 == s) {
                        g.prev(".text").remove()
                    }
                    if (n == s) {
                        g.prev(".text").remove();
                        g.remove()
                    }
                }
                return m
            };
            this.renderQuickPager = function () {
                if (h.pageCount <= 1) {
                    return null
                }
                var g = null;
                var i = c('<li class="text quickPager"></li>');
                if (h.pageCount <= 10) {
                    var m = "<select>";
                    for (var n = 1; n <= h.pageCount; n++) {
                        m += '<option value="' + n + '"';
                        if (n == h.pageNumber) {
                            m += " selected"
                        }
                        m += ">" + n + "</option>"
                    }
                    m += "</select>";
                    g = c(m);
                    g.bind("change", {E: this}, function (j) {
                        j.data.E.callBack(c(this).attr("value"))
                    })
                } else {
                    g = c('<span class="fl">\u7b2c</span><div id="chatpage"><input id="quickPager" class="pagenum fl" value="' + h.pageNumber + '" style="width:' + (h.pageNumber.toString().length + 1) * 10 + 'px;"><a id="enter" class="enter fl" href="javascript:void(0)"></a></div><span class="fl">&nbsp;/' + h.pageCount + "&nbsp;\u9875</span>");
                    g.find("#quickPager").bind("keypress", {E: this}, function (k) {
                        var j = k.data.E;
                        if (k.keyCode == 13) {
                            var l = c(this).attr("value");
                            if (!d(l)) {
                                alert("\u8bf7\u8f93\u5165\u6570\u5b57\uff01");
                                return false
                            }
                            if (parseInt(l) > h.pageCount) {
                                alert("\u6700\u5927\u9875\u6570\u4e3a" + h.pageCount + "\uff01");
                                return false
                            }
                            j.callBack(l);
                            return false
                        }
                    });
                    g.find("a#enter").bind("click", {E: this}, function (k) {
                        var j = k.data.E;
                        var l = g.find("#quickPager").attr("value");
                        if (!d(l)) {
                            alert("\u8bf7\u8f93\u5165\u6570\u5b57\uff01");
                            return false
                        }
                        if (parseInt(l) > h.pageCount) {
                            alert("\u6700\u5927\u9875\u6570\u4e3a" + h.pageCount + "\uff01");
                            return false
                        }
                        j.callBack(l);
                        return false
                    })
                }
                i.append(g);
                return i
            };
            this.renderPageSizer = function () {
                var g;
                if (h.rowList) {
                    var o = h.text.pageSizer;
                    o = o.replace(/{#pageSizer}/g, '</span><div id="select" class="fl"></div><span class="fl">');
                    g = c('<li class="text pageSizer"><span class="fl">' + o + "</span></li>");
                    var p = '<select name="pageSize">';
                    for (var i = 0; i < h.rowList.length; i++) {
                        p += '<option value="' + h.rowList[i] + '"';
                        if (h.rowList[i] == h.pageSize) {
                            p += " selected"
                        }
                        p += ">" + h.rowList[i] + "</option>"
                    }
                    p += "</select>";
                    var n = c(p);
                    n.bind("change", {E: this}, function (j) {
                        if (h.pageSize == this.value) {
                            return
                        }
                        h.pageSize = this.value;
                        j.data.E.callBack(h.pageNumber)
                    });
                    c("#select", g).append(n)
                }
                return g
            };
            this.callBack = function (g) {
                if (typeof(g) != "number") {
                    g = parseInt(g)
                }
                if (g) {
                    h.pageNumber = g
                }
                if (typeof(h.callBack) == "function") {
                    h.callBack(h)
                }
            };
            e.empty().append(this.render())
        }

        var a = {
            pageNumber: 1,
            pageCount: 1,
            pageSize: null,
            recordCount: 0,
            qpageSize: 9,
            rowList: null,
            text: {
                recordCount: "\u603b\u6570\u76ee:{#recordCount}",
                first: "\u9996\u9875",
                pre: "\u4e0a\u4e00\u9875",
                qpage: "{#qpage}",
                pageCount: "{#pageCount}",
                next: "\u4e0b\u4e00\u9875",
                last: "\u672b\u9875",
                pageSizer: "\u6bcf\u9875{#pageSizer}/\u884c"
            },
            item: ["recordCount", "first", "pre", "qpage", "next", "quickPager"]
        };
        b.text = c.extend({}, a.text, b.text);
        b = c.extend({}, a, b);
        return this.each(function () {
            new f(b, c(this))
        })
    }
})(jQuery);
