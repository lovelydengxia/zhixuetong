<form id="alipaysubmit" name="alipaysubmit" action="https://mapi.alipay.com/gateway.do?_input_charset=utf-8" method="get">
	<input type="hidden" name="sign" value="${sign }"/>
	<input type="hidden" name="body" value="${body }"/>
	<input type="hidden" name="_input_charset" value="${_input_charset }"/>
	<input type="hidden" name="total_fee" value="${total_fee }"/>
	<input type="hidden" name="subject" value="${subject }"/>
	<input type="hidden" name="sign_type" value="${sign_type }"/>
	<input type="hidden" name="service" value="${service }"/>
	<input type="hidden" name="notify_url" value="${notify_url }"/>
	<input type="hidden" name="partner" value="${partner }"/>
	<input type="hidden" name="seller_email" value="${seller_email }"/>
	<input type="hidden" name="out_trade_no" value="${out_trade_no }"/>
	<input type="hidden" name="payment_type" value="${payment_type }"/>
	<input type="hidden" name="return_url" value="${return_url }"/>
	<input type="submit" value="支付" style="display:none;">
</form>
<script>document.forms['alipaysubmit'].submit();</script>