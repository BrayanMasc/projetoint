package servico;

import dao.UsuarioDao;
import modelo.Usuario;

public class LoginServico {
	public boolean verificarUsuario(Usuario usuario) {
		UsuarioDao dao = new UsuarioDao();
		
		Usuario u = dao.validarLogin(usuario);
		
		if(u.getNome() != null) {
			return true;
		} else {
			return false;
		}
	}
}