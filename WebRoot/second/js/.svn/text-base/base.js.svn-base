//导航
$(function(){
    $(".nav .left").click(function(){
        $(".nav .left").removeClass("nav_act");
        $(this).addClass("nav_act");
    })
});

//选择支付方式
$(function(){
    $(".pay_w .pay-ab").click(function(){
        $(".pay_w .pay-ab").removeClass("pay_act");
        $(this).addClass("pay_act");
        var ss = $(this).attr("id");
        if(ss=='zhifubao'){
        	$('#pay_next').attr('onclick','alipay()');
        }
        if(ss=='yinglian'){
       	 	$('#pay_next').attr('onclick','wop()');
        }
        
    })
});
//充值页面和设置页面切换
$(function(){
    $(".content_child_left li").click(function(){
        var index=$(this).index();
        $(".content_child_left li").removeClass("con_list_act");
        $(this).addClass("con_list_act");
        $(".content_child_right>div").addClass("hide");
        $($(".content_child_right>div")[index]).removeClass("hide");
    });

});
//缴费项目切换
$(function(){
    $(".pay_pro_tbl td").on("click",function(){
        var index=$(this).index();
        $(".pay_pro_tbl td").removeClass("pay_pro_act");
        $(this).addClass("pay_pro_act");
        $(".fee_info").addClass("hide");
        $($(".fee_info")[index]).removeClass("hide");
    });

});

//选择支付金额
$(function(){
    $(".card_re .border_k").click(function(){
        $(".card_re .border_k").removeClass("act_recharge");
        $(this).addClass("act_recharge");
        $('#consumePrice_chongzhi').val($(this).children().val());
    })
});
$(function(){
    $(".card_y_re .border_k").click(function(){
        $(".card_y_re .border_k").removeClass("act_recharge");
        $(this).addClass("act_recharge");
        $('#consumePrice_yu_e').val($(this).children().val());
    })
});

$(function(){
    $(".cond_time .cond").click(function(){
        $(".cond_time .cond").removeClass("cond_act");
        $(this).addClass("cond_act");
    })
});

$(function(){
    $(".cond_fl .cond").click(function(){
        $(".cond_fl .cond").removeClass("cond_act");
        $(this).addClass("cond_act");
    })
});

$(function(){
    $(".cond_zt .cond").click(function(){
        $(".cond_zt .cond").removeClass("cond_act");
        $(this).addClass("cond_act");
    })
});

$("input[type = password]").keypress(function(e){
	var keynum; 
if(window.event) // IE 
{ 
keynum = e.keyCode 
} 
else if(e.which) // Netscape/Firefox/Opera 
{ 
keynum = e.which 
} 
if(keynum == 32){ 
return false; 
} 
return true; 
});
//===================分页模块======================
(function($){
    var ms = {
        init:function(obj,args){
            return (function(){
                ms.fillHtml(obj,args);
                ms.bindEvent(obj,args);
            })();
        },

        fillHtml:function(obj,args){
            return (function(){
                obj.empty();
                //上一页
                if(args.current > 1){
                    obj.append('<a href="javascript:;" class="prevPage">上一页</a>');
                }else{
                    obj.remove('.prevPage');
                    obj.append('<span class="disabled">上一页</span>');
                }
                //
                if(args.current != 1 && args.current >= 4 && args.pageCount != 4){
                    obj.append('<a href="javascript:;" class="tcdNumber">'+1+'</a>');
                }
                if(args.current-2 > 2 && args.current <= args.pageCount && args.pageCount > 5){
                    obj.append('<span>...</span>');
                }
                var start = args.current -2,end = args.current+2;
                if((start > 1 && args.current < 4)||args.current == 1){
                    end++;
                }
                if(args.current > args.pageCount-4 && args.current >= args.pageCount){
                    start--;
                }
                for (;start <= end; start++) {
                    if(start <= args.pageCount && start >= 1){
                        if(start != args.current){
                            obj.append('<a href="javascript:;" class="tcdNumber">'+ start +'</a>');
                        }else{
                            obj.append('<span class="current">'+ start +'</span>');
                        }
                    }
                }
                if(args.current + 2 < args.pageCount - 1 && args.current >= 1 && args.pageCount > 5){
                    obj.append('<span>...</span>');
                }
                if(args.current != args.pageCount && args.current < args.pageCount -2  && args.pageCount != 4){
                    obj.append('<a href="javascript:;" class="tcdNumber">'+args.pageCount+'</a>');
                }
                //下一页
                if(args.current < args.pageCount){
                    obj.append('<a href="javascript:;" class="nextPage">下一页</a>');
//                    obj.append('<input type="text" class="to_page input_txt"/>')
//                    obj.append('<button class="to_page_btn">转到</button>');
                }else{
                    obj.remove('.nextPage');
                    obj.append('<span class="disabled">下一页</span>');
//                    obj.append('<input type="text" class="to_page input_txt"/>');
//                    obj.append('<button class="to_page_btn">转到</button>');
                }
            })();
        },
        //
        bindEvent:function(obj,args){
            return (function(){
                obj.on("click","a.tcdNumber",function(){
                    var current = parseInt($(this).text());

                    ms.fillHtml(obj,{"current":current,"pageCount":args.pageCount});
                    if(typeof(args.backFn)=="function"){
                        args.backFn(current);
                    }
                });
                //
                obj.on("click","a.prevPage",function(){
                    var current = parseInt(obj.children("span.current").text());
                    ms.fillHtml(obj,{"current":current-1,"pageCount":args.pageCount});
                    if(typeof(args.backFn)=="function"){
                        args.backFn(current-1);
                    }

                });
                //
                obj.on("click","a.nextPage",function(){
                    var current = parseInt(obj.children("span.current").text());
                    ms.fillHtml(obj,{"current":current+1,"pageCount":args.pageCount});
                    if(typeof(args.backFn)=="function"){
                        args.backFn(current+1);

                    }

                });
            })();
        }
    }
    $.fn.createPage = function(options){
        var args = $.extend({
            pageCount : 50,
            current : 1,
            backFn : function(){}
        },options);
        ms.init(this,args);
    }
})(jQuery);


//111

