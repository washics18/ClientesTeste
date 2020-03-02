<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Users</title>
<link  rel="stylesheet" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
<script type"text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>


</head>
<body>

<center>
  <h1>User Management</h1>
        <h2>
        <a href="user.jsp"><input type="button" value="Add New User"></a>
             &nbsp;&nbsp;&nbsp;
         <a href="list"><input type="button" value="List All Users"></a>
             &nbsp;&nbsp;&nbsp;
         <a href="index.jsp"><input type="button" value="Index"></a>
         
        </h2>
        
   
<table id="minhaTabela" class="display" cellspacing="0"  width="100%">
<caption><h2>List of Users</h2></caption>
<thead>
<tr>
<th>User Id</th>
<th>Nome</th>
<th>Email</th>
<th>Senha</th>
<th colspan=3>Action</th>
</tr>
</thead>
<tbody>
<c:forEach items="${users}" var="user">
<tr>
<td><c:out value="${user.userid}" /></td>
<td><c:out value="${user.nome}" /></td>
<td><c:out value="${user.email}" /></td>
<td><c:out value="${user.senha}" /></td>

<td><a href="TelefoneController?id=${user.userid}&name=${user.nome}">Telefones</a></td>
<td><a href="UserController?action=edit&id=<c:out value="${user.userid}"/>">Update</a></td>
<td><a href="UserController?action=delete&id=<c:out value="${user.userid}"/>">Delete</a></td>
</tr>
</c:forEach>
</tbody>
</table>

</body>
<script type="text/javascript">

$(document).ready(function() {
    $('#minhaTabela').DataTable();
} );

</script>
</html>