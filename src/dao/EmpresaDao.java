package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import conexion.ConexionSingleton;
import idao.IEmpresaDao;
import modelo.Empresa;

public class EmpresaDao implements IEmpresaDao {

	@Override
	public boolean crearEmpresa(Empresa empresa) {
		// TODO Auto-generated method stub
		boolean crear = false;
		
		Statement stm = null;
		Connection con = null;
		
		String sql = "INSERT INTO empresa VALUES ('"+empresa.getRutEmpresa()+"', '"+empresa.getNombreEmpresa()+"', '"+empresa.getDireccion()+"', '"+empresa.getContacto()+"', '"+empresa.getTelefono()+"', '"+empresa.getMailContacto()+"')";
	
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			stm.execute(sql);
			crear = true;
			stm.close();
		}catch(SQLException e) {
			System.out.println("Error: Clase UserDao, método crearUser");
			e.printStackTrace();
		}
		
		return crear;
	
	}

	@Override
	public List<Empresa> mostrarEmpresa() {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "select * from empresa ORDER BY idempresa";
		
		List<Empresa> listaEmpresas = new ArrayList<Empresa>();
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);
			
			while (rs.next()) {
				
				Empresa c = new Empresa();
				c.setRutEmpresa(rs.getString(1));
				c.setNombreEmpresa(rs.getString(2));
				c.setDireccion(rs.getString(3));
				c.setContacto(rs.getString(4));
				c.setTelefono(rs.getString(5));
				c.setMailContacto(rs.getString(6));

				listaEmpresas.add(c);
			}
			
			stm.close();
			rs.close();

		} catch(SQLException e) {
			
			System.out.println("Error: Clase UserDao, método mostrarUser ");
			e.printStackTrace();
			
		}
		
		return listaEmpresas;
	}

	@Override
	public boolean editarEmpresa(Empresa empresa) {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		
		boolean editar = false;
		
		String sql = "UPDATE empresa SET nombreempresa = '" + empresa.getNombreEmpresa() + "', direccion = '" + empresa.getDireccion() + "', contacto = '" + empresa.getContacto() + "', telefono = '"+empresa.getTelefono()+"', mailcontacto = '"+empresa.getMailContacto()+"' WHERE idempresa = '" + empresa.getRutEmpresa() + "'";
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			stm.execute(sql);
			editar = true;
			stm.close();
		}catch(SQLException e) {
			System.out.println("Error: Clase EmpresaDao, método editarEmpresa");
			e.printStackTrace();
		}
		
		return editar;
	}

	@Override
	public Empresa obtenerRut(String rutEmpresa) {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "select * from empresa where idempresa = " + rutEmpresa;
		
		Empresa em = new Empresa();
			try {
				con = ConexionSingleton.getConnection();
				stm = con.createStatement();
				rs = stm.executeQuery(sql);
				while (rs.next()) {
					em.setRutEmpresa(rs.getString(1));
					em.setNombreEmpresa(rs.getString(2));
					em.setDireccion(rs.getString(3));
					em.setContacto(rs.getString(4));
					em.setTelefono(rs.getString(5));
					em.setMailContacto(rs.getString(6));

				}
				stm.close();
				rs.close();
			}catch(SQLException e) {
				System.out.println("Error: Clase EmpresaDao, método obtenerRut");
				e.printStackTrace();
			}
			
			return em;
	}

	@Override
	public boolean eliminarEmpresa(Empresa empresa) {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		
		boolean eliminar = false;
		
		String sql = "DELETE FROM empresa WHERE idempresa = " + empresa.getRutEmpresa();
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			stm.execute(sql);
			eliminar = true;
			stm.close();
		}catch(SQLException e) {
			System.out.println("Error: Clase EmpresaDao, método eliminarEmpresa");
			e.printStackTrace();
		}
		
		return eliminar;
	}
	

}
