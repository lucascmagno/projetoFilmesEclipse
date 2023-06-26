<%@page import="Movies.dao.FilmesDao"%>
<%@page import="Movies.model.Filme"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

boolean ok = false;

String titulo = request.getParameter("titulo");
String data = request.getParameter("data");
String duracao = request.getParameter("duracao");
String categoria = request.getParameter("categoria");
String descricao = request.getParameter("descricao");

Filme filme = new Filme();

filme.setTitulo(titulo);
filme.setDate(data);
filme.setDuracao(duracao);
filme.setCategoria(categoria);
filme.setDescricao(descricao);

FilmesDao filmesDao = new FilmesDao();
//filmesDao.updateFilme(filme);

if(ok){
%>
<script type="text/javascript">
	alert("Filme atualizado com sucesso!");
	window.location.href=".loginUsuario.jsp";
</script>
<%}else{ %>
<script type="text/javascript">
	alert("Falha ao atualizar filme");
	window.href=".cadastrarUsuario.jsp";
</script>
<%} %>
