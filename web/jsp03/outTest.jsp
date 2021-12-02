<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"
         buffer="16kb"

%>
<%-- 버퍼는 현재 임시 저장 공간 / 기본은 8kb --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>outTest 2번째</title>
</head>
<body>

<%
  int bufferSize=out.getBufferSize();
  int remainSize=out.getRemaining();
  int useSize=bufferSize-remainSize;
%>

<h2>현재 버퍼 사용현황</h2>
현재버퍼 : <%=bufferSize %> <br />
사용버퍼 : <%=remainSize %> <br />
남은버퍼 : <%=useSize %> <br />



</body>
</html>