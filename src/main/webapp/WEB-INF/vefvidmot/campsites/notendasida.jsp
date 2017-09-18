<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>UserSite</title>
</head>
<body>
<h1>Welcome! Here you can see your TravelPlan and make a TravelPlan! </h1>

<h2>List of camps</h2>

<table border="1">
    <thead>
    <tr>
        <th>Name</th>
    </tr>
    </thead>
    <c:forEach items="${camps}" var="camp">
        <tr>
            <td> ${camp.campName} </td>
            <td> <button onclick="showPopupWindow()" type="button" id="myPopup" value="/add" >Add to TravelPlan</button> </td>
        </tr>
    </c:forEach>
</table>
<script>
    function showPopupWindow() {
        var myWindow = window.open(action="/campsites/forsida", "", "width=200,height=100");}
</script>
</body>
</html>
