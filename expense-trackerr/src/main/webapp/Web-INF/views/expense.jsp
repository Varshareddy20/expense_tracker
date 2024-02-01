
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Title of the document</title>
</head>

<body>
    <h1>Add Expense</h1>

    <form:form action="${contextRoot}/expense" method="post" modelAttribute="expense>
        
        <form:hidden path= "id" />
        <form:input path= "expensename" placeholder="Enter expensename" />
        <form:input path= "amount" placeholder="Enter expense amount" />
        <form:textarea path= "note" placeholder="Enter note" />

        <button type="submit">Add Expense</button>
</form:form>

<a>href = "${contextRoot}/expense/${expense.id}/delete">Delete</a>
</body>

</html>