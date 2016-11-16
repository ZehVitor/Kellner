<%@ page import="bean.persistence.dao.*"%>
<%@ page import="bean.persistence.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar</title>
</head>
<body>

<%
	String name = request.getParameter("name");
	String password = request.getParameter("pass");
	String email = request.getParameter("email");
	String login = request.getParameter("login");
	UsuarioDAO userDao = new UsuarioDAO();
	Usuario user = new Usuario();
	
	/* if (user != null) { 
	  request.getSession().setAttribute("user", user);
	  response.sendRedirect("welcome.jsp");
	} else {
	  request.setAttribute("message", "Unknown login, try again");
	  userDao.inserir(user);
	  request.getRequestDispatcher("/WEB-INF/login.jsp").forward(request, response);
	} */
	
	user.setLogin(login);
	user.setEmail(email);
	user.setNome(name);
	user.setSenha(password);
	
	userDao.inserir(user);
			  
	response.sendRedirect("index.jsp");
    //Usuario user = userDao.findByLogin(userName);
    
	/*if (user != null) {
        response.sendRedirect("welcome.jsp");
    } else {
        response.sendRedirect("index.jsp");
    }*/
%>

</body>
</html>