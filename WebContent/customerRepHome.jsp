<!-- MADE BY JOSHUA ROSS, DATABASES GROUP 11 -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>

<%
    	if ((session.getAttribute("user") == null) || (session.getAttribute("employee") == null))
    	{
    		response.sendRedirect("notFound.jsp");
    	}
%>

<!DOCTYPE html>
<html>
   	<head>
	   	<title>Train Employee Home</title>
	   	<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/kognise/water.css@latest/dist/light.min.css">
		<style>
		body {
		margin: 0 !important;
		}
		</style>
   </head>
   <body>
   	<h2>Logged in as <%=session.getAttribute("user")%></h2><br/>
   	<form action="repMessaging.jsp" method="get">
        <button>Reply to Customer Messages</button>
	</form>
	<form action="reservations.jsp" method="get">
        <button>Access Reservations</button>
	</form>
	<form action="schedules.jsp" method="get">
        <button>Access Train Schedules</button>
	</form>
    <br/>
    <form action="logout.jsp" method="get">
        <button>Log Out</button>
	</form>

   </body>
</html>
