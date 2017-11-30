<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
    text-align:center;
}

table{
    width:100%;
}
</style>
<body>
	<%@page import="java.util.List, br.com.prog3.trabalho5pc3.GeorgeAFAraujo.*"%>
	<form name="formDisciplina" action="disciplina.jsp" method="get">
		<input type="submit" name="voltar" value="Voltar"/>
	
		<%! String crud; %>
		<%
			crud = request.getParameter("crud");
			if(crud.equals("Pesquisar")){
				CrudDisciplina cd = new CrudDisciplina();
				List<Disciplina> ld =  cd.listarTodos();
		%>
		<table>
			<tr>
				<th>Código</th>
				<th>Descrição</th>
				<th>Carga Horária</th>
			</tr>
		<%		
				for( Disciplina d : ld){
		%>
					<tr>
						<td><%=d.getCodigo()%></td>
						<td><%=d.getDescricao() %></td>
						<td><%=d.getCargaHoraria() %></td>
					</tr>
		<%
				}
		%>
		</table>
		<%
			}
			
			if(crud.equals("Incluir")){
				Disciplina dn = new Disciplina();
				dn.setCodigo( Integer.valueOf(request.getParameter("codigo")) );
				dn.setDescricao( request.getParameter("descricao") );
				dn.setCargaHoraria( Integer.valueOf(request.getParameter("cargaHoraria")) );
				
				CrudDisciplina cd = new CrudDisciplina();
				cd.inserir(dn);
		%>
			<p>Disciplina incluída com sucesso</p>
		<%
			}
			
			
			if(crud.equals("Alterar")){
				Disciplina dn = new Disciplina();
				dn.setCodigo( Integer.valueOf(request.getParameter("codigo")) );
				dn.setDescricao( request.getParameter("descricao") );
				dn.setCargaHoraria( Integer.valueOf(request.getParameter("cargaHoraria")) );
				
				CrudDisciplina cd = new CrudDisciplina();
				cd.alterar( dn );
		%>
			<p>Disciplina alterada com sucesso</p>
		<%
			}
	
			if(crud.equals("Excluir")){
				CrudDisciplina cd = new CrudDisciplina();
				cd.excluir( Integer.valueOf(request.getParameter("codigo")) );
		%>
			<p>Disciplina excluída com sucesso</p>
		<%
			}
			
		%>
	</form>
</body>
</html>