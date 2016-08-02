///*$(function(){
//    $('#pass').keyup(function () {
//        var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g");
//        var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g");
//        var enoughRegex = new RegExp("(?=.{6,}).*");
//
//        if (false == enoughRegex.test($(this).val())) {
////            $('#level').removeClass('pw-weak');
//            $('.pw_tip').removeClass('pw_tip2');
//            $('.pw_tip').removeClass('pw_tip3');
//            $('.pw_tip').addClass('pw_tip1');
//            $('.pw_txt').text("弱")
//            $('#to_sub').attr('disabled');
//            //密码小于六位的时候，密码强度图片都为灰色
//        }
//        else if (strongRegex.test($(this).val())) {
//            $('.pw_tip').removeClass('pw_tip2');
//            $('.pw_tip').removeClass('pw_tip1');
//            $('.pw_tip').addClass('pw_tip3');
//            $('.pw_txt').text("强")
//            $('#to_sub').removeAttr('disabled');
//            //密码为八位及以上并且字母数字特殊字符三项都包括,强度最强
//        }
//        else if (mediumRegex.test($(this).val())) {
//            $('.pw_tip').removeClass('pw_tip1');
//            $('.pw_tip').removeClass('pw_tip3');
//            $('.pw_tip').addClass('pw_tip2');
//            $('.pw_txt').text("中");
//            $('#to_sub').removeAttr('disabled');
//            //密码为七位及以上并且字母、数字、特殊字符三项中有两项，强度是中等
//        }
//        else {
//            $('.pw_tip').removeClass('pw_tip2');
//            $('.pw_tip').removeClass('pw_tip3');
//            $('.pw_tip').addClass('pw_tip1');
//            $('.pw_txt').text("弱")
//            $('#to_sub').attr('disabled');
//            //如果密码为6为及以下，就算字母、数字、特殊字符三项都包括，强度也是弱的
//        }
//        return true;
//    });
//});*/

$(function(){ 
	$('#pass').keyup(function () { 
		var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g"); 
		var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g"); 
		var enoughRegex = new RegExp("(?=.{6,}).*", "g");
	
		if (false == enoughRegex.test($(this).val())) { 
			$('#level').removeClass('pw-weak'); 
			$('#level').removeClass('pw-medium'); 
			$('#level').removeClass('pw-strong'); 
			$('#level').addClass(' pw-defule'); 
			$('#to_sub').attr("disabled");
			 //密码小于六位的时候，密码强度图片都为灰色 
		} 
		else if (strongRegex.test($(this).val())) { 
			$('#level').removeClass('pw-weak'); 
			$('#level').removeClass('pw-medium'); 
			$('#level').removeClass('pw-strong'); 
			$('#level').addClass(' pw-strong'); 
			$('#to_sub').removeAttr("disabled");
			 //密码为八位及以上并且字母数字特殊字符三项都包括,强度最强 
		} 
		else if (mediumRegex.test($(this).val())) { 
			$('#level').removeClass('pw-weak'); 
			$('#level').removeClass('pw-medium'); 
			$('#level').removeClass('pw-strong'); 
			$('#level').addClass(' pw-medium'); 
			$('#to_sub').removeAttr("disabled");
			 //密码为七位及以上并且字母、数字、特殊字符三项中有两项，强度是中等 
		} 
		else { 
			$('#level').removeClass('pw-weak'); 
			$('#level').removeClass('pw-medium'); 
			$('#level').removeClass('pw-strong'); 
			$('#level').addClass('pw-weak'); 
			$('#to_sub').attr("disabled");
			 //如果密码为6为及以下，就算字母、数字、特殊字符三项都包括，强度也是弱的 
		} 
		return true; 
	}); 
	
	$('#newpass').keyup(function () { 
		var strongRegex = new RegExp("^(?=.{8,})(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*\\W).*$", "g"); 
		var mediumRegex = new RegExp("^(?=.{7,})(((?=.*[A-Z])(?=.*[a-z]))|((?=.*[A-Z])(?=.*[0-9]))|((?=.*[a-z])(?=.*[0-9]))).*$", "g"); 
		var enoughRegex = new RegExp("(?=.{6,}).*", "g");
		var non=/^\s*$/ ;
		
		if (false == enoughRegex.test($(this).val())) { 
			$('#level').removeClass('pw-weak'); 
			$('#level').removeClass('pw-medium'); 
			$('#level').removeClass('pw-strong'); 
			$('#level').addClass(' pw-defule'); 
			$('#ck_setPassward').attr("disabled");
			 //密码小于六位的时候，密码强度图片都为灰色 
		} 
		else if (strongRegex.test($(this).val())) { 
			$('#level').removeClass('pw-weak'); 
			$('#level').removeClass('pw-medium'); 
			$('#level').removeClass('pw-strong'); 
			$('#level').addClass(' pw-strong'); 
			$('#ck_setPassward').removeAttr("disabled");
			 //密码为八位及以上并且字母数字特殊字符三项都包括,强度最强 
		} 
		else if (mediumRegex.test($(this).val())) { 
			$('#level').removeClass('pw-weak'); 
			$('#level').removeClass('pw-medium'); 
			$('#level').removeClass('pw-strong'); 
			$('#level').addClass(' pw-medium'); 
			$('#ck_setPassward').removeAttr("disabled");
			 //密码为七位及以上并且字母、数字、特殊字符三项中有两项，强度是中等 
		} 
		else { 
			$('#level').removeClass('pw-weak'); 
			$('#level').removeClass('pw-medium'); 
			$('#level').removeClass('pw-strong'); 
			$('#level').addClass('pw-weak'); 
			$('#ck_setPassward').attr("disabled");
			 //如果密码为6为及以下，就算字母、数字、特殊字符三项都包括，强度也是弱的 
		} 
		return true; 
	}); 

}) 