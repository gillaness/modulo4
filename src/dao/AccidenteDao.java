package dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import conexion.ConexionSingleton;
import modelo.Accidente;


public class AccidenteDao {
	
	public boolean crearRegistro(Accidente accidente) {
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
			System.out.println("Error: Clase AccidenteDao, método crearRegistro");
			e.printStackTrace();
		}
		
		return registrar;
	}

}
