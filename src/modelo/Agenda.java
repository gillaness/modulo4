package modelo;

public class Agenda {

	private int idVisita;
	private String idUsuario;
	private int rutEmpresa;
	private String fechaVisita;
	private String horaVisita;
	private int tipoVisita;
	private String estatus; 
	private String nombreVisita;
	
	public Agenda() {
	}

	public Agenda(String idUsuario, int rutEmpresa, String fechaVisita, String horaVisita, int tipoVisita, String estatus) {
		
		this.idUsuario = idUsuario;
		this.rutEmpresa = rutEmpresa;
		this.fechaVisita = fechaVisita;
		this.horaVisita = horaVisita;
		this.tipoVisita = tipoVisita;
		this.estatus = estatus;
	}
	
	public Agenda(String idUsuario, int rutEmpresa, String fechaVisita, String horaVisita, String nombreVisita, String estatus) {
		
		this.idUsuario = idUsuario;
		this.rutEmpresa = rutEmpresa;
		this.fechaVisita = fechaVisita;
		this.horaVisita = horaVisita;
		this.nombreVisita = nombreVisita;
		this.estatus = estatus;
	}
	
	

	public int getIdVisita() {
		return idVisita;
	}

	public void setIdVisita(int idVisita) {
		this.idVisita = idVisita;
	}

	public String getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(String idUsuario) {
		this.idUsuario = idUsuario;
	}

	public int getRutEmpresa() {
		return rutEmpresa;
	}

	public void setRutEmpresa(int rutEmpresa) {
		this.rutEmpresa = rutEmpresa;
	}

	public String getFechaVisita() {
		return fechaVisita;
	}

	public void setFechaVisita(String fechaVisita) {
		this.fechaVisita = fechaVisita;
	}

	public String getHoraVisita() {
		return horaVisita;
	}

	public void setHoraVisita(String horaVisita) {
		this.horaVisita = horaVisita;
	}

	public int getTipoVisita() {
		return tipoVisita;
	}

	public void setTipoVisita(int tipoVisita) {
		this.tipoVisita = tipoVisita;
	}

	public String getEstatus() {
		return estatus;
	}

	public void setEstatus(String estatus) {
		this.estatus = estatus;
	}
	
	public String getNombreVisita() {
		return nombreVisita;
	}

	public void setNombreVisita(String nombreVisita) {
		this.nombreVisita = nombreVisita;
	}

	@Override
	public String toString() {
		return "Agenda [idVisita=" + idVisita + ", idUsuario=" + idUsuario + ", rutEmpresa=" + rutEmpresa
				+ ", fechaVisita=" + fechaVisita + ", horaVisita=" + horaVisita + ", tipoVisita=" + tipoVisita
				+ ", estatus=" + estatus + ", nombreVisita=" + nombreVisita + "]";
	}

}

