$(function(){
    $(".find_pwd_tit .left").on("click",function(){
        var index=$(this).index();
        $(".find_pwd_tit .left").removeClass("find_way");
        $(this).addClass("find_way");
        $(".find_pwd").addClass("hide");
       $($(".find_pwd")[index]).removeClass("hide")
    });

});