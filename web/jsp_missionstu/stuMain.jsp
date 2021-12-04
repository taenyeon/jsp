<%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2021/12/02
  Time: 3:11 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="stuHome.jsp"%>
<html>
<head>
    <title>Title</title>
    <style>
        .nav{
            font-style: italic;
        }
        h2{
            text-align: center;
            margin: 30px;
        }
    </style>
</head>
<body>

<h2><a href="insert/stuInsertForm.jsp" class="nav">insert</a></h2>
<h2><a href="delete/stuDeleteForm.jsp" class="nav">delete</a></h2>
<h2><a href="update/stuUpdateForm.jsp" class="nav">update</a></h2>
<h2><a href="list/stuListForm.jsp" class="nav">list</a></h2>

</body>
</html>
