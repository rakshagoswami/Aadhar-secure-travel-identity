<%@ page import="java.sql.*" %>
<%
java.util.Date dt;
int dy,mn,yr;
String tdt,dist;
%>
<%
Connection con;
Statement stmt,stmt1;
ResultSet rs;
String cname;
%>

<%
try{
out.println("<TH><center><h1>CITIZEN PROFILE<hr>");
cname=request.getParameter("cname");
Class.forName("com.mysql.jdbc.Driver");	
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aadhar","root","mysql");
stmt=con.createStatement();
rs=stmt.executeQuery("select * from cregn where ano=" + cname);
if(rs.next())
{
out.println("<html><body background='light_blue1.bmp'><form method=post action='czpro.jsp'><center><table><tr><td><font size=6>Citizen ID</td><td><input type=text style='height:40px; font-size:20pt;  size=10' name=cid disabled value="+ cname + "></td></tr>");
out.println("<tr><td><font size=6>Citizen Name</td><td><input type=text style='height:40px; font-size:20pt;  size=10' name=cname disabled value="+ rs.getString(4)+ "></td><td><font size=6>Address</td><td><input type=text style='height:40px; font-size:20pt;  size=10' name=addr disabled value="+ rs.getString(5)+ "></td></tr>");
out.println("<tr><td><font size=6>Birth Date</td><td><input type=text style='height:40px; font-size:20pt;  size=10' name=dob disabled value="+ rs.getString(6)+ "></td><td><font size=6>Fathers Name</td><td><input type=text style='height:40px; font-size:20pt;  size=10' name=fname disabled value="+ rs.getString(7)+ "></td>");
out.println("<tr><td><font size=6>Contact No</td><td><input type=text style='height:40px; font-size:20pt;  size=10' name=cno disabled value="+ rs.getString(8)+ "></td><td><font size=6>Occupation</td><td><input type=text style='height:40px; font-size:20pt;  size=10' name=occ disabled value="+ rs.getString(9)+ " ></td></tr><tr><td><font size=6>Photo</td><td><img src='" + rs.getString(10) +"' width=50 height=50></td>");
out.println("<td><font size=6>Pincode</td>");
out.println("<td><input type=text style='height:40px; font-size:20pt;  size=10' name=pin disabled value= " + rs.getString(11) +"></td><tr><td><font size=6>Gender</td><td><font size=6><input type=text style='height:40px; font-size:20pt;  size=10' disabled value=" + rs.getString(12) +"></td>");
out.println("<td><font size=6>Vehicle Type </td><td><select name='utype'><option value='2'>2 Wheeler</option> <option value='4'>4 Wheeler</option><option value='HV'>Heavy Vehicle </option></select></td></tr></td></tr>");
out.println("</table>");
out.println("<hr><table><tr><td><font size=6>Apply Passport <input type=checkbox name='r2' value='1' checked></td><td><font size=6>Apply License<input type=checkbox name='r2' value='2'></td></tr>");
out.println("</table><hr>");

out.println("<input type=submit value=Process>");

out.println("</form></body></html>");

}
else
{
out.println("<font color=red size=2>No such Citizen.");
}
}
catch(Exception ee)
{
out.println("Invalid Data! All fields are mandatory..." + ee.getMessage());
}
%>