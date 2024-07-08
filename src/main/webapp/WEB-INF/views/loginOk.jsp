<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/content.css">
<title>Main</title>
</head>
<body>
	<c:if test="${loginFail ==1 }">
		<script	type="text/javascript">
			alert("아이디 또는 비밀번호가 잘못 되었습니다. 다시 확인해 주세요.")
			history.go(-1);
		</script>
	</c:if>
<%@ include file = "include/header.jsp" %>
	<center>
	<table border="0" cellpadding="20" cellspacing="0">
		<tr>
			<td align="center">
				<span class="content_text">
					${mid}님 로그인을 축하 드립니다.<br>
					${mid }님의 가입일은 ${mdate} 입니다.<br>

					<input class="btn01" type="button" value="글쓰기" onclick="javascript:window.location.href='write'">
				</span>
			</td>
		</tr>
		
	</table>
	</center>
	<%@ include file = "include/footer.jsp" %>



</body>
</html>