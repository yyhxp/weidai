!function (a) {
    var b = "undefined" != typeof window ? window : "undefined" != typeof global ? global : "undefined" != typeof self ? self : this;
    b.Raven = a();
 }(function () { return function a(b, c, d) { function e(g, h) { if (!c[g]) {
    if (!b[g]) {
        var i = "function" == typeof require && require;
        if (!h && i)
            return i(g, !0);
        if (f)
            return f(g, !0);
        var j = new Error("Cannot find module '" + g + "'");
        throw j.code = "MODULE_NOT_FOUND", j;
    }
    var k = c[g] = { exports: {} };
    b[g][0].call(k.exports, function (a) { var c = b[g][1][a]; return e(c ? c : a); }, k, k.exports, a, b, c, d);
} return c[g].exports; } for (var f = "function" == typeof require && require, g = 0; g < d.length; g++)
    e(d[g]); return e; }({ 1: [function (a, b, c) {
            "use strict";
            function d(a) { this.name = "RavenConfigError", this.message = a; }
            d.prototype = new Error, d.prototype.constructor = d, b.exports = d;
        }, {}], 2: [function (a, b, c) {
            "use strict";
            var d = function (a, b, c) { var d = a[b], e = a; if (b in a) {
                var f = "warn" === b ? "warning" : b;
                a[b] = function () { var a = [].slice.call(arguments), b = "" + a.join(" "), g = { level: f, logger: "console", extra: { arguments: a } }; c && c(b, g), d && Function.prototype.apply.call(d, e, a); };
            } };
            b.exports = { wrapMethod: d };
        }, {}], 3: [function (a, b, c) { (function (c) {
            "use strict";
            function d() { return +new Date; }
            function e(a, b) { return h(b) ? function (c) { return b(c, a); } : b; }
            function f() { this.a = !("object" != typeof JSON || !JSON.stringify), this.b = !g(J), this.c = !g(K), this.d = null, this.e = null, this.f = null, this.g = null, this.h = null, this.i = null, this.j = {}, this.k = { logger: "javascript", ignoreErrors: [], ignoreUrls: [], whitelistUrls: [], includePaths: [], crossOrigin: "anonymous", collectWindowErrors: !0, maxMessageLength: 0, maxUrlLength: 250, stackTraceLimit: 50, autoBreadcrumbs: !0, instrument: !0, sampleRate: 1 }, this.l = 0, this.m = !1, this.n = Error.stackTraceLimit, this.o = I.console || {}, this.p = {}, this.q = [], this.r = d(), this.s = [], this.t = [], this.u = null, this.v = I.location, this.w = this.v && this.v.href, this.x(); for (var a in this.o)
                this.p[a] = this.o[a]; }
            function g(a) { return void 0 === a; }
            function h(a) { return "function" == typeof a; }
            function i(a) { return "[object String]" === L.toString.call(a); }
            function j(a) { for (var b in a)
                return !1; return !0; }
            function k(a, b) { var c, d; if (g(a.length))
                for (c in a)
                    o(a, c) && b.call(null, c, a[c]);
            else if (d = a.length)
                for (c = 0; c < d; c++)
                    b.call(null, c, a[c]); }
            function l(a, b) { return b ? (k(b, function (b, c) { a[b] = c; }), a) : a; }
            function m(a) { return !!Object.isFrozen && Object.isFrozen(a); }
            function n(a, b) { return !b || a.length <= b ? a : a.substr(0, b) + "鈥�; }
            function o(a, b) { return L.hasOwnProperty.call(a, b); }
            function p(a) { for (var b, c = [], d = 0, e = a.length; d < e; d++)
                b = a[d], i(b) ? c.push(b.replace(/([.*+?^=!:${}()|\[\]\/\\])/g, "\\$1")) : b && b.source && c.push(b.source); return new RegExp(c.join("|"), "i"); }
            function q(a) { var b = []; return k(a, function (a, c) { b.push(encodeURIComponent(a) + "=" + encodeURIComponent(c)); }), b.join("&"); }
            function r(a) { var b = a.match(/^(([^:\/?#]+):)?(\/\/([^\/?#]*))?([^?#]*)(\?([^#]*))?(#(.*))?$/); if (!b)
                return {}; var c = b[6] || "", d = b[8] || ""; return { protocol: b[2], host: b[4], path: b[5], relative: b[5] + c + d }; }
            function s() { var a = I.crypto || I.msCrypto; if (!g(a) && a.getRandomValues) {
                var b = new Uint16Array(8);
                a.getRandomValues(b), b[3] = 4095 & b[3] | 16384, b[4] = 16383 & b[4] | 32768;
                var c = function (a) { for (var b = a.toString(16); b.length < 4;)
                    b = "0" + b; return b; };
                return c(b[0]) + c(b[1]) + c(b[2]) + c(b[3]) + c(b[4]) + c(b[5]) + c(b[6]) + c(b[7]);
            } return "xxxxxxxxxxxx4xxxyxxxxxxxxxxxxxxx".replace(/[xy]/g, function (a) { var b = 16 * Math.random() | 0, c = "x" === a ? b : 3 & b | 8; return c.toString(16); }); }
            function t(a) { for (var b, c = 5, d = 80, e = [], f = 0, g = 0, h = " > ", i = h.length; a && f++ < c && (b = u(a), !("html" === b || f > 1 && g + e.length * i + b.length >= d));)
                e.push(b), g += b.length, a = a.parentNode; return e.reverse().join(h); }
            function u(a) { var b, c, d, e, f, g = []; if (!a || !a.tagName)
                return ""; if (g.push(a.tagName.toLowerCase()), a.id && g.push("#" + a.id), b = a.className, b && i(b))
                for (c = b.split(/\s+/), f = 0; f < c.length; f++)
                    g.push("." + c[f]); var h = ["type", "name", "title", "alt"]; for (f = 0; f < h.length; f++)
                d = h[f], e = a.getAttribute(d), e && g.push("[" + d + '="' + e + '"]'); return g.join(""); }
            function v(a, b) { return !!(!!a ^ !!b); }
            function w(a, b) { return !v(a, b) && (a = a.values[0], b = b.values[0], a.type === b.type && a.value === b.value && x(a.stacktrace, b.stacktrace)); }
            function x(a, b) { if (v(a, b))
                return !1; var c = a.frames, d = b.frames; if (c.length !== d.length)
                return !1; for (var e, f, g = 0; g < c.length; g++)
                if (e = c[g], f = d[g], e.filename !== f.filename || e.lineno !== f.lineno || e.colno !== f.colno || e["function"] !== f["function"])
                    return !1; return !0; }
            function y(a, b, c, d) { var e = a[b]; a[b] = c(e), d && d.push([a, b, e]); }
            var z = a(6), A = a(7), B = a(1), C = a(5), D = C.isError, E = C.isObject, F = a(2).wrapMethod, G = "source protocol user pass host port path".split(" "), H = /^(?:(\w+):)?\/\/(?:(\w+)(:\w+)?@)?([\w\.-]+)(?::(\d+))?(\/.*)/, I = "undefined" != typeof window ? window : "undefined" != typeof c ? c : "undefined" != typeof self ? self : {}, J = I.document, K = I.navigator;
            f.prototype = { VERSION: "3.17.0", debug: !1, TraceKit: z, config: function (a, b) { var c = this; if (c.g)
                    return this.y("error", "Error: Raven has already been configured"), c; if (!a)
                    return c; var d = c.k; b && k(b, function (a, b) { "tags" === a || "extra" === a || "user" === a ? c.j[a] = b : d[a] = b; }), c.setDSN(a), d.ignoreErrors.push(/^Script error\.?$/), d.ignoreErrors.push(/^Javascript error: Script error\.? on line 0$/), d.ignoreErrors = p(d.ignoreErrors), d.ignoreUrls = !!d.ignoreUrls.length && p(d.ignoreUrls), d.whitelistUrls = !!d.whitelistUrls.length && p(d.whitelistUrls), d.includePaths = p(d.includePaths), d.maxBreadcrumbs = Math.max(0, Math.min(d.maxBreadcrumbs || 100, 100)); var e = { xhr: !0, console: !0, dom: !0, location: !0 }, f = d.autoBreadcrumbs; "[object Object]" === {}.toString.call(f) ? f = l(e, f) : f !== !1 && (f = e), d.autoBreadcrumbs = f; var g = { tryCatch: !0 }, h = d.instrument; return "[object Object]" === {}.toString.call(h) ? h = l(g, h) : h !== !1 && (h = g), d.instrument = h, z.collectWindowErrors = !!d.collectWindowErrors, c; }, install: function () { var a = this; return a.isSetup() && !a.m && (z.report.subscribe(function () { a.z.apply(a, arguments); }), a.k.instrument && a.k.instrument.tryCatch && a.A(), a.k.autoBreadcrumbs && a.B(), a.C(), a.m = !0), Error.stackTraceLimit = a.k.stackTraceLimit, this; }, setDSN: function (a) { var b = this, c = b.D(a), d = c.path.lastIndexOf("/"), e = c.path.substr(1, d); b.E = a, b.h = c.user, b.F = c.pass && c.pass.substr(1), b.i = c.path.substr(d + 1), b.g = b.G(c), b.H = b.g + "/" + e + "api/" + b.i + "/store/", this.x(); }, context: function (a, b, c) { return h(a) && (c = b || [], b = a, a = void 0), this.wrap(a, b).apply(this, c); }, wrap: function (a, b, c) { function d() { var d = [], f = arguments.length, g = !a || a && a.deep !== !1; for (c && h(c) && c.apply(this, arguments); f--;)
                    d[f] = g ? e.wrap(a, arguments[f]) : arguments[f]; try {
                    return b.apply(this, d);
                }
                catch (i) {
                    throw e.I(), e.captureException(i, a), i;
                } } var e = this; if (g(b) && !h(a))
                    return a; if (h(a) && (b = a, a = void 0), !h(b))
                    return b; try {
                    if (b.J)
                        return b;
                    if (b.K)
                        return b.K;
                }
                catch (f) {
                    return b;
                } for (var i in b)
                    o(b, i) && (d[i] = b[i]); return d.prototype = b.prototype, b.K = d, d.J = !0, d.L = b, d; }, uninstall: function () { return z.report.uninstall(), this.M(), Error.stackTraceLimit = this.n, this.m = !1, this; }, captureException: function (a, b) { if (!D(a))
                    return this.captureMessage(a, l({ trimHeadFrames: 1, stacktrace: !0 }, b)); this.d = a; try {
                    var c = z.computeStackTrace(a);
                    this.N(c, b);
                }
                catch (d) {
                    if (a !== d)
                        throw d;
                } return this; }, captureMessage: function (a, b) { if (!this.k.ignoreErrors.test || !this.k.ignoreErrors.test(a)) {
                    b = b || {};
                    var c = l({ message: a + "" }, b);
                    if (this.k.stacktrace || b && b.stacktrace) {
                        var d;
                        try {
                            throw new Error(a);
                        }
                        catch (e) {
                            d = e;
                        }
                        d.name = null, b = l({ fingerprint: a, trimHeadFrames: (b.trimHeadFrames || 0) + 1 }, b);
                        var f = z.computeStackTrace(d), g = this.O(f, b);
                        c.stacktrace = { frames: g.reverse() };
                    }
                    return this.P(c), this;
                } }, captureBreadcrumb: function (a) { var b = l({ timestamp: d() / 1e3 }, a); if (h(this.k.breadcrumbCallback)) {
                    var c = this.k.breadcrumbCallback(b);
                    if (E(c) && !j(c))
                        b = c;
                    else if (c === !1)
                        return this;
                } return this.t.push(b), this.t.length > this.k.maxBreadcrumbs && this.t.shift(), this; }, addPlugin: function (a) { var b = [].slice.call(arguments, 1); return this.q.push([a, b]), this.m && this.C(), this; }, setUserContext: function (a) { return this.j.user = a, this; }, setExtraContext: function (a) { return this.Q("extra", a), this; }, setTagsContext: function (a) { return this.Q("tags", a), this; }, clearContext: function () { return this.j = {}, this; }, getContext: function () { return JSON.parse(A(this.j)); }, setEnvironment: function (a) { return this.k.environment = a, this; }, setRelease: function (a) { return this.k.release = a, this; }, setDataCallback: function (a) { var b = this.k.dataCallback; return this.k.dataCallback = e(b, a), this; }, setBreadcrumbCallback: function (a) { var b = this.k.breadcrumbCallback; return this.k.breadcrumbCallback = e(b, a), this; }, setShouldSendCallback: function (a) { var b = this.k.shouldSendCallback; return this.k.shouldSendCallback = e(b, a), this; }, setTransport: function (a) { return this.k.transport = a, this; }, lastException: function () { return this.d; }, lastEventId: function () { return this.f; }, isSetup: function () { return !!this.a && (!!this.g || (this.ravenNotConfiguredError || (this.ravenNotConfiguredError = !0, this.y("error", "Error: Raven has not been configured.")), !1)); }, afterLoad: function () { var a = I.RavenConfig; a && this.config(a.dsn, a.config).install(); }, showReportDialog: function (a) { if (J) {
                    a = a || {};
                    var b = a.eventId || this.lastEventId();
                    if (!b)
                        throw new B("Missing eventId");
                    var c = a.dsn || this.E;
                    if (!c)
                        throw new B("Missing DSN");
                    var d = encodeURIComponent, e = "";
                    e += "?eventId=" + d(b), e += "&dsn=" + d(c);
                    var f = a.user || this.j.user;
                    f && (f.name && (e += "&name=" + d(f.name)), f.email && (e += "&email=" + d(f.email)));
                    var g = this.G(this.D(c)), h = J.createElement("script");
                    h.async = !0, h.src = g + "/api/embed/error-page/" + e, (J.head || J.body).appendChild(h);
                } }, I: function () { var a = this; this.l += 1, setTimeout(function () { a.l -= 1; }); }, R: function (a, b) { var c, d; if (this.b) {
                    b = b || {}, a = "raven" + a.substr(0, 1).toUpperCase() + a.substr(1), J.createEvent ? (c = J.createEvent("HTMLEvents"), c.initEvent(a, !0, !0)) : (c = J.createEventObject(), c.eventType = a);
                    for (d in b)
                        o(b, d) && (c[d] = b[d]);
                    if (J.createEvent)
                        J.dispatchEvent(c);
                    else
                        try {
                            J.fireEvent("on" + c.eventType.toLowerCase(), c);
                        }
                        catch (e) { }
                } }, S: function (a) { var b = this; return function (c) { if (b.T = null, b.u !== c) {
                    b.u = c;
                    var d;
                    try {
                        d = t(c.target);
                    }
                    catch (e) {
                        d = "<unknown>";
                    }
                    b.captureBreadcrumb({ category: "ui." + a, message: d });
                } }; }, U: function () { var a = this, b = 1e3; return function (c) { var d; try {
                    d = c.target;
                }
                catch (e) {
                    return;
                } var f = d && d.tagName; if (f && ("INPUT" === f || "TEXTAREA" === f || d.isContentEditable)) {
                    var g = a.T;
                    g || a.S("input")(c), clearTimeout(g), a.T = setTimeout(function () { a.T = null; }, b);
                } }; }, V: function (a, b) { var c = r(this.v.href), d = r(b), e = r(a); this.w = b, c.protocol === d.protocol && c.host === d.host && (b = d.relative), c.protocol === e.protocol && c.host === e.host && (a = e.relative), this.captureBreadcrumb({ category: "navigation", data: { to: b, from: a } }); }, A: function () { function a(a) { return function (b, d) { for (var e = new Array(arguments.length), f = 0; f < e.length; ++f)
                    e[f] = arguments[f]; var g = e[0]; return h(g) && (e[0] = c.wrap(g)), a.apply ? a.apply(this, e) : a(e[0], e[1]); }; } function b(a) { var b = I[a] && I[a].prototype; b && b.hasOwnProperty && b.hasOwnProperty("addEventListener") && (y(b, "addEventListener", function (b) { return function (d, f, g, h) { try {
                    f && f.handleEvent && (f.handleEvent = c.wrap(f.handleEvent));
                }
                catch (i) { } var j, k, l; return e && e.dom && ("EventTarget" === a || "Node" === a) && (k = c.S("click"), l = c.U(), j = function (a) { if (a) {
                    var b;
                    try {
                        b = a.type;
                    }
                    catch (c) {
                        return;
                    }
                    return "click" === b ? k(a) : "keypress" === b ? l(a) : void 0;
                } }), b.call(this, d, c.wrap(f, void 0, j), g, h); }; }, d), y(b, "removeEventListener", function (a) { return function (b, c, d, e) { try {
                    c = c && (c.K ? c.K : c);
                }
                catch (f) { } return a.call(this, b, c, d, e); }; }, d)); } var c = this, d = c.s, e = this.k.autoBreadcrumbs; y(I, "setTimeout", a, d), y(I, "setInterval", a, d), I.requestAnimationFrame && y(I, "requestAnimationFrame", function (a) { return function (b) { return a(c.wrap(b)); }; }, d); for (var f = ["EventTarget", "Window", "Node", "ApplicationCache", "AudioTrackList", "ChannelMergerNode", "CryptoOperation", "EventSource", "FileReader", "HTMLUnknownElement", "IDBDatabase", "IDBRequest", "IDBTransaction", "KeyOperation", "MediaController", "MessagePort", "ModalWindow", "Notification", "SVGElementInstance", "Screen", "TextTrack", "TextTrackCue", "TextTrackList", "WebSocket", "WebSocketWorker", "Worker", "XMLHttpRequest", "XMLHttpRequestEventTarget", "XMLHttpRequestUpload"], g = 0; g < f.length; g++)
                    b(f[g]); }, B: function () { function a(a, c) { a in c && h(c[a]) && y(c, a, function (a) { return b.wrap(a); }); } var b = this, c = this.k.autoBreadcrumbs, d = b.s; if (c.xhr && "XMLHttpRequest" in I) {
                    var e = XMLHttpRequest.prototype;
                    y(e, "open", function (a) { return function (c, d) { return i(d) && d.indexOf(b.h) === -1 && (this.W = { method: c, url: d, status_code: null }), a.apply(this, arguments); }; }, d), y(e, "send", function (c) { return function (d) { function e() { if (f.W && (1 === f.readyState || 4 === f.readyState)) {
                        try {
                            f.W.status_code = f.status;
                        }
                        catch (a) { }
                        b.captureBreadcrumb({ type: "http", category: "xhr", data: f.W });
                    } } for (var f = this, g = ["onload", "onerror", "onprogress"], i = 0; i < g.length; i++)
                        a(g[i], f); return "onreadystatechange" in f && h(f.onreadystatechange) ? y(f, "onreadystatechange", function (a) { return b.wrap(a, void 0, e); }) : f.onreadystatechange = e, c.apply(this, arguments); }; }, d);
                } c.xhr && "fetch" in I && y(I, "fetch", function (a) { return function (c, d) { for (var e = new Array(arguments.length), f = 0; f < e.length; ++f)
                    e[f] = arguments[f]; var g, h = e[0], i = "GET"; "string" == typeof h ? g = h : (g = h.url, h.method && (i = h.method)), e[1] && e[1].method && (i = e[1].method); var j = { method: i, url: g, status_code: null }; return b.captureBreadcrumb({ type: "http", category: "fetch", data: j }), a.apply(this, e).then(function (a) { return j.status_code = a.status, a; }); }; }, d), c.dom && this.b && (J.addEventListener ? (J.addEventListener("click", b.S("click"), !1), J.addEventListener("keypress", b.U(), !1)) : (J.attachEvent("onclick", b.S("click")), J.attachEvent("onkeypress", b.U()))); var f = I.chrome, g = f && f.app && f.app.runtime, j = !g && I.history && history.pushState; if (c.location && j) {
                    var l = I.onpopstate;
                    I.onpopstate = function () { var a = b.v.href; if (b.V(b.w, a), l)
                        return l.apply(this, arguments); }, y(history, "pushState", function (a) { return function () { var c = arguments.length > 2 ? arguments[2] : void 0; return c && b.V(b.w, c + ""), a.apply(this, arguments); }; }, d);
                } if (c.console && "console" in I && console.log) {
                    var m = function (a, c) { b.captureBreadcrumb({ message: a, level: c.level, category: "console" }); };
                    k(["debug", "info", "warn", "error", "log"], function (a, b) { F(console, b, m); });
                } }, M: function () { for (var a; this.s.length;) {
                    a = this.s.shift();
                    var b = a[0], c = a[1], d = a[2];
                    b[c] = d;
                } }, C: function () { var a = this; k(this.q, function (b, c) { var d = c[0], e = c[1]; d.apply(a, [a].concat(e)); }); }, D: function (a) { var b = H.exec(a), c = {}, d = 7; try {
                    for (; d--;)
                        c[G[d]] = b[d] || "";
                }
                catch (e) {
                    throw new B("Invalid DSN: " + a);
                } if (c.pass && !this.k.allowSecretKey)
                    throw new B("Do not specify your secret key in the DSN. See: http://bit.ly/raven-secret-key"); return c; }, G: function (a) { var b = "//" + a.host + (a.port ? ":" + a.port : ""); return a.protocol && (b = a.protocol + ":" + b), b; }, z: function () { this.l || this.N.apply(this, arguments); }, N: function (a, b) { var c = this.O(a, b); this.R("handle", { stackInfo: a, options: b }), this.X(a.name, a.message, a.url, a.lineno, c, b); }, O: function (a, b) { var c = this, d = []; if (a.stack && a.stack.length && (k(a.stack, function (a, b) { var e = c.Y(b); e && d.push(e); }), b && b.trimHeadFrames))
                    for (var e = 0; e < b.trimHeadFrames && e < d.length; e++)
                        d[e].in_app = !1; return d = d.slice(0, this.k.stackTraceLimit); }, Y: function (a) { if (a.url) {
                    var b = { filename: a.url, lineno: a.line, colno: a.column, "function": a.func || "?" };
                    return b.in_app = !(this.k.includePaths.test && !this.k.includePaths.test(b.filename) || /(Raven|TraceKit)\./.test(b["function"]) || /raven\.(min\.)?js$/.test(b.filename)), b;
                } }, X: function (a, b, c, d, e, f) { var g; if ((!this.k.ignoreErrors.test || !this.k.ignoreErrors.test(b)) && (b += "", e && e.length ? (c = e[0].filename || c, e.reverse(), g = { frames: e }) : c && (g = { frames: [{ filename: c, lineno: d, in_app: !0 }] }), (!this.k.ignoreUrls.test || !this.k.ignoreUrls.test(c)) && (!this.k.whitelistUrls.test || this.k.whitelistUrls.test(c)))) {
                    var h = l({ exception: { values: [{ type: a, value: b, stacktrace: g }] }, culprit: c }, f);
                    this.P(h);
                } }, Z: function (a) { var b = this.k.maxMessageLength; if (a.message && (a.message = n(a.message, b)), a.exception) {
                    var c = a.exception.values[0];
                    c.value = n(c.value, b);
                } var d = a.request; return d && (d.url && (d.url = n(d.url, this.k.maxUrlLength)), d.Referer && (d.Referer = n(d.Referer, this.k.maxUrlLength))), a.breadcrumbs && a.breadcrumbs.values && this.$(a.breadcrumbs), a; }, $: function (a) { for (var b, c, d, e = ["to", "from", "url"], f = 0; f < a.values.length; ++f)
                    if (c = a.values[f], c.hasOwnProperty("data") && E(c.data) && !m(c.data)) {
                        d = l({}, c.data);
                        for (var g = 0; g < e.length; ++g)
                            b = e[g], d.hasOwnProperty(b) && (d[b] = n(d[b], this.k.maxUrlLength));
                        a.values[f].data = d;
                    } }, _: function () { if (this.c || this.b) {
                    var a = {};
                    return this.c && K.userAgent && (a.headers = { "User-Agent": navigator.userAgent }), this.b && (J.location && J.location.href && (a.url = J.location.href), J.referrer && (a.headers || (a.headers = {}), a.headers.Referer = J.referrer)), a;
                } }, x: function () { this.aa = 0, this.ba = null; }, ca: function () { return this.aa && d() - this.ba < this.aa; }, da: function (a) { var b = this.e; return !(!b || a.message !== b.message || a.culprit !== b.culprit) && (a.stacktrace || b.stacktrace ? x(a.stacktrace, b.stacktrace) : !a.exception && !b.exception || w(a.exception, b.exception)); }, ea: function (a) { if (!this.ca()) {
                    var b = a.status;
                    if (400 === b || 401 === b || 429 === b) {
                        var c;
                        try {
                            c = a.getResponseHeader("Retry-After"), c = 1e3 * parseInt(c, 10);
                        }
                        catch (e) { }
                        this.aa = c ? c : 2 * this.aa || 1e3, this.ba = d();
                    }
                } }, P: function (a) { var b = this.k, c = { project: this.i, logger: b.logger, platform: "javascript" }, e = this._(); if (e && (c.request = e), a.trimHeadFrames && delete a.trimHeadFrames, a = l(c, a), a.tags = l(l({}, this.j.tags), a.tags), a.extra = l(l({}, this.j.extra), a.extra), a.extra["session:duration"] = d() - this.r, this.t && this.t.length > 0 && (a.breadcrumbs = { values: [].slice.call(this.t, 0) }), j(a.tags) && delete a.tags, this.j.user && (a.user = this.j.user), b.environment && (a.environment = b.environment), b.release && (a.release = b.release), b.serverName && (a.server_name = b.serverName), h(b.dataCallback) && (a = b.dataCallback(a) || a), a && !j(a) && (!h(b.shouldSendCallback) || b.shouldSendCallback(a)))
                    return this.ca() ? void this.y("warn", "Raven dropped error due to backoff: ", a) : void ("number" == typeof b.sampleRate ? Math.random() < b.sampleRate && this.fa(a) : this.fa(a)); }, ga: function () { return s(); }, fa: function (a, b) { var c = this, d = this.k; if (this.isSetup()) {
                    if (this.f = a.event_id || (a.event_id = this.ga()), a = this.Z(a), !this.k.allowDuplicates && this.da(a))
                        return void this.y("warn", "Raven dropped repeat event: ", a);
                    this.e = a, this.y("debug", "Raven about to send:", a);
                    var e = { sentry_version: "7", sentry_client: "raven-js/" + this.VERSION, sentry_key: this.h };
                    this.F && (e.sentry_secret = this.F);
                    var f = a.exception && a.exception.values[0];
                    this.captureBreadcrumb({ category: "sentry", message: f ? (f.type ? f.type + ": " : "") + f.value : a.message, event_id: a.event_id, level: a.level || "error" });
                    var g = this.H;
                    (d.transport || this.ha).call(this, { url: g, auth: e, data: a, options: d, onSuccess: function () { c.x(), c.R("success", { data: a, src: g }), b && b(); }, onError: function (d) { c.y("error", "Raven transport failed to send: ", d), d.request && c.ea(d.request), c.R("failure", { data: a, src: g }), d = d || new Error("Raven send failed (no additional details provided)"), b && b(d); } });
                } }, ha: function (a) { var b = new XMLHttpRequest, c = "withCredentials" in b || "undefined" != typeof XDomainRequest; if (c) {
                    var d = a.url;
                    "withCredentials" in b ? b.onreadystatechange = function () { if (4 === b.readyState)
                        if (200 === b.status)
                            a.onSuccess && a.onSuccess();
                        else if (a.onError) {
                            var c = new Error("Sentry error code: " + b.status);
                            c.request = b, a.onError(c);
                        } } : (b = new XDomainRequest, d = d.replace(/^https?:/, ""), a.onSuccess && (b.onload = a.onSuccess), a.onError && (b.onerror = function () { var c = new Error("Sentry error code: XDomainRequest"); c.request = b, a.onError(c); })), b.open("POST", d + "?" + q(a.auth)), b.send(A(a.data));
                } }, y: function (a) { this.p[a] && this.debug && Function.prototype.apply.call(this.p[a], this.o, [].slice.call(arguments, 1)); }, Q: function (a, b) { g(b) ? delete this.j[a] : this.j[a] = l(this.j[a] || {}, b); } };
            var L = Object.prototype;
            f.prototype.setUser = f.prototype.setUserContext, f.prototype.setReleaseContext = f.prototype.setRelease, b.exports = f;
        }).call(this, "undefined" != typeof global ? global : "undefined" != typeof self ? self : "undefined" != typeof window ? window : {}); }, { 1: 1, 2: 2, 5: 5, 6: 6, 7: 7 }], 4: [function (a, b, c) { (function (c) {
            "use strict";
            var d = a(3), e = "undefined" != typeof window ? window : "undefined" != typeof c ? c : "undefined" != typeof self ? self : {}, f = e.Raven, g = new d;
            g.noConflict = function () { return e.Raven = f, g; }, g.afterLoad(), b.exports = g;
        }).call(this, "undefined" != typeof global ? global : "undefined" != typeof self ? self : "undefined" != typeof window ? window : {}); }, { 3: 3 }], 5: [function (a, b, c) {
            "use strict";
            function d(a) { return "object" == typeof a && null !== a; }
            function e(a) { switch ({}.toString.call(a)) {
                case "[object Error]": return !0;
                case "[object Exception]": return !0;
                case "[object DOMException]": return !0;
                default: return a instanceof Error;
            } }
            function f(a) { function b(b, c) { var d = a(b) || b; return c ? c(d) || d : d; } return b; }
            b.exports = { isObject: d, isError: e, wrappedCallback: f };
        }, {}], 6: [function (a, b, c) { (function (c) {
            "use strict";
            function d() { return "undefined" == typeof document || "undefined" == typeof document.location ? "" : document.location.href; }
            var e = a(5), f = { collectWindowErrors: !0, debug: !1 }, g = "undefined" != typeof window ? window : "undefined" != typeof c ? c : "undefined" != typeof self ? self : {}, h = [].slice, i = "?", j = /^(?:[Uu]ncaught (?:exception: )?)?(?:((?:Eval|Internal|Range|Reference|Syntax|Type|URI|)Error): )?(.*)$/;
            f.report = function () { function a(a) { m(), s.push(a); } function b(a) { for (var b = s.length - 1; b >= 0; --b)
                s[b] === a && s.splice(b, 1); } function c() { n(), s = []; } function k(a, b) { var c = null; if (!b || f.collectWindowErrors) {
                for (var d in s)
                    if (s.hasOwnProperty(d))
                        try {
                            s[d].apply(null, [a].concat(h.call(arguments, 2)));
                        }
                        catch (e) {
                            c = e;
                        }
                if (c)
                    throw c;
            } } function l(a, b, c, g, h) { var l = null; if (v)
                f.computeStackTrace.augmentStackTraceWithInitialElement(v, b, c, a), o();
            else if (h && e.isError(h))
                l = f.computeStackTrace(h), k(l, !0);
            else {
                var m, n = { url: b, line: c, column: g }, p = void 0, r = a;
                if ("[object String]" === {}.toString.call(a)) {
                    var m = a.match(j);
                    m && (p = m[1], r = m[2]);
                }
                n.func = i, l = { name: p, message: r, url: d(), stack: [n] }, k(l, !0);
            } return !!q && q.apply(this, arguments); } function m() { r || (q = g.onerror, g.onerror = l, r = !0); } function n() { r && (g.onerror = q, r = !1, q = void 0); } function o() { var a = v, b = t; t = null, v = null, u = null, k.apply(null, [a, !1].concat(b)); } function p(a, b) { var c = h.call(arguments, 1); if (v) {
                if (u === a)
                    return;
                o();
            } var d = f.computeStackTrace(a); if (v = d, u = a, t = c, setTimeout(function () { u === a && o(); }, d.incomplete ? 2e3 : 0), b !== !1)
                throw a; } var q, r, s = [], t = null, u = null, v = null; return p.subscribe = a, p.unsubscribe = b, p.uninstall = c, p; }(), f.computeStackTrace = function () { function a(a) { if ("undefined" != typeof a.stack && a.stack) {
                for (var b, c, e, f = /^\s*at (.*?) ?\(((?:file|https?|blob|chrome-extension|native|eval|webpack|<anonymous>|\/).*?)(?::(\d+))?(?::(\d+))?\)?\s*$/i, g = /^\s*(.*?)(?:\((.*?)\))?(?:^|@)((?:file|https?|blob|chrome|webpack|resource|\[native).*?|[^@]*bundle)(?::(\d+))?(?::(\d+))?\s*$/i, h = /^\s*at (?:((?:\[object object\])?.+) )?\(?((?:file|ms-appx|https?|webpack|blob):.*?):(\d+)(?::(\d+))?\)?\s*$/i, j = /(\S+) line (\d+)(?: > eval line \d+)* > eval/i, k = /\((\S*)(?::(\d+))(?::(\d+))\)/, l = a.stack.split("\n"), m = [], n = (/^(.*) is undefined$/.exec(a.message), 0), o = l.length; n < o; ++n) {
                    if (c = f.exec(l[n])) {
                        var p = c[2] && 0 === c[2].indexOf("native"), q = c[2] && 0 === c[2].indexOf("eval");
                        q && (b = k.exec(c[2])) && (c[2] = b[1], c[3] = b[2], c[4] = b[3]), e = { url: p ? null : c[2], func: c[1] || i, args: p ? [c[2]] : [], line: c[3] ? +c[3] : null, column: c[4] ? +c[4] : null };
                    }
                    else if (c = h.exec(l[n]))
                        e = { url: c[2], func: c[1] || i, args: [], line: +c[3], column: c[4] ? +c[4] : null };
                    else {
                        if (!(c = g.exec(l[n])))
                            continue;
                        var q = c[3] && c[3].indexOf(" > eval") > -1;
                        q && (b = j.exec(c[3])) ? (c[3] = b[1], c[4] = b[2], c[5] = null) : 0 !== n || c[5] || "undefined" == typeof a.columnNumber || (m[0].column = a.columnNumber + 1), e = { url: c[3], func: c[1] || i, args: c[2] ? c[2].split(",") : [], line: c[4] ? +c[4] : null, column: c[5] ? +c[5] : null };
                    }
                    !e.func && e.line && (e.func = i), m.push(e);
                }
                return m.length ? { name: a.name, message: a.message, url: d(), stack: m } : null;
            } } function b(a, b, c, d) { var e = { url: b, line: c }; if (e.url && e.line) {
                if (a.incomplete = !1, e.func || (e.func = i), a.stack.length > 0 && a.stack[0].url === e.url) {
                    if (a.stack[0].line === e.line)
                        return !1;
                    if (!a.stack[0].line && a.stack[0].func === e.func)
                        return a.stack[0].line = e.line, !1;
                }
                return a.stack.unshift(e), a.partial = !0, !0;
            } return a.incomplete = !0, !1; } function c(a, g) { for (var h, j, k = /function\s+([_$a-zA-Z\xA0-\uFFFF][_$a-zA-Z0-9\xA0-\uFFFF]*)?\s*\(/i, l = [], m = {}, n = !1, o = c.caller; o && !n; o = o.caller)
                if (o !== e && o !== f.report) {
                    if (j = { url: null, func: i, line: null, column: null }, o.name ? j.func = o.name : (h = k.exec(o.toString())) && (j.func = h[1]), "undefined" == typeof j.func)
                        try {
                            j.func = h.input.substring(0, h.input.indexOf("{"));
                        }
                        catch (p) { }
                    m["" + o] ? n = !0 : m["" + o] = !0, l.push(j);
                } g && l.splice(0, g); var q = { name: a.name, message: a.message, url: d(), stack: l }; return b(q, a.sourceURL || a.fileName, a.line || a.lineNumber, a.message || a.description), q; } function e(b, e) { var g = null; e = null == e ? 0 : +e; try {
                if (g = a(b))
                    return g;
            }
            catch (h) {
                if (f.debug)
                    throw h;
            } try {
                if (g = c(b, e + 1))
                    return g;
            }
            catch (h) {
                if (f.debug)
                    throw h;
            } return { name: b.name, message: b.message, url: d() }; } return e.augmentStackTraceWithInitialElement = b, e.computeStackTraceFromStackProp = a, e; }(), b.exports = f;
        }).call(this, "undefined" != typeof global ? global : "undefined" != typeof self ? self : "undefined" != typeof window ? window : {}); }, { 5: 5 }], 7: [function (a, b, c) {
            "use strict";
            function d(a, b) { for (var c = 0; c < a.length; ++c)
                if (a[c] === b)
                    return c; return -1; }
            function e(a, b, c, d) { return JSON.stringify(a, f(b, d), c); }
            function f(a, b) { var c = [], e = []; return null == b && (b = function (a, b) { return c[0] === b ? "[Circular ~]" : "[Circular ~." + e.slice(0, d(c, b)).join(".") + "]"; }), function (f, g) { if (c.length > 0) {
                var h = d(c, this);
                ~h ? c.splice(h + 1) : c.push(this), ~h ? e.splice(h, 1 / 0, f) : e.push(f), ~d(c, g) && (g = b.call(this, f, g));
            }
            else
                c.push(g); return null == a ? g : a.call(this, f, g); }; }
            c = b.exports = e, c.getSerialize = f;
        }, {}] }, {}, [4])(4); });


var Stat=Stat||{};(function(b){function c(k,j){Raven.captureMessage(h(k),{tags:j,level:"info",logger:"stat.log"});console.log(k)}b.log=c;function a(k,j){Raven.captureMessage(h(k),{level:"info",tags:j,logger:"stat.info"});console.info(k)}b.info=a;function f(k,j){Raven.captureMessage(h(k),{level:"warning",tags:j,logger:"stat.warning"});console.warn(k)}b.warning=f;function e(k,j){if(k&&typeof k==="object"){Raven.captureException(k,{tags:j,logger:"stat.error"})}else{Raven.captureMessage(h(k),{level:"warning",tags:j,logger:"stat.error"})}console.error(k)}b.error=e;function h(j){if(typeof j!=="string"){try{j=JSON.stringify(j)}catch(k){}}return j}b.format=h;function g(j){Raven.setUserContext(j)}b.setUser=g;function d(){if(location.host.indexOf("wdai.com")>=0){return"uat"}if(location.host.indexOf("wdtest.cc")>=0||location.host.indexOf("192.")>=0){return"fat"}if(location.host.indexOf("localhost")>=0||location.host.indexOf("127.")>=0){return"dev"}return"prd"}b.getEnv=d;function i(){const l={prd:"//b559ce6e7d9c456c9379fb29ee217d1f@sentry.weidai.com.cn/4",uat:"//00c6865f63544c19a8b514d68090cd52@sentry.wdai.com/5",fat:"//d13a1628e9004fb7b94a878ec397bb1a@sentry.wdtest.cc/6",};const m=typeof STAT_SERVERS==="undefined"?{}:STAT_SERVERS;const k=d();if(k!=="dev"){const j=m[k]||m.fat||m.uat||m.prd||l[k];if(j!="null"){Raven.config(j).install()}}}b.init=i;i()})(Stat);