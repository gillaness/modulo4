package dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import conexion.ConexionSingleton;
import idao.IAgendaDao;
import modelo.Agenda;

public class AgendaDao implements IAgendaDao {

	@Override
	public boolean crearAgenda(Agenda agenda) {
		// TODO Auto-generated method stub
		boolean crear = false;
		
		Statement stm = null;
		Connection con = null;
		
		String sql = "INSERT INTO agenda VALUES (null, '"+agenda.getIdUsuario()+"', '"+agenda.getRutEmpresa()+"', '"+agenda.getFechaVisita()+"', '"+agenda.getHoraVisita()+"', '"+agenda.getTipoVisita()+"')";
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			stm.execute(sql);
			crear = true;
			stm.close();
		}catch(SQLException e) {
			System.out.println("Error: Clase AgendaDao, método crearAgenda");
			e.printStackTrace();
		}
		
		return crear;
		
	}

	@Override
	public List<Agenda> mostrarAgenda() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean editarAgenda() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Agenda obtenerId(int idAgenda) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean eliminarAgenda(Agenda agenda) {
		// TODO Auto-generated method stub
		return false;
	}

}
