package idao;

import java.util.List;

import modelo.Empresa;

public interface IEmpresaDao {
	
	public boolean crearEmpresa(Empresa empresa);
	public List<Empresa> mostrarEmpresa();
	public boolean editarEmpresa(Empresa empresa);
	public Empresa obtenerRut(String rutEmpresa);
	public boolean eliminarEmpresa(Empresa empresa);

}
