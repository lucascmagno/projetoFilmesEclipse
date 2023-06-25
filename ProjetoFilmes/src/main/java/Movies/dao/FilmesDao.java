package Movies.dao;

import Movies.model.Filme;
import Movies.dao.FilmesDao;
import Movies.util.Conexao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FilmesDao {
    
    public List<Filme> listarFilmes() throws SQLException {
        Conexao con = null;
        
        List<Filme> livros = new ArrayList<>();
        try {
            con = new Conexao();
            ResultSet rs = con.executeQuery("SELECT * FROM filme;");
            while (rs.next()) {
                Filme filme = new Filme();
                filme.setIdFilme(rs.getInt("idFilme"));
                filme.setTitulo(rs.getString("titulo"));
                filme.setDate(rs.getString("titulo"));
                filme.setCategoria(rs.getString("titulo"));
                filme.setDuracao(rs.getString("titulo"));
                filme.setDescricao(rs.getString("descricao_livro"));
                filme.add(filme);
            }
        } finally {
            if (con != null) {
                con.fecharConexao();
            }
        }

        return livros;
    }
    
    public Filme getFilmeById(int id) throws SQLException {
        Conexao con = null;

        try {
            con = new Conexao();
            ResultSet rs = con.executeQuery("SELECT * FROM filme WHERE idFilme=" + id);
            
            if (rs.next()) {
            	Filme filme = new Filme();
            	filme.setIdFilme(rs.getInt("idFilme"));
                filme.setTitulo(rs.getString("titulo"));
                filme.setDate(rs.getString("titulo"));
                filme.setCategoria(rs.getString("titulo"));
                filme.setDuracao(rs.getString("titulo"));
                filme.setDescricao(rs.getString("descricao_livro"));
                
                return filme;
            }
            return null;
            
        } finally {
            if (con != null) {
                con.fecharConexao();
            }
        }
    }
}
