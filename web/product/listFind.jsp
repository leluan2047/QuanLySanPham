<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%--
  Created by IntelliJ IDEA.
  User: nhat
  Date: 4/20/18
  Time: 6:57 PM
  To change this template use File | Settings | File Templates.
--%>
<html>
<head>
    <meta content="content-type" content="text/html; charset=utf-8">
</head>
<body>
<h1>Search Results</h1>
<p>
    <a href="/products">Back to product list</a>
</p>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Price</td>
        <td>Describe</td>
        <td>Producer</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["findList"]}' var="findList">
        <tr>
            <td><a href="/products?action=view&id=${findList.getId()}">${findList.getName()}</a></td>
            <td>${findList.getPrice()}</td>
            <td>${findList.getDescribe()}</td>
            <td>${findList.getProducer()}</td>
            <td><a href="/products?action=edit&id=${findList.getId()}">edit</a></td>
            <td><a href="/products?action=delete&id=${findList.getId()}">delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>