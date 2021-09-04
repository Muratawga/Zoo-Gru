<%@page language="java" import="java.sql.*" %>
<%@page language="java" import="com.mysql.*" %>
<html>
<head></head>
<body>
<%
String vnome;
String vemail;
String vduvida;

vnome = request.getParameter("nome");
vemail = request.getParameter("email");
vduvida = request. ("duvida");

out.print( "Nome: " + vnome + "<br>");
out.print( "Email: " + vemail + "<br>");
out.print( "Dúvida: " + vduvida + "<br>");

String banco = "zoo_adg";
String usuario = "root";
String senha = "";
String url = "jdbc:mysql://localhost:3306/SITE" + banco;
String driver = "com.mysql.jdbc.Driver";

Class.forName(driver);

Connection conexao ;

conexao = DriverManager.getConnection(url, usuario, senha) ;

String sql = "INSERT INTO duvidas (nome,email,duvida) values ('"+vnome+"','" + vemail + "','"+vduvida+"')" ;
Statement stm = conexao.createStatement() ;
stm.executeUpdate(sql);

stm.close();
conexao.close();

out.print("<br> Sugestão enviada");


%>
</body>
</html>