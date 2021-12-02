<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    table{
        width: 500px;
        border: 2px solid red;
        border-collapse: collapse;
    }
    table tr td{
        border: 2px solid green;

    }
</style>
<body>
<h2>수강강좌</h2>
<%
    Object[][] str = {{501,"데이터베이스","공학관 110",3.5},
            {401,"데이터베이스","공학관 110",4.0},
            {402,"스포츠경영학","체육관 103",3.5},
            {502,"자료구조","공학관 111",4.0},
            {501,"자료구조","공학관 111",3.5}}
            ;
%>
<table>
    <tr>
        <td>학생번호</td>
        <td>강좌이름</td>
        <td>강의실</td>
        <td>성적</td>
    </tr>
        <%
        for (int i=0; i<str.length;i++){
            %>
    <tr>
            <%

            for (int j=0; j<str[i].length;j++){


    %>
        <td><%=str[i][j]%></td>
        <%
        }
            %>
                </tr>
                <%
        }
    %>
</table>
</body>
</html>
