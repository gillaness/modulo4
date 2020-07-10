package dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import conexion.ConexionSingleton;
import idao.IDao;
import modelo.Agenda;

public class AgendaDao implements IDao<Agenda>{

	@Override
	public boolean crear(Agenda agenda) {
		// TODO Auto-generated method stub
		boolean crear = false;
		Statement stm = null;
		Connection con = null;
		
		String sql = "INSERT INTO agenda VALUES (null, '"+agenda.getRutEmpresa()+"', '"+agenda.getFechaVisita()+"', '"+agenda.getHoraVisita()+"', '"+agenda.getTipoVisita()+"', '"+agenda.getIdUsuario()+"', '"+agenda.getEstatus()+"')";
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			stm.execute(sql);
			crear = true;
			stm.close();
		}catch(SQLException e) {
			System.out.println("Error: Clase AgendaDao, método crear");
			e.printStackTrace();
		}
		
		return crear;
	}

	@Override
	public List<Agenda> mostrar() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean editar(Agenda agenda) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Agenda obtenerId(String idAgenda) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean eliminar(Agenda agenda) {
		// TODO Auto-generated method stub
		return false;
	}

}
