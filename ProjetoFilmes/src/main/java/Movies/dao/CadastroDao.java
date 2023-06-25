package Movies.dao;

import java.sql.SQLException;

import Movies.model.LoginCadastro;
import Movies.util.Conexao;

public class CadastroDao {
	public boolean inserirUsuario(LoginCadastro c) {

		Conexao con = null;

		try {
			con = new Conexao();
			con.executeUpdate("INSERT INTO login(usuario, email, senha) VALUES (" + "'" + c.getUsuario() + "','"
					+ c.getEmail() + "','" + c.getSenha() + "');");
			return true;
		} catch (SQLException e) {
			return false;
		}
	}
}
