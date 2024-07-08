<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/content.css">
<title>Main</title>
</head>
<body>
<%@ include file = "include/header.jsp" %>
	<center>
	<table border="0" cellpadding="20" cellspacing="0">
		<tr>
			<td align="center">
				<span class="title_text01">kjhe1234's PROFILE</span>
			</td>
		</tr>
		<tr>
			<td align="center">
				<span class="title_text02">I'm kjhe1234 test home</span>
			</td>
		</tr>
		<tr>
			<td aling="center" class="content_box">
				<form action="joinOk" method="post" name="joinForm">
				<center>
				<table border="0" cellpadding="10" cellspacing="0">
					<tr>
						<td align="right">
							<span class="content_text">아이디 :</span>
						</td>
						<td>
							<input class="input_box01" type="text" name="mid">
						</td>
					</tr>
					<tr>
						<td align="right">
							<span class="content_text">비밀번호 :</span>
						</td>
						<td>
							<input class="input_box01" type="password" name="mpw">
						</td>
					</tr>
					<tr>
						<td align="right">
							<span class="content_text">비밀번호 확인 :</span>
						</td>
						<td>
							<input class="input_box01" type="password" name="mpwCheck">
						</td>
					</tr>
					<tr>
						<td align="right">
							<span class="content_text">회원이름 :</span>
						</td>
						<td>
							<input class="input_box01" type="text" name="mname">
						</td>
					</tr>
					<tr>
						<td align="right">
							<span class="content_text">이메일 :</span>
						</td>
						<td>
							<input class="input_box01" type="email" name="memail">
						</td>
					</tr>
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input class="btn01" type="submit" value="가입완료">
							<input class="btn01" type="button" value="로그인" onclick="javascript:window.location.href='login'">
						</td>
					</tr>
				</table>
				</center>
				</form>
			</td>
		</tr>

	</table>
	</center>
	<%@ include file = "include/footer.jsp" %>



</body>
</html>