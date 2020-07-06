package modelo;

public class User {
	
	private String id;
	private String nombre;
	private String password;
	private int perfil;
	
	public User() {
		this.id="";
	}
	
	public User(String id, String nombre, String password, int perfil) {
		this.id = id;
		this.nombre = nombre;
		this.password = password;
		this.perfil = perfil;
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

	@Override
	public String toString() {
		return "User [id=" + id + ", nombre=" + nombre + ", password=" + password + ", perfil=" + perfil + "]";
	}
	

}
