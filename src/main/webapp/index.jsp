<html>
<body>
	<%@ page import="java.net.*" %> 
	<%
	String hostname, serverAddress;
	hostname = "error";
	serverAddress = "error";
	try {
	InetAddress inetAddress;
	inetAddress = InetAddress.getLocalHost();
	hostname = inetAddress.getHostName();
	serverAddress = inetAddress.toString();
} catch (UnknownHostException e) {

e.printStackTrace();
}
%>
<h2>Hello World from App at Platform.sh</h2>
<li>InetAddress: <%=serverAddress %></li>
<li>InetAddress.hostname: <%=hostname %></li>
</body>
</html>