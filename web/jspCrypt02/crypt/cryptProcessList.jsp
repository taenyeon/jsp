<%@ page import="com.tech.crypt.UpdateDataBean" %>
<%@ page import="java.util.List" %>
<%@ page import="com.tech.crypt.UpdateDBBean" %><%--
  Created by IntelliJ IDEA.
  User: gimtaeyeon
  Date: 2021/12/06
  Time: 2:46 오후
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!--
암호화 처리
해시함수를 사용
-->
<%
    UpdateDBBean dbPro = UpdateDBBean.getInstance();
    List<UpdateDataBean> memberList = dbPro.getMembers();
%>
<table width="500px" border="1px solid">
    <tr>
        <td>아이디</td>
        <td>비밀번호</td>
    </tr>
    <%
        for (int i=0;i< memberList.size();i++){
            String id = memberList.get(i).getId();
            String pwd = memberList.get(i).getPwd();

    %>
    <tr>
        <td><%=id%></td>
        <td><%=pwd%></td>
    </tr>
<%
    }
%>

</table>
</body>
</html>
