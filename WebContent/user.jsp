<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="RESOURCES/CSS/cadastro.css">

</head>
<body>
<form method="Post" action='UserController' name="frmAddUser">

<% 

%>
 User Id : <input type="text" readonly="readonly" name="userid" value="<c:out value="${user.userid}" />" /> <br />
 Nome : <input type="text" name="nome" value="<c:out value="${user.nome}" />" /> <br />
 Email : <input type="text" name="email" value="<c:out value="${user.email}" />" /> <br />
 Senha : <input type="text" name="senha" value="<c:out value="${user.senha}" />" /> <br />
 Telefone : <input type="text" name="telefone" value="<c:out value="${user.telefones}" />" /><input type="button" value="Add telefone"> <br />
  <input type="submit" value="Submit">

</form>

</body>
</html>