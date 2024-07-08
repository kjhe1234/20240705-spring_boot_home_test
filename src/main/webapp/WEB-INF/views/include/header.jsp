<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/header.css"> 
<title>header</title>
</head>
<body>
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr class="header_line">
			<td width="65%">
				&nbsp;
			</td>>
			<td width="5%">
				<a href= "index" ><span class="menu">Home</span></a>
			</td>
			<c:choose>
				<c:when test="${sessionScope.sessionId eq null}">
					<td width="5%">
						<a href= "login"><span class="menu">Login</span></a>
					</td>
					<td width="4%">
						<a href= "join"><span class="menu">Join</span></a>
					</td>
				</c:when>
				<c:otherwise>
			<td width="6%">
				<a href= "Logout"><span class="menu">Logout</span></a>
			</td>
			<td width="5%">
				<a href= "modify"><span class="menu">Modify</span></a>
			</td>
				</c:otherwise>

			</c:choose>
			<td width="6%">
				<a href= "profile"><span class="menu">Profile</span></a>
			</td>
			<td width="5%">
				<a href= "list"><span class="menu">Board</span></a>
			</td>
			<td width="5%">
				<a href= "contact"><span class="menu">Contact</span></a>
			</td>
			<td width="5%">
				&nbsp;
			</td>
		</tr>	
		<tr>
			<td height="20" align="right" colspan="8">
				<c:if test="${sessionScope.sessionId !=null }">
					<span class="loginid">
						LOGIN : <c:out value="${sessionScope.sessionId}"></c:out>
					</span>
				</c:if>
			</td>
		</tr>
	</table>

</body>
</html>