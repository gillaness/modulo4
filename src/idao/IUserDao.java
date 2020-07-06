package idao;

import java.util.List;

import modelo.User;


public interface IUserDao {

	public boolean crearUser(User usuario);
	public User obtenerUsuarioByLogin(String loginusuario);
	public List<User> mostrarUser();
	public boolean editarUser(User usuario);
	public User obtenerId(String idusuario);
	public boolean eliminarUsuario(User user);
	
}