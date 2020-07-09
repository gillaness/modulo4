package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import conexion.ConexionSingleton;
import idao.IUserDao;
import modelo.User;



public class UserDao implements IUserDao {

	@Override
	public boolean crearUser(User usuario) {
		// TODO Auto-generated method stub
		boolean registrar = false;
		
		Statement stm = null;
		Connection con = null;
		
		String sql = "INSERT INTO usuario VALUES ('"+usuario.getId()+"' , '"+usuario.getNombre()+"' ,'"+usuario.getPassword()+"', '"+usuario.getPerfil()+"', '"+usuario.getEmpresa()+"')";
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			stm.execute(sql);
			registrar = true;
			stm.close();
		}catch(SQLException e) {
			System.out.println("Error: Clase UserDao, método crearUser");
			e.printStackTrace();
		}
		
		return registrar;
	}

	@Override
	public User obtenerUsuarioByLogin(String loginusuario) {
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "select * from usuario where idusuario = '" + loginusuario + "'";
		
		User u = new User();
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);
			while (rs.next()) {
				u.setId(rs.getString(1));
				u.setNombre(rs.getString(2));
				u.setPassword(rs.getString(3));
				u.setPerfil(rs.getInt(4));
				u.setEmpresa(rs.getInt(5));

			}
			stm.close();
			rs.close();
			//con.close();
		} catch(SQLException e) {
			System.out.println("Error: Clase UsuarioDao, método obtenerUsuarioByLogin ");
			e.printStackTrace();
		}
		
		return u;
	}

	@Override
	public List<User> mostrarUser() {

		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "select idusuario, nombre, idempresa, nombreempresa, nombreperfil from usuario inner join empresa using(idempresa) inner join perfil using (idperfil) ORDER BY nombre";
		
		List<User> listaUsuarios = new ArrayList<User>();
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);
			
			while (rs.next()) {
				
				User c = new User();
				c.setId(rs.getString(1));
				c.setNombre(rs.getString(2));
				c.setEmpresa(rs.getInt(3));
				c.setNombreEmpresa(rs.getString(4));
				c.setPerfilNombre(rs.getString(5));

				listaUsuarios.add(c);
			}
			
			stm.close();
			rs.close();

		} catch(SQLException e) {
			
			System.out.println("Error: Clase UserDao, método mostrarUser ");
			e.printStackTrace();
			
		}
		
		return listaUsuarios;
	}

	@Override
	public boolean editarUser(User user) {
		// TODO Auto-generated method stub
		
		Connection con = null;
		Statement stm = null;
		
		boolean editar = false;
		
		String sql = "UPDATE usuario SET nombre = '" + user.getNombre() + "', password = '" + user.getPassword() + "', idperfil = '" + user.getPerfil() + "', '"+user.getEmpresa()+"' WHERE idusuario = '" + user.getId() + "'";
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			stm.execute(sql);
			editar = true;
			stm.close();
		}catch(SQLException e) {
			System.out.println("Error: Clase UserDao, método editarUser");
			e.printStackTrace();
		}
		
		return editar;
		
	}

	@Override
	public User obtenerId(String idusuario) {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "select * from usuario where idusuario = " + idusuario;
		
		User u = new User();
			try {
				con = ConexionSingleton.getConnection();
				stm = con.createStatement();
				rs = stm.executeQuery(sql);
				while (rs.next()) {
					u.setId(rs.getString(1));
					u.setNombre(rs.getString(2));
					u.setPassword(rs.getString(3));
					u.setPerfil(rs.getInt(4));
					u.setEmpresa(rs.getInt(5));

				}
				stm.close();
				rs.close();
			}catch(SQLException e) {
				System.out.println("Error: Clase UserDao, método obtenerId");
				e.printStackTrace();
			}
			
			return u;
		}

	@Override
	public boolean eliminarUsuario(User user) {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		
		boolean eliminar = false;
		
		String sql = "DELETE FROM usuario WHERE idusuario = " + user.getId();
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			stm.execute(sql);
			eliminar = true;
			stm.close();
		}catch(SQLException e) {
			System.out.println("Error: Clase UsuarioDao, método eliminarUsuario");
			e.printStackTrace();
		}
		
		return eliminar;
	}
	

	
	
}
