package modelo;

import java.sql.Date;

public class Agenda {

	private int idVisita;
	private String idUsuario;
	private int rutEmpresa;
	private Date fechaVisita;
	private Date horaVisita;
	private int tipoVisita;
	
	public Agenda() {
	}

	public Agenda(int idVisita, String idUsuario, int rutEmpresa, Date fechaVisita, Date horaVisita, int tipoVisita) {
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

	public Date getFechaVisita() {
		return fechaVisita;
	}

	public void setFechaVisita(Date fechaVisita) {
		this.fechaVisita = fechaVisita;
	}

	public Date getHoraVisita() {
		return horaVisita;
	}

	public void setHoraVisita(Date horaVisita) {
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


