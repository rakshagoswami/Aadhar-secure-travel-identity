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
int tappno,tno;
String st,sname;
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
tappno=Integer.parseInt((String)session.getAttribute("sappno"));
sname=(String)session.getAttribute("sname");
tno=1000;
try{
out.println("<body background='light_blue1.bmp'>");

Class.forName("com.mysql.jdbc.Driver");	
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aadhar","root","mysql");
stmt1=con.createStatement();
rs=stmt1.executeQuery("select max(ano) from cregn");
if(rs.next()){
tno=rs.getInt(1)+1;
if(tno==1) tno=1000;
}
else
tno=1000;
out.println("<center><h1><center>UID ALLOCATION</h1><hr><form method=post action='cprocess2.jsp'><table><tr><td><font size=20>Application No</td><td><input style='height:40px; font-size:20pt; type=text size=10'  value=" + tappno + "></td></tr>");
out.println("<tr><td><font size=20>Surveyor Name</td><td><input style='height:40px; font-size:20pt; type=text size=10' name=sname value=" + sname + "></td></tr>");
out.println("<tr><td><font size=20>Aadhaar No</td><td><input style='height:40px; font-size:20pt; type=text size=10' name=ano value=" + tno + "></td></tr>");
out.println("<tr><td><font size=20>Password</td><td><input type=password style='height:40px; font-size:20pt;  size=10' name=pwd></td></tr>");
out.println("<tr><td><center><input style='height:40px; font-size:20pt; size=10' type=submit value='Allot UID'></td></tr></table></form>");
}
catch(Exception ee)
{
out.println("Invalid Data! All fields are mandatory..." + ee.getMessage());
}
%>