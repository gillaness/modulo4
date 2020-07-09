package idao;

import java.util.List;



public interface IDao<Objeto> {

	public boolean crear(Objeto objeto);
	public List<Objeto> mostrar();
	public boolean editar(Objeto objeto);
	public Objeto obtenerId(String rut);
	public boolean eliminar(Objeto objeto);
	
}