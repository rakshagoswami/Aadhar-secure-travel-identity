<%@ page import="java.util.*,java.sql.*" %>
<%
java.util.Date dt;
int dy,mn,yr;
String tdt,dist;
%>
<%
Connection con;
Statement stmt,stmt1;
ResultSet rs;
%>
<%
tdt="";
dt=new java.util.Date();
dy=dt.getDate();
mn=dt.getMonth()+1;
yr=dt.getYear()+1900;
tdt=dy+"/"+mn+"/"+yr;
%>


<%

out.println("<body background='light_blue1.bmp'><form method=post action='cregister.jsp'><center><TH><font size=50 align='centre'>CITIZEN REGISTRATION</center><hr><table><tr><td><font size=5>Registration Date</td><td><input style='height:40px; font-size:20pt; type=text size=10' disabled value=" + tdt + "></td></tr>");


out.println("</select></td></tr>");
out.println("<tr><td><font size=20>Citizen Name</td><td> <input style='height:40px; font-size:20pt; type=text size=10'name=cname></td><td><font size=20>Address</td><td><input style='height:40px; font-size:20pt; type=text size=10' name=addr></td></tr>");
out.println("<tr><td><font size=20>Birth Date</td><td><input style='height:40px; font-size:20pt; type=text size=10'  name=dob></td><td><font size=20>Fathers Name</td><td><input style='height:40px; font-size:20pt; type=text size=10' name=fname></td>");
out.println("<tr><td><font size=20>Contact No</td><td><input style='height:40px; font-size:20pt; type=text size=10' name=cno></td><td><font size=20>Occupation</td><td><input style='height:40px; font-size:20pt; type=text size=10' name=occ></td></tr><tr><td><font size=20>Photo</td><td><input type=file name=ph></td>");
out.println("<td><font size=20>Pincode</td>");
out.println("<td><input style='height:40px; font-size:20pt; type=text size=10' name=pin></td><tr><td><font size=20>Gender</td><td><font size=20><input type=checkbox style='height:30; width:40;' name='r1' value='Male'>Male<font size=20> <input type=checkbox style='height:30; width:40;' name='r1' value='Female'>Female</td></tr>");
out.println("</table>");
out.println("<center><input type=submit style='height:30; width:100;' value=Register><input type=reset style='height:30; width:100;'></center>");

out.println("</form>");
%>
