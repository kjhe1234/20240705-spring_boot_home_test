<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/title.css">
<link rel="stylesheet" href="/resources/css/content.css">
<script type="text/javascript" src="/resources/js/write.js"></script>
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
			<form action="contentModifyOk">
			<input type="hidden" name="bnum" value=${bDto.bnum }>
				<center>
				<table border="0" cellpadding="10" cellspacing="0">
					<tr>
						<td align="right">
							<span class="content_text">아 이 디 :</span>
						</td>
						<td>
							<input class="input_box01_view" type="text" name="bid" value="${bDto.bid }" readonly="readonly">
						</td>
					</tr>
					<tr>
						<td align="right">
							<span class="content_text">이 름 :</span>
						</td>
						<td>
							<input class="input_box01_view" type="text" name="bname" value="${bDto.bname }" readonly="readonly">
						</td>
					</tr>
					<tr>
						<td align="right">
							<span class="content_text">이 메 일 :</span>
						</td>
						<td>
							<input class="input_box01_view" type="text" name="bemail" value="${mDto.memail }" readonly="readonly">
						</td>
					</tr>
					<tr>
						<td align="right">
							<span class="content_text">제목 :</span>
						</td>
						<td>
							<input class="input_box02" type="text" name="btitle" value="${bDto.btitle }">
						</td>
					</tr>
					<tr>
						<td align="right" valign="top">
							<span class="content_text">내용 :</span>
						</td>
						<td>
							<textarea class="text_area" rows="10" cols="50" name="bcontent" >${bDto.bcontent }</textarea>						</td>
					</tr>
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
					<tr>
						<td colspan="2" align="center">
							<input class="btn01" type="submit" value="수정 완료" >
							<input class="btn01" type="button" value="수정 취소" onclick="javascript:history.go(-1);">
							<input class="btn01" type="button" value="글목록" onclick="javascript:window.location.href='list'">
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