package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
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
	public Agenda obtenerPorId(String idAgenda) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean eliminar(Agenda agenda) {
		// TODO Auto-generated method stub
		return false;
	}
	
	public List<Agenda> mostrarAgendaPorProfesional(String idusuario) {
		// TODO Auto-generated method stub
		Connection con = null;
		Statement stm = null;
		ResultSet rs = null;
		
		String sql = "SELECT idvisita, idempresa, fechavisita, horavisita, nombrevisita, estatus FROM agenda INNER JOIN tipovisita USING (idtipovisita) WHERE idusuario = '"+idusuario+"'";
		
		List<Agenda> listaAgenda = new ArrayList<Agenda>();
		
		try {
			con = ConexionSingleton.getConnection();
			stm = con.createStatement();
			rs = stm.executeQuery(sql);
			
			while (rs.next()) {
				
				Agenda a = new Agenda();
				a.setIdVisita(rs.getInt(1));
				a.setRutEmpresa(rs.getInt(2));
				a.setFechaVisita(rs.getString(3));
				a.setHoraVisita(rs.getString(4));
				a.setNombreVisita(rs.getString(5));
				a.setEstatus(rs.getString(6));

				listaAgenda.add(a);
			}
			
			stm.close();
			rs.close();

		} catch(SQLException e) {
			
			System.out.println("Error: Clase AgendaDao, método mostrarAgendaPorProfesional ");
			e.printStackTrace();
			
		}
		
		return listaAgenda;
	}
	

}
