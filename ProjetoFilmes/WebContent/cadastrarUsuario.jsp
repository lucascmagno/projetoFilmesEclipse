<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/styleCadastrar.css">
<title>Cadastrar</title>
</head>
<body>
	<div class="main-cadastro">
		<div class="left-cadastro">
			<h1>
				Faça seu cadastro<br>Para acessar o site
			</h1>
			<img src="rockAndRoll.svg" class="left-cadastro-img"
				alt="Animação Do Rock">
		</div>
		<div class="right-cadastro">
			<div class="card-cadastro">
				<h1>Formulário de Cadastro</h1>
				<form method="POST" action="./respostaCadastro.jsp"
					class="formCadastro">
					<div class="Nome">
						<div class="textfield">
							<label for="nome">Nome</label> <input type="text" name="nome"
								placeholder="Nome">
						</div>
						<div class="textfield">
							<label for="sobrenome">Sobrenome</label> <input type="text"
								name="sobrenome" placeholder="Sobrenome">
						</div>
					</div>
					<div class="textfield">
						<label for="usuario">Nome de Usuário</label> <input
							type="text" name="usuario" placeholder="Nome de Usuário">
					</div>
					<div class="textfield">
						<label for="email">Email</label> <input type="email" name="email"
							placeholder="E-mail">
					</div>
					<div class="textfield">
						<label for="senha">Senha</label> <input type="password"
							name="senha" placeholder="Senha">
					</div>
					<a href="siteMain.jsp"><button class="btn-cadastrar" type="submit">Cadastrar</button></a>
					<hr size="1" width="75%" noshade>
					<a href="loginUsuario.jsp"><button class="btn-login">Login</button></a>
				</form>
			</div>
		</div>
	</div>
</body>
</html>