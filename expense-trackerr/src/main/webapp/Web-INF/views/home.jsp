
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>

	<h1>Expense Tracker</h1>
	<p>${message}</p>

    <a href ="${context}/expense">Add Expense</a>

    <c:forEach var="expense" items="${expenses}"></c:forEach>

    <div>
        <h3>${expense.expensename}</h3>
        <p>${expense.amount}</p>
        <a href ="${contextRoot}/expense/${expense.id}">Edit</a>

    </div>
</body>

</html>