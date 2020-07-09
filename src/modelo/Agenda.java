package modelo;

public class Agenda {

	private int idVisita;
	private String idUsuario;
	private int rutEmpresa;
	private String fechaVisita;
	private String horaVisita;
	private int tipoVisita;
	
	public Agenda() {
	}

	public Agenda(int idVisita, String idUsuario, int rutEmpresa, String fechaVisita, String horaVisita, int tipoVisita) {
		this.idVisita = idVisita;
		this.idUsuario = idUsuario;
		this.rutEmpresa = rutEmpresa;
		this.fechaVisita = fechaVisita;
		this.horaVisita = horaVisita;
		this.tipoVisita = tipoVisita;
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

	@Override
	public String toString() {
		return "Agenda [idVisita=" + idVisita + ", idUsuario=" + idUsuario + ", rutEmpresa=" + rutEmpresa
				+ ", fechaVisita=" + fechaVisita + ", horaVisita=" + horaVisita + ", tipoVisita=" + tipoVisita + "]";
	}
	
	
}

