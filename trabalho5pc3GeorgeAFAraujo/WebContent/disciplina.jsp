<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="formDisciplina" action="crudDisciplina.jsp" method="get">
		<table>
			<tr>
				<td>Código:</td>
				<td><input type="number" name="codigo" /></td>
			</tr>
			<tr>
				<td>Descrição:</td>
				<td><input type="text" name="descricao" /></td>
			</tr>
			<tr>
				<td>Carga Horária:</td>
				<td><input type="number" name="cargaHoraria" /></td>
			</tr>
			<tr>
				<td><input formnovalidate="formnovalidate" type="submit" name="crud" value="Pesquisar"/></td>
				<td><input  type="submit" name="crud" value="Incluir"/></td>
				<td><input type="submit" name="crud" value="Alterar"/></td>
				<td><input type="submit" name="crud" value="Excluir"/></td>
			</tr>
		</table>
	</form>

</body>
</html>