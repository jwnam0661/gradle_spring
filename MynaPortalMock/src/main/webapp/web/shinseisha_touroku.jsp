<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>申請者情報登録</title>
<script type="text/javascript">
	function onClickHandler(_val) {

		var form = document.forms[0];

		if (_val == '申請者情報登録' ) {

			form['afteraction'].value = 'shinseisha_touroku';

		} else if (_val == '同時申請案件送信' ) {

			form['afteraction'].value = 'submit_douji';

		} else {

			form['afteraction'].value = 'exception';

		}

	}
</script>
</head>
<body>
	<h2>申請者情報登録</h2>

	送信先：<c:out value="${reply_address }" />
	<c:url var="actionUrl" value="http://${reply_address }/" />
	<form:form action="${actionUrl}" method="post">
		<!-- <input type="submit" value="申請者情報登録" onclick="return onClickHandler(this.value)"></input>
		<input type="submit" value="同時申請案件送信" onclick="return onClickHandler(this.value)"></input> -->
		<input type="text" name="shinseishaId" /><br/>
		<input type="text" name="password" /><br/>
		<input type="text" name="shimei" /><br/>
		<input type="text" name="shimeiKana" /><br/>
		<input type="text" name="yubinBango" /><br/>
		<input type="text" name="jusho" /><br/>
		<input type="text" name="denwaBango" /><br/>
		<input type="text" name="emailAddress" /><br/><br/>
		<input type="submit" value="送信" onclick="return onClickHandler(this.value)"></input>
	</form:form>
</body>
</html>
