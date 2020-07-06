package idao;

import java.util.List;

import modelo.Agenda;

public interface IAgendaDao {
	
	public boolean crearAgenda(Agenda agenda);
	public List<Agenda> mostrarAgenda();
	public boolean editarAgenda();
	public Agenda obtenerId(int idAgenda);
	public boolean eliminarAgenda(Agenda agenda);

}
