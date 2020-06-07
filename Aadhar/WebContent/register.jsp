<%@ page import="java.util.*" %>
<%
Date dt;
int dy,mn,yr;
String tdt;
%>

<%
tdt="";
dt=new Date();
dy=dt.getDate();
mn=dt.getMonth()+1;
yr=dt.getYear()+1900;
tdt=dy+"/"+mn+"/"+yr;
%>


<%

out.println("<body background='light_blue1.bmp'><form method=post action='sregister.jsp'><center><p><center><h1>AADHAAR STAFF  REGISTRATION<br></center><hr><table><tr><td><br><br><br><br><font size=20>Registration Date</td><td><br><br><br><br><input style='height:40px; font-size:20pt; size=10'disabled value=" + tdt + "></td></tr>");
out.println("<tr><td><font size=20>Staff Name</td><td><input style='height:40px; font-size:20pt; type=text size=10' name=sname></td></tr><tr><td><font size=20>Location</td><td><input  style='height:40px; font-size:20pt; type=text size=10' name=addr></td></tr>");
out.println("<tr><td><font size=20>Password</td><td><input type=password input style='height:40px; font-size:20pt; size=10' name=pwd></td></tr>");
out.println("</table>");
out.println("<center><input type=submit style='height:30; width:100;' value=Register </center><br><center><input type=reset style='height:30; width:100;'></center>");

out.println("</center></form>");
%>