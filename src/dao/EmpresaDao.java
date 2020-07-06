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
		return false;
	}

	@Override
	public Empresa obtenerRut(String rutEmpresa) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean eliminarEmpresa(Empresa empresa) {
		// TODO Auto-generated method stub
		return false;
	}

}
