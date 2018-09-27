var originURL = window.location.origin;
var URLorigin = "https://www.wdai.com"; // 环境地址
headActiveIndex=headActiveIndex||8;
// var headActiveIndex=0;
if ((/weidai\.com\.cn$/).test(originURL)) {
    URLorigin = "https://www.weidai.com.cn";
} else {
    URLorigin = "https://www.wdai.com";
}
var navData = [{
        name: "首页",
        href: URLorigin+"/home/index/",
        subNav: []
    },
    {
        name: "我要出借",
        href: URLorigin+"/home/invest/xBid.html",
        subNav: [{
            name: "X智投",
            href: URLorigin+"/home/invest/xBid.html"
        },{
            name: "优选智投",
            href: URLorigin+"/list/showApList.html"
        },{
            name: "散标列表",
            href: URLorigin+"/list/showBidList.html"
        },{
            name: "转让专区",
            href: URLorigin+"/list/showTransferList.html"
        }]
    },
    {
        name: "我要借款",
        href: URLorigin+"/home/borrow/IndexBorrow.html",
        subNav: []
    },
    {
        name: "信息披露",
        href: URLorigin+"/home/infoPublish/",
        subNav: [{
            name: "银行资金存管",
            href: URLorigin+"/home/infoPublish/"
        },{
            name: "运营报告",
            href: URLorigin+"/home/infoPublish/operateReport.html"
        },{
            name: "备案信息",
            href: URLorigin+"/home/infoPublish/recordsInfo.html"
        },{
            name: "组织信息",
            href: URLorigin+"/home/infoPublish/orgInfo.html"
        },{
            name: "审核信息",
            href: URLorigin+"/home/infoPublish/checkedInfo.html"
        },{
            name: "经营信息",
            href: URLorigin+"/home/infoPublish/operateInfo.html"
        },{
            name: "监管法规",
            href: URLorigin+"/home/infoPublish/regulationLaw.html"
        },{
            name: "联系我们",
            href: URLorigin+"/home/infoPublish/concatUs.html"
        },{
            name: "法人签章",
            href:"https://oss.weidai.com.cn/2018hg/%E4%BF%A1%E6%81%AF%E6%8A%AB%E9%9C%B2%E6%B3%95%E4%BA%BA%E7%94%B5%E5%AD%90%E7%AD%BE%E7%AB%A0.pdf"
        }]
    },
    {
        name: "关于微贷",
        href: URLorigin+"/home/about/intro.html",
        subNav: [
            {
                name: "微贷简介",
                href: URLorigin+"/home/about/intro.html"
            },{
                name: "微贷风采",
                href: URLorigin+"/home/about/mien.html"
            },{
                name: "企业内刊",
                href: URLorigin+"/home/about/magazine.html"
            },{
                name: "新闻公告",
                href: URLorigin+"/home/about/news.html"
            },{
                name: "联系我们",
                href: URLorigin+"/home/about/contactUs.html"
            },{
                name: "人才招聘",
                href: "http://job.weidai.com.cn/"
            }]
    },
    {
        name: "我的账户",
        href: URLorigin+"/account/accountInfo.html",
        subNav: []
    }
]

var state = {
    subNavData: [],
    navActivedIndex: 0, // 当前导航索引
}


var classnames = function () {

    var classString = "";

    var args = arguments;

    args.forEach(function(arg, index){

        // 如果是字符串就直接加入classString
        if (typeof arg === "string") {
            classString += (index == 0 ? arg : " " + arg);
        }

        // 如果是对象
        if (typeof arg === "object") {
            for (var item in arg) {
                if (arg[item]) {
                    classString += (index == 0 ? item : " " + item);
                }
            }
        }
    });

    return classString;
};

var setState = function (obj) {
    for (var key in obj) {
        state[key] = obj[key]
    }
}

var showSubNav = function (index) {
    var data = navData[index].subNav;
    if (!data || data.length < 1) {
        return;
    }
    $(".mask").show();
    // console.log($(".navmenu>ul>li").eq(index));
    $(".navmenu ul>li").eq(index).find(".navShow").show();
    $(".tophead").addClass("alwaysHover");
}

var hideSubNav = function () {
    if (window.scrollY == 0) {
        $(".tophead").removeClass("alwaysHover");
    }
    $(".navShow").hide();
    $(".tophead").removeClass("alwaysHover");
    $(".mask").hide();
}


// 生成导航
var creatNav = function () {
    var count = navData.length;
    var liArray = [];
    var navmenuContainer = $(".navmenu ul");
    var data ;
    for (var i = 0; i < count; i++) {
        if(i==count-1){
            navmenuContainer.find("script").before($('<li id="myCount"'+'> <a href="' + navData[i].href + '"><i class="iconfont icon-yonghuming userIcon">&#xe671;</i>' + navData[i].name + '</a></li>')) 
        }else{
             data = navData[i].subNav;
             var showLength = data.length;
             var subNavContainer='';
            var className = headActiveIndex == i?"actived":"";
            if(showLength>1||!data){
            for(var j = 0;j<showLength;j++){
                subNavContainer += '<li><a href="'+data[j].href+'">'+data[j].name+'</a></li>'
            }
                var contLi = '<li><a class="'+className+'" href="' + navData[i].href + '">' + navData[i].name + '</a><div class="navShow"><div class="layout"><div class="showBox"><ol>'+subNavContainer
                +'</ol></div></div></div></li>';
                navmenuContainer.find("script").before( contLi
                )
            }else{
                navmenuContainer.find("script").before(
                    $('<li><a class="'+className+'" href="' + navData[i].href + '">' + navData[i].name + '</a></li>')
                )
            }
        }
      
    }

}


// 滚动监听
function onScroll() {
    if (window.scrollY > 300) {
        $(".tophead").addClass("stayHover");
        $(".tophead").addClass("scrollHover");
    } else {
        $(".mask").hide();
        // if ($(".tophead").hasClass("stayHover")) {
        //     $(".tophead").removeClass("stayHover");
        //
        // }
        $(".tophead").removeClass("scrollHover");
    }
}
document.addEventListener('scroll', onScroll); //添加监听滚动


//hover显示子菜单
$(document).ready(function () {
    creatNav()
    $(".navmenu ul>li").hover(function () {
        state.navActivedIndex = $(this).index();
        showSubNav(state.navActivedIndex);
    },function(){
        hideSubNav()
    })

    $(".navShow").hover(function () {
        showSubNav(state.navActivedIndex);
    })
    $(".erweima").hover(function(){
        $(".erweimaBox").show();
    },function(){
        $(".erweimaBox").hide();
    })
})

// 滚动监听
function onScrollTop() {
    if (window.scrollY > 400) {
        $(".backTop").show();
    } else {
        $(".backTop").hide();
    }
}
document.addEventListener('scroll', onScrollTop); //添加监听滚动