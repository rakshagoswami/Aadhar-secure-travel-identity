<%@ page import="java.sql.*" %>
<%
out.println("<form method=post action=vcz1.jsp>");
out.println("<h1><center>VIEW CITIZEN INFORMATION<hr>");
out.println("<center><table><tr><td><font size=6>Specify Citizen ID</td><td><input style='height:40px; font-size:20pt;  size=10' type=text name='cname'></td></tr><center><tr><td><input type=submit style='height:30; width:110;  size=5'value=Fetch></td></tr>");
out.println("</form>");
%>
