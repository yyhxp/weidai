(function(woqu) {
    /*
     * 格式化秒数为时分秒
     * @ --> time {int} 单位秒
     * @returns json
     */
    woqu.secondToTime = function(time) {
        var h = parseInt(time / 3600);
        var m = parseInt(time % 3600 / 60);
        var s = parseInt(time % 3600 % 60);
        return h + '时' + m + '分' + s + '秒';
    }

    /********* URL *********/
    /*
     * 查询页面地址的参数值
     * @ --> str {string}
     * @returns {string}
     */
    woqu.getValFromUrl = function(str) {
        var reg = new RegExp("(^|&)" + str + "=([^&]*)(&|$)", "i");
        var r = window.location.search.substr(1).match(reg);
        if (r != null) return decodeURI(r[2]);
        return null;
    }

    /*
     * 转json为url参数
     * @ --> json {json}
     * @returns json
     */
    woqu.seNewtUrl = function(url, key, value) {
        var urlArr = url.split('?');
        var urlHead = urlArr[0];
        var obj = this.urlToJson(url);
        obj[key] = value;
        return urlHead + '?' + this.jsonToUrl(obj);
    }

    /*
     * 转json为url参数
     * @ --> json {json}
     * @returns json
     */
    woqu.setUrl = function(key, value) {
        var obj = this.urlToJson();
        obj[key] = value;
        return location.origin + location.pathname + '?' + this.jsonToUrl(obj);
    }

    /*
     * 转json为url参数
     * @ --> json {json}
     * @returns json
     */
    woqu.jsonToUrl = function(json) {
        var arr = [];
        for (var i in json) {
            arr.push(i + '=' + json[i]);
        }
        var str = arr.join('&');

        return str;
    }

    /*
     * 转url参数为json
     * @returns json
     */
    woqu.urlToJson = function(_url) {
        var url = _url || location.href;
        if (url.indexOf('?') == -1 || url.indexOf('&') == -1) {
            return {};
        } else {
            var urlArr = url.split('?');
            var str = urlArr[1];
            var strArr = str.split('&');
            var obj = {};
            for (var i in strArr) {
                var arr = strArr[i].split('=');
                obj[arr[0]] = arr[1];
            }
            return obj;
        }
    }

    /*
     * 判断是否为数字
     * @ --> number {number}
     * @returns boolean
     */
    woqu.isNumber = function(number) {
        return number === +number;
    }

    /*
     * 格式化数字为钱数,格式为 **,***,***.**
     * @ --> number {number}
     * @returns string
     */
    woqu.formatMoney = function(number) {
        var beforePoint = '',
            afterPoint = '',
            newArr = [],
            beforeNumber = '';

        var text = parseFloat(number);

        if(text<0){
          beforeNumber = '-';
          text = Math.abs(text);
        }

        text += '';

        if (text.indexOf('.') != -1) {
            text = parseFloat(text).toFixed(2) + '';
            text = text.substring(0,text.lastIndexOf('.')+3);
            var arr = text.split('.');
            beforePoint = arr[0];
            afterPoint = arr[1] == '00' ? '' : ('.' + arr[1]);
        } else {
            beforePoint = text;
        }

        var specialArr = beforePoint.split('');
        specialArr.reverse();
        var len = specialArr.length;

        for (var i = 1; i <= len; i++) {
            newArr.push(specialArr[i - 1]);
            if (i % 3 == 0 && i != 0 && i != len) {
                newArr.push(',');
            }
        }
        beforePoint = newArr.reverse();
        beforePoint = beforePoint.join('');
        return beforeNumber + beforePoint + afterPoint;
    }

    /*
     * 延迟执行函数，根据元素进入视窗的程度
     * @ --> object {object}
     * @ --> object.ele {selector}
     * @ --> object.space {int}
     * @ --> object.callBack {function}
     * @returns null
     */
    woqu.delay = function() {
        var len = arguments.length;
        var viewHeight = window.innerHeight;

        for (var i = 0; i < len; i++) {

            var EList = document.querySelectorAll(arguments[i].ele);
            var space = arguments[i].space;
            var callBack = arguments[i].callBack;

            Array.prototype.forEach.call(EList, function(el, i) {

                var scrollFun = function() {
                    var rect = el.getBoundingClientRect();
                    if (viewHeight - rect.top > space) {
                        callBack(i);
                        $(window).off('scroll', scrollFun);
                        return true;
                    }
                    return false;
                }

                if (!scrollFun()) {
                    $(window).on('scroll', scrollFun);
                }

            });
        }
    }

    /*
     * 调试信息
     * @ --> str {string} 文字
     */
    woqu.log = function(key, val) {
        console.info('---------------------------');
        console.info(key + ': ' + val);
        console.info('---------------------------');
    }

    /*
     * 抽奖，返回是否中奖
     * @ --> num {number} 中奖概率
     * @return {boolean}
     */
    woqu.lucky = function(num) {
        var n = 10;
        return Math.floor(Math.random() * n) / n < num;
    }

    /*
     * 指定范围随机数
     * @ --> min {int} 最小值
     * @ --> max {int} 最大值
     * @return {int}
     */
    woqu.randomFromRange = function(Min, Max) {
        var Range = Max - Min;
        var Rand = Math.random();
        var num = Min + Math.round(Rand * Range);
        return num;
    }

    /*
     * 从两个数组里随机抽取数据穿插合并为一个数组
     * @ --> array1 {array} 参与合并的第1个数组
     * @ --> array2 {array} 参与合并的第2个数组
     * @ --> getNum {number} 合并后数组的长度
     * @return {array}
     */
    woqu.randomMergeFrom = function(array1, array2, getNum) {
        var array = [];
        var arr1 = array1;
        var arr2 = array2;
        var startFromArray = woqu.lucky(0.5);
        for (var i = 0; i < getNum; i++) {
            if (startFromArray) {
                var randomNum = Math.floor(Math.random() * (arr1.length - 1));
                array.push(arr1[randomNum]);
                arr1.splice(randomNum, 1);
                startFromArray = false;
            } else {
                var randomNum = Math.floor(Math.random() * (arr2.length - 1));
                array.push(arr2[randomNum]);
                arr2.splice(randomNum, 1);
                startFromArray = true;
            }
        }
        return array;
    }

    /*
     * 验证手机号
     * @ --> str {string} 验证的内容
     * @return {boolean}
     */
    woqu.isMobilePhone = function(str) {
        var a = /^(13|15|18|14|17)[0-9]{9}$/;
        return a.test(str);
    }

    /*
     * 验证电话号码
     * @ --> str {string} 验证的内容
     * @return {boolean}
     */
    woqu.isPhone = function(str) {
        var a = /^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$/;
        return a.test(str);
    }

    /*
     * 验证邮箱
     * @ --> str {string} 验证的内容
     * @return {boolean}
     */
    woqu.isEmail = function(str) {
        var a = /(\S)+[@]{1}(\S)+[.]{1}(\w)+/;
        return a.test(str);
    }

    /*
     * 获取浏览器版本
     * @return {object}
     */
    //woqu.browser.versions.iPhone
    woqu.browser = {
        versions: function() {
            var u = navigator.userAgent,
                app = navigator.appVersion;
            return { //移动终端浏览器版本信息
                trident: u.indexOf('Trident') > -1, //IE内核
                presto: u.indexOf('Presto') > -1, //opera内核
                webKit: u.indexOf('AppleWebKit') > -1, //苹果、谷歌内核
                gecko: u.indexOf('Gecko') > -1 && u.indexOf('KHTML') == -1, //火狐内核
                mobile: !!u.match(/AppleWebKit.*Mobile.*/) || !!u.match(/AppleWebKit/), //是否为移动终端
                ios: !!u.match(/\(i[^;]+;( U;)? CPU.+Mac OS X/), //ios终端
                android: u.indexOf('Android') > -1 || u.indexOf('Linux') > -1, //android终端或者uc浏览器
                iPhone: u.indexOf('iPhone') > -1 || u.indexOf('Mac') > -1, //是否为iPhone或者QQHD浏览器
                iPad: u.indexOf('iPad') > -1, //是否iPad
                webApp: u.indexOf('Safari') == -1, //是否web应该程序，没有头部与底部
                weiXin: u.indexOf('MicroMessenger') > -1
            };
        }(),
        language: (navigator.browserLanguage || navigator.language).toLowerCase()
    }

    /*
     * 获取浏览器窗口大小
     * @return {object}
     */
    woqu.getWindowSize = function() {
        var e = window,
            a = 'inner';

        if (!('innerWidth' in window)) {
            a = 'client';
            e = document.documentElement || document.body;
        }

        return {
            w: e[a + 'Width'],
            h: e[a + 'Height']
        };
    }

    /*
     * 判断是否是微信浏览器
     * @return {boolean}
     */
    woqu.isWeiXin = function() {
        var self = this;
        var size = 300;
        var ua = window.navigator.userAgent.toLowerCase();
        return ua.match(/MicroMessenger/i) == 'micromessenger';
    }

    /*
     * 打字效果
     * @ --> element {DOM Element}
     * @ --> str {string} 要输入的文字，单位ms
     * @ --> time {number} 文字显示时间间隔，单位ms
     */
    woqu.writer = function(element, str, time) {
        var html = "",
            i = 0;
        (function __timeout() {
            if (i < str.length) {
                element.innerHTML = html += str[i++];
                setTimeout(__timeout, time);
            }
        })();
    };

    /**
     * 身份证信息校验
     */
    woqu.checkIdcard = function(idcard) {
        var area = {
            11: "北京",
            12: "天津",
            13: "河北",
            14: "山西",
            15: "内蒙古",
            21: "辽宁",
            22: "吉林",
            23: "黑龙江",
            31: "上海",
            32: "江苏",
            33: "浙江",
            34: "安徽",
            35: "福建",
            36: "江西",
            37: "山东",
            41: "河南",
            42: "湖北",
            43: "湖南",
            44: "广东",
            45: "广西",
            46: "海南",
            50: "重庆",
            51: "四川",
            52: "贵州",
            53: "云南",
            54: "西藏",
            61: "陕西",
            62: "甘肃",
            63: "青海",
            64: "宁夏",
            65: "新疆",
            71: "台湾",
            81: "香港",
            82: "澳门",
            91: "国外"
        }
        var idcard, Y, JYM;
        var S, M;
        var idcard_array = new Array();
        idcard_array = idcard.split("");
        //地区检验
        if (area[parseInt(idcard.substr(0, 2))] == null)
            return false;
        //身份号码位数及格式检验
        switch (idcard.length) {
            case 15:
                if ((parseInt(idcard.substr(6, 2)) + 1900) % 4 == 0 || ((parseInt(idcard.substr(6, 2)) + 1900) % 100 == 0 && (parseInt(idcard.substr(6, 2)) + 1900) % 4 == 0)) {
                    ereg = /^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}$/; //测试出生日期的合法性
                } else {
                    ereg = /^[1-9][0-9]{5}[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}$/; //测试出生日期的合法性
                }
                if (ereg.test(idcard))
                    return false;
                else
                    return false;
                break;
            case 18:
                //18位身份号码检测
                //出生日期的合法性检查
                //闰年月日:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))
                //平年月日:((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))
                if (parseInt(idcard.substr(6, 4)) % 4 == 0 || (parseInt(idcard.substr(6, 4)) % 100 == 0 && parseInt(idcard.substr(6, 4)) % 4 == 0)) {
                    ereg = /^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|[1-2][0-9]))[0-9]{3}[0-9Xx]$/; //闰年出生日期的合法性正则表达式
                } else {
                    ereg = /^[1-9][0-9]{5}19[0-9]{2}((01|03|05|07|08|10|12)(0[1-9]|[1-2][0-9]|3[0-1])|(04|06|09|11)(0[1-9]|[1-2][0-9]|30)|02(0[1-9]|1[0-9]|2[0-8]))[0-9]{3}[0-9Xx]$/; //平年出生日期的合法性正则表达式
                }
                if (ereg.test(idcard)) { //测试出生日期的合法性
                    //计算校验位
                    S = (parseInt(idcard_array[0]) + parseInt(idcard_array[10])) * 7 +
                        (parseInt(idcard_array[1]) + parseInt(idcard_array[11])) * 9 +
                        (parseInt(idcard_array[2]) + parseInt(idcard_array[12])) * 10 +
                        (parseInt(idcard_array[3]) + parseInt(idcard_array[13])) * 5 +
                        (parseInt(idcard_array[4]) + parseInt(idcard_array[14])) * 8 +
                        (parseInt(idcard_array[5]) + parseInt(idcard_array[15])) * 4 +
                        (parseInt(idcard_array[6]) + parseInt(idcard_array[16])) * 2 +
                        parseInt(idcard_array[7]) * 1 +
                        parseInt(idcard_array[8]) * 6 +
                        parseInt(idcard_array[9]) * 3;
                    Y = S % 11;
                    M = "F";
                    JYM = "10X98765432";
                    M = JYM.substr(Y, 1); //判断校验位
                    if (M == idcard_array[17])
                        return true; //检测ID的校验位
                    else
                        return false;
                } else
                    return false;
                break;
            default:
                return false;
                break;
        }
    }
    /**
 * 解析中国身份证号。
 * @param {String} str 要解析的身份证号。
 * @returns {Object} 返回一个 JSON，其格式为：
 * 
 *      {
 *           "valid": true,      // 表示身份证信息合法。
 *           "province": "北京", // 表示省份。
 *           "birthday": Date(), // 表示生日。
 *           "sex": "男"         // 表示性别。
 *      }
 * 
 * @example parseChineseId("152500198909267865")
 */
