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
int tappno;
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

try{
out.println("<body background='light_blue1.bmp'>");

out.println("<body background='light_blue1.bmp'><form method=post action='pinmast1.jsp'><center><TH><center><h1>PINCODE REGISTRATION</h1><hr><table><tr><td><font size=6>Police Station<input type=checkbox style='height:30; width:40;  size=10' name='r1' value='PS' checked></td><td><font size=6>RTA<input type=checkbox style='height:30; width:40;  size=10' name='r1' value='RTA'></tr>");

out.println("<tr><td><font size=6>Station Name</td><td><input type=text style='height:40px; font-size:20pt;  size=10' name=sname></td><td><font size=6>Location</td><td><input type=text style='height:40px; font-size:20pt;  size=10' name=loc></td></tr>");
out.println("<tr><td><font size=6>Incharge's Name</td><td><input type=text style='height:40px; font-size:20pt;  size=10' name=iname></td><td><font size=6>Password</td><td><input type=password style='height:40px; font-size:20pt;  size=10' name=pwd></td></tr></table>");

out.println("<table><tr><td><font size=6>Pincode</td><td><input type=text style='height:40px; font-size:20pt;  size=50' name=pcode></td></tr>");
out.println("<tr><td><font size=6>Area</td><td><input type=text style='height:40px; font-size:20pt;  size=50' name=aname></td></tr></table><p>");

out.println("<input type=submit style='height:40px font-size:20pt;  size=40' value=Register>");
out.println("</form>");

}
catch(Exception ee)
{
out.println("Invalid Data! All fields are mandatory..." + ee.getMessage());
}
%>