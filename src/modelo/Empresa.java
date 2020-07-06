package modelo;

public class Empresa {

	private String rutEmpresa;
	private String nombreEmpresa;
	private String direccion;
	private String contacto;
	private String telefono;
	private String mailContacto;
	
	public Empresa() {
		this.rutEmpresa="";
	}

	public Empresa(String rutEmpresa, String nombreEmpresa, String direccion, String contacto, String telefono,
			String mailContacto) {
		this.rutEmpresa = rutEmpresa;
		this.nombreEmpresa = nombreEmpresa;
		this.direccion = direccion;
		this.contacto = contacto;
		this.telefono = telefono;
		this.mailContacto = mailContacto;
	}

	public String getRutEmpresa() {
		return rutEmpresa;
	}

	public void setRutEmpresa(String rutEmpresa) {
		this.rutEmpresa = rutEmpresa;
	}

	public String getNombreEmpresa() {
		return nombreEmpresa;
	}

	public void setNombreEmpresa(String nombreEmpresa) {
		this.nombreEmpresa = nombreEmpresa;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public String getContacto() {
		return contacto;
	}

	public void setContacto(String contacto) {
		this.contacto = contacto;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getMailContacto() {
		return mailContacto;
	}

	public void setMailContacto(String mailContacto) {
		this.mailContacto = mailContacto;
	}

	@Override
	public String toString() {
		return "Empresa [rutEmpresa=" + rutEmpresa + ", nombreEmpresa=" + nombreEmpresa + ", direccion=" + direccion
				+ ", contacto=" + contacto + ", telefono=" + telefono + ", mailContacto=" + mailContacto + "]";
	}
	
	
	
}
