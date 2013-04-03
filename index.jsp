<%@ page import="com.web.model.*, com.web.view.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<body>

<c:if test="${not empty username }">
	<c:redirect url="download.jsp" />
</c:if>


<h2>Welcome!</h2>
<FORM METHOD=POST ACTION="Login">

<table cellspacing="10">
<tr>
<td>Username: </td> <td><INPUT TYPE=TEXT NAME=username SIZE=20></td>
</tr>

<tr>
<td>Password: </td><td><INPUT TYPE=PASSWORD NAME=password SIZE=20></td>
</tr>

<tr></tr>

<tr>
<td><INPUT TYPE=SUBMIT VALUE="Login"></td>
</tr>

</table>

</FORM>


<c:if test="${not empty error }">
	<c:set var="error_msg" scope="session" value="${error}"/>
	<i>Message for you: ${error_msg}</i>
	<% session.invalidate(); %>
</c:if>


<P><a href="register.jsp">Register</a>


</body>
</html>