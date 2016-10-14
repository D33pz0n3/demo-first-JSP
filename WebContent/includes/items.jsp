<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% Class.forName("com.mysql.jdbc.Driver"); %>
<%@ page import="java.sql.*"%>
<%@ page import="connectDatabase.connectDB"%>

<%
	Connection con=new connectDB().openConnect();

	Statement st=con.createStatement();
	
	String command="select * from document";
	
	ResultSet rs=st.executeQuery(command);
	
%>
<% 
	int i=1;
	while(rs.next()){ 

%>
<div class='items col-md-12'>
	<ul>
		<li style='list-style: none' class='title'><input type='checkbox'>
			<a style="font-size: 18px"> <%= rs.getString(2) %>
		</a> <span style="font-size: 12px"> <%= rs.getString(3) %>
		</span> <br></li>
		<li><i>Pages:<%= rs.getString(5) %></i><br></li>
		<li><%= rs.getString(4) %></li>

		<li>
			<ul class="list-inline">
				<li><button id='btnAbstract' style="font-size: 10px"
						type="button" data-placement="bottom" class="btn btn-md btn-info"
						onclick="show(this,<%=i%>)">Abstract</button></li>
				<li><button id='btnHighlight' style="font-size: 10px"
						type="button" data-placement="bottom" class="btn btn-md btn-info"
						onclick="show(this,<%=i%>)">Highlight</button></li>
				<li><a style="font-size: 9px" href="<%= rs.getString(8) %>"
					type="button" data-placement="bottom" class="btn btn-danger">Download</a></li>
			</ul>
			<div class='content abstact-<%=i%>' style="display: none;">
				<p>
				<h5>
					<b>Abstract</b>
				</h5>
				<p align="justify">
					<%= rs.getString(6)%>
				</p>
			</div>
			<div class='content highlight-<%=i%>' style="display: none;">
				<h5>
					<b>Highlight</b>
				</h5>
				<p align="justify">
					<%= rs.getString(7) %>
				</p>

			</div>
		</li>
	</ul>
</div>

		<%
			i++;
			}
		%>