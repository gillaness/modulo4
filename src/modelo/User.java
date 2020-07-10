package modelo;

public class User {
	
	private String id;
	private String nombre;
	private String password;
	private int perfil;
	private int empresa;
	private String nombreEmpresa;
	private String perfilNombre;
	
	public User() {
		this.id="";
	}
	
	public User(String id, String nombre, String password, int perfil, int empresa) {
		this.id = id;
		this.nombre = nombre;
		this.password = password;
		this.perfil = perfil;
		this.empresa = empresa;
	}
	
	/*Este constructor sirve para realizar JOIN con las tablas Empresa y Perfil en las Base de Datos*/
	
	public User(String id, String nombre, int empresa, String nombreEmpresa, String perfilNombre) {
		this.id = id;
		this.nombre = nombre;
		this.empresa = empresa;
		this.nombreEmpresa = nombreEmpresa;
		this.perfilNombre = perfilNombre;
	}
	
	/*Este constructor sirve para modificar datos del usuario, excepto el Password*/
	
	public User(String id, String nombre, int perfil, int empresa) {
		this.id = id;
		this.nombre = nombre;
		this.perfil = perfil;
		this.empresa = empresa;
	}
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getPerfil() {
		return perfil;
	}

	public void setPerfil(int perfil) {
		this.perfil = perfil;
	}

	public int getEmpresa() {
		return empresa;
	}

	public void setEmpresa(int empresa) {
		this.empresa = empresa;
	}

	public String getNombreEmpresa() {
		return nombreEmpresa;
	}

	public void setNombreEmpresa(String nombreEmpresa) {
		this.nombreEmpresa = nombreEmpresa;
	}

	public String getPerfilNombre() {
		return perfilNombre;
	}

	public void setPerfilNombre(String perfilNombre) {
		this.perfilNombre = perfilNombre;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", nombre=" + nombre + ", password=" + password + ", perfil=" + perfil + ", empresa="
				+ empresa + "]";
	}

	

	
	

}
