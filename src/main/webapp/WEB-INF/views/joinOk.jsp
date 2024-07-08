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
	<c:if test="${joinFail == 1}">
		<script type="text/javascript">
			alert("가입하시려는 아이디는 이미 가입된 아이디입니다. 다시 확인해 주세요.");
			history.go(-1);
		</script>
	</c:if>

	<%@ include file="include/header.jsp" %>

	<center>
	<table border="0" cellpadding="20" cellspacing="0">
		<tr>
			<td align="center">
				<span class="title_text01">DEVELOPER GYOJIN's PROFILE</span>
			</td>
		</tr>
		<tr>
			<td align="center">
				<span class="title_text02">I'm Gyojin Lee, a developer who wants a development job. Please call me back.</span>
			</td>
		</tr>
		<tr>
			<td class="content_box" align="center">							
				<table border="0" cellpadding="10" cellspacing="0">
					<tr>
						<td align="center">
							<span class="content_text">							
							${mname }님 회원가입을 축하드립니다.<br>
							가입하신 아이디는 ${mid } 입니다.<br>
							로그인 후 게시판에 글을 쓰실 수 있습니다.<br><br>
							<input class="btn01" type="button" value="로그인" onclick="javascript:window.location.href='login'">
							</span>
						</td>						
					</tr>					
				</table>				
			</td>
		</tr>
	</table>
	</center>
	<%@ include file="include/footer.jsp" %>
</body>
</html>