woqu.parseChineseId=function parseChineseId(str) {
    var provinces = parseChineseId._provinces || (parseChineseId._provinces = {
        '11': '北京',
        '12': '天津',
        '13': '河北',
        '14': '山西',
        '15': '内蒙古',
        '21': '辽宁',
        '22': '吉林',
        '23': '黑龙江',
        '31': '上海',
        '32': '江苏',
        '33': '浙江',
        '34': '安徽',
        '35': '福建',
        '36': '江西',
        '37': '山东',
        '41': '河南',
        '42': '湖北',
        '43': '湖南',
        '44': '广东',
        '45': '广西',
        '46': '海南',
        '50': '重庆',
        '51': '四川',
        '52': '贵州',
        '53': '云南',
        '54': '西藏',
        '61': '陕西',
        '62': '甘肃',
        '63': '青海',
        '64': '宁夏',
        '65': '新疆',
        '71': '台湾',
        '81': '香港',
        '82': '澳门',
        '91': '国外'
    }),
        province = provinces[str.substring(0, 2)],
        birthdayYear = +str.substr(6, 4),
        birthdayMonth = +str.substr(10, 2),
        birthdayDay = +str.substr(12, 2),
        date = new Date(birthdayYear, birthdayMonth - 1, birthdayDay),
        valid = province && date.getFullYear() == birthdayYear &&
        date.getMonth() + 1 == birthdayMonth &&
        date.getDate() == birthdayDay,
        i;

    // 检验身份证号。
    if (valid) {
        valid = 0;
        for (i = 0; i < 18; i++)
            valid += ((1 << i) % 11) * (/^x$/i.test(str.charAt(17 - i)) ? 10 : parseInt(str.charAt(17 - i), 11));
        valid = valid % 11 == 1;
    }

    return {
        valid: valid,
        province: province,
        birthday: date,
        sex: (+str.substr(16, 1) % 2) === 1 ? '男' : '女'
    };

};

}(window.woqu = window.woqu || {}))
