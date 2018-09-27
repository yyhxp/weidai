$(document).ready(function() {
    suspend();
    suspend1();
    suspend2();
});

function suspend() {
    $('.actived-a1:eq(1)').mouseover(function() {
        $('.wdpc-header-01:eq(0)').slideDown(400);
        $('.wdpc-header-01:eq(0)').css('border-top', '1px solid rgba(1,1,1,0.1)');
        $('.touming').css('display', 'block');
    }).mouseout(function() {
        $('.wdpc-header-01').hide();
        $('.touming').css('display', 'none');
    });
    $('.wdpc-header-01').mouseover(function() {
        $(this).show();
        $('.wdpc-header').css('background-color', '#fff');
        $('.actived-a1').css('color', '#171717');
        $('.actived-x').css('border-bottom', '3px solid #171717');
        $('.weidaiwang').css('color', '#22A7FF');
        $('.header-ax').css('color', '#8a8a8a');
        $('.a-a').css('color', '#8a8a8a');
        $('.span-x').css('color', '#8a8a8a');
        $('.kf-font').css('color', '#8a8a8a');
        $('.kf-font1').css('color', '#8a8a8a');
        $('.zhanghu').css('color', '#3c3c3c');
        $('.gricon').css('background-color', 'red');
        $('.gricon').css('background', 'url(images/gr1.png)');
        $('.kficon').css('background', 'url(images/kf1.png)');
        $('.wxicon').css('background', 'url(images/wx1.png)');
        $('.touming').css('display', 'block');
    }).mouseout(function() {
        $(this).hide();
        $('.wdpc-header').css('background-color', '');
        $('.actived-a1').css({ 'color': '', 'font-weight': '' });
        $('.actived-x').css('border-bottom', '');
        $('.weidaiwang').css('color', '');
        $('.header-ax').css('color', '');
        $('.a-a').css('color', '');
        $('.span-x').css('color', '');
        $('.kf-font').css('color', '');
        $('.kf-font1').css('color', '');
        $('.zhanghu').css('color', '');
        $('.gricon').css('background', '');
        $('.kficon').css('background', '');
        $('.wxicon').css('background', '');
        $('.touming').css('display', '');
    });
}

function suspend1() {
    $('.actived-a1:eq(3)').mouseover(function() {
        $('.wdpc-header-01:eq(1)').slideDown(400);
        $('.touming').css('display', 'block');
        $('.wdpc-header-01').css('border-top', '1px solid rgba(1,1,1,0.1)');
    }).mouseout(function() {
        $('.wdpc-header-01').hide();
        $('.touming').css('display', 'none');
    });
    $('.wdpc-header-01:eq(1)').mouseover(function() {
        $(this).show();
    }).mouseout(function() {
        $(this).hide();
    });
    $('.actived-a1:eq(4)').mouseover(function() {
        $('.wdpc-header-01:eq(2)').slideDown(400);
        $('.touming').css('display', 'block');
        $('.wdpc-header-01').css('border-top', '1px solid rgba(1,1,1,0.1)');
    }).mouseout(function() {
        $('.wdpc-header-01').hide();
        $('.touming').css('display', 'none');
    });
    $('.wdpc-header-01:eq(2)').mouseover(function() {
        $(this).show();
    }).mouseout(function() {
        $(this).hide();
    });
}

function suspend2() {
    $('.style-icon-01:eq(0)').mouseover(function() {
        $('.style-xxx-02:eq(0)').css('color', '#22A7FF');
        $('.style-xxx-03:eq(0)').css('color', '#22A7FF');
    }).mouseout(function() {
        $('.style-xxx-02').css('color', '');
        $('.style-xxx-03').css('color', '');
    });
    $('.style-icon-01:eq(1)').mouseover(function() {
        $('.style-xxx-02:eq(1)').css('color', '#22A7FF');
        $('.style-xxx-03:eq(1)').css('color', '#22A7FF');
    }).mouseout(function() {
        $('.style-xxx-02').css('color', '');
        $('.style-xxx-03').css('color', '');
    });
    $('.style-icon-01:eq(2)').mouseover(function() {
        $('.style-xxx-02:eq(2)').css('color', '#22A7FF');
        $('.style-xxx-03:eq(2)').css('color', '#22A7FF');
    }).mouseout(function() {
        $('.style-xxx-02').css('color', '');
        $('.style-xxx-03').css('color', '');
    });
    $('.style-icon-01:eq(3)').mouseover(function() {
        $('.style-xxx-02:eq(3)').css('color', '#22A7FF');
        $('.style-xxx-03:eq(3)').css('color', '#22A7FF');
    }).mouseout(function() {
        $('.style-xxx-02').css('color', '');
        $('.style-xxx-03').css('color', '');
    });
    $('.style-icon-01:eq(4)').mouseover(function() {
        $('.style-xxx-02:eq(4)').css('color', '#22A7FF');
        $('.style-xxx-03:eq(4)').css('color', '#22A7FF');
    }).mouseout(function() {
        $('.style-xxx-02').css('color', '');
        $('.style-xxx-03').css('color', '');
    });
    $('.clear-fix-01').mouseover(function() {
        $(this).css('color', '#22A7FF');
    }).mouseout(function() {
        $(this).css('color', '');
    })
}