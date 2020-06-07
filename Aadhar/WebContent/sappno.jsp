<%@ page import="java.sql.*" %>
<%


Connection con;
Statement stmt,stmt1;
ResultSet rs;
%>

<%
try{
out.println("<body background='light_blue1.bmp'>");

Class.forName("com.mysql.jdbc.Driver");	
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aadhar","root","mysql");

stmt1=con.createStatement();
rs=stmt1.executeQuery("select * from cregn where ano=0 and status='Processing'");
try
{
out.println("<b><center><font size=50 align='centre'>PROCESS AADHAAR CARD</center></b><hr>");
out.println("<form method=post action='fcitizen.jsp'><center><table><tr><td><font size=50 align='centre'>Pending Application No</td><td><select name=appno></center>");
while (rs.next())
{
String t;
t=rs.getString(1) ;

out.println("<center><option style=height:30px; width:40px; font-size:35pt; value="+t+">" + t + "</option></center>");
}
out.println("</td></table></SELECT>");
out.println("<center><input type=submit style='height:30; width:100;' value='Select'></center></form>");
}
catch(Exception ee)
{
out.println(ee.getMessage());
}
}
catch(Exception ee)
{
out.println("Invalid Data! All fields are mandatory..." + ee.getMessage());
}

%>