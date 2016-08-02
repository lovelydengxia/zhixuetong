$(document).ready(function() {
    var ck_limit = $("#ck_limit");
    ck_limit.click(function() {
        var expenditure = $("#expenditure").val();
        var ps= $("#ps").val();
        var reg=/^[-+]?\d{0,120}$/;
        if(expenditure==""){
            alert("请输入消费额度")
        }else if(!reg.test(expenditure)){
            alert("请输入数字金额");
        }else if(expenditure<=0){
            alert("输入金额不能小于0");
        }else if(ps==""){
            $('#ps').show();
            alert("请输入密码");
        }else{
            $.post("setsafe_setlimit", {
                "expenditure" : expenditure,
                "ps" :ps
            }, function(data){
                if(data=="修改成功"){
                    $('#ps').hide();
                    alert(data);
                }else if(data!="修改成功" && data!="原密码错误"){
                    laction.href="<%=basePath%>/school/login";
                }else{
                    alert(data);
                }
            },"text");
        }

    });

    var ck_setPassward = $("#ck_setPassward");
    ck_setPassward.click(function() {
        var mypass = $("#mypass").val();
        var newpass = $("#newpass").val();
        var pass = $("#confirmpass").val();
        if(mypass==""){
            alert("请输入初始密码");
        }else{
            if (newpass == pass) {
                $.post("setsafe_setpass", {
                    "passward" : mypass,
                    "newpass" : newpass
                }, function(data){
                    if(data!="当前密码相同"&& data!="修改成功" && data!="原密码错误"){
                        laction.href="<%=basePath%>/school/login";
                    }else{
                        alert(data);}
                },"text");
            } else {
                alert("输入密码不一致");
            }
        }
    });
    //重设支付密码
    var ck_setPassward = $("#resetzfPassward");
    ck_setPassward.click(function() {
        var mypass = $("#myzfpass").val();
        var newpass = $("#newzfpass").val();
        var pass = $("#confirmzfpass").val();
        if(mypass==""){
            alert("请输入初始密码");
            return false;
        }
        if(newpass != pass){
            alert("输入密码不一致");
            return false;
        }
        if (test(newpass)==true) {
            $.post("setsafe_setzfpass", {
                "passward" : mypass,
                "newpass" : newpass
            }, function(data){
                if(data!="当前密码相同"&& data!="修改成功" && data!="原密码错误"){
                    laction.href="<%=basePath%>/school/login";
                }else{
                    alert(data);}
            },"text");
        };

    });
    function test(s) {
        if (!/^\d{6}$/.test(s)){alert("不是6位数字"); return false;} // 不是6位数字
        if (/^(\d)\1+$/.test(s)){ alert("不能全一样"); return false;}  // 全一样

        var str = s.replace(/\d/g, function($0, pos) {
            return parseInt($0)-pos;
        });
        if (/^(\d)\1+$/.test(str)){ alert("密码太简单"); return false;}  // 顺增

        str = s.replace(/\d/g, function($0, pos) {
            return parseInt($0)+pos;
        });
        if (/^(\d)\1+$/.test(str)) {alert("密码太简单"); return false;} // 顺减
        return true;
    }
});


