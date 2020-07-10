package dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import conexion.ConexionSingleton;
import idao.IDao;
import modelo.Accidente;


public class AccidenteDao implements IDao<Accidente> {
	
	@Override
	public boolean crear(Accidente accidente) {
		// TODO Auto-generated method stub
		boolean registrar = false;
		
		Statement stm = null;
		Connection con = null;
		
		String sql = "INSERT INTO registroaccidente VALUES (null, '"+accidente.getDescripcionAccidente()+"' , '"+accidente.getFechaAccidente()+"' ,'"+accidente.getHoraAccidente()+"', '"+accidente.getAreaAccidente()+"', '"+accidente.getIdTipoAccidente()+"', '"+accidente.getIdUsario()+"', '"+accidente.getIdEmpresa()+"', '"+accidente.getNombreAccidentado()+"')";
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			stm.execute(sql);
			registrar = true;
			stm.close();
		}catch(SQLException e) {
			System.out.println("Error: Clase AccidenteDao, método crear");
			e.printStackTrace();
		}
		
		return registrar;
	}

	@Override
	public List<Accidente> mostrar() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean editar(Accidente objeto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Accidente obtenerPorId(String rut) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean eliminar(Accidente objeto) {
		// TODO Auto-generated method stub
		return false;
	}

}
