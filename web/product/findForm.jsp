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
<h1>Search the product</h1>
<a href="/products">Back to product list</a>
<p></p>
<form method="post">
    <input type="search"  id="searched" name="searched" placeholder="Input the name">
    <input type="submit" value="Submit">
</form>

</body>
</html>