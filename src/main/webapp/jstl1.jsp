<%@page import="by.grodno.pvt.site.webappsample.service.User"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<html>
<head>
        <title>Add new user</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>

<body class="w3-light-grey">
<div class="w3-container w3-blue-grey w3-opacity w3-right-align">
            <h1>Hello )))</h1>
        </div>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
	<%@ include file="fragments/header.jsp"%>

	<br />


	<c:if test="${requestScope.users != null}">
    		<table class="table">
    			<thead class="thead-dark">
    				<tr>
    					<th scope="col">Num</th>
    					<th scope="col">Firstname</th>
    					<th scope="col">Lastname</th>
    					<th scope="col">Birthdate</th>
    					<th scope="col">Sex</th>
    					<th scope="col">Salary</th>
    					<th scope="col">Actions</th>
    				</tr>
    			</thead>
    			<c:forEach var="i" begin="1" end="${fn:length(requestScope.users)}">
    				<c:set var="currUser" scope="request"
    					value="${requestScope.users[i-1]}" />
    				<tr>
    					<td scope="row">${i}</td>
    					<td>${requestScope.currUser.firstName}</td>
    					<td>${requestScope.currUser.lastName}</td>
    					<td>
    						<%
    							Date userBirth = ((User) request.getAttribute("currUser")).getBirthdate();
    									if (userBirth != null) {
    										out.println(new SimpleDateFormat("yyyy-MM-dd").format(userBirth));
    									}
    						%>
    					</td>
    					<td><c:choose>
    							<c:when test="${requestScope.currUser.male}">Male</c:when>
    							<c:otherwise>Female</c:otherwise>
    						</c:choose></td>
    					<td>${requestScope.currUser.salary}</td>
    					<td><a class="btn btn-danger"
    						href="http://localhost:8080/webappsample/user/delete?number=${i}">Delete
    							user</a></td>
    				</tr>

    			</c:forEach>
    		</table>
    	</c:if>

	<a href="http://localhost:8080/webappsample/jstl2.jsp">Add user</a>

	<br />
	<br />







</body>
</html>
