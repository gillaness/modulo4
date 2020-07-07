package modelo;

public class Accidente {
	

	private String descripcionAccidente;
	private String fechaAccidente;
	private String horaAccidente;
	private String areaAccidente;
	private int idTipoAccidente;
	private String idUsario;
	private int idEmpresa;
	private String nombreAccidentado;
	
	public Accidente() {
	}

	public Accidente(String descripcionAccidente, String fechaAccidente, String horaAccidente,
			String areaAccidente, int idTipoAccidente, String idUsario, int idEmpresa, String nombreAccidentado) {

		this.descripcionAccidente = descripcionAccidente;
		this.fechaAccidente = fechaAccidente;
		this.horaAccidente = horaAccidente;
		this.areaAccidente = areaAccidente;
		this.idTipoAccidente = idTipoAccidente;
		this.idUsario = idUsario;
		this.idEmpresa = idEmpresa;
		this.nombreAccidentado = nombreAccidentado;
	}

	public String getDescripcionAccidente() {
		return descripcionAccidente;
	}

	public void setDescripcionAccidente(String descripcionAccidente) {
		this.descripcionAccidente = descripcionAccidente;
	}

	public String getFechaAccidente() {
		return fechaAccidente;
	}

	public void setFechaAccidente(String fechaAccidente) {
		this.fechaAccidente = fechaAccidente;
	}

	public String getHoraAccidente() {
		return horaAccidente;
	}

	public void setHoraAccidente(String horaAccidente) {
		this.horaAccidente = horaAccidente;
	}

	public String getAreaAccidente() {
		return areaAccidente;
	}

	public void setAreaAccidente(String areaAccidente) {
		this.areaAccidente = areaAccidente;
	}

	public int getIdTipoAccidente() {
		return idTipoAccidente;
	}

	public void setIdTipoAccidente(int idTipoAccidente) {
		this.idTipoAccidente = idTipoAccidente;
	}

	public String getIdUsario() {
		return idUsario;
	}

	public void setIdUsario(String idUsario) {
		this.idUsario = idUsario;
	}

	public int getIdEmpresa() {
		return idEmpresa;
	}

	public void setIdEmpresa(int idEmpresa) {
		this.idEmpresa = idEmpresa;
	}
	

	public String getNombreAccidentado() {
		return nombreAccidentado;
	}

	public void setNombreAccidentado(String nombreAccidentado) {
		this.nombreAccidentado = nombreAccidentado;
	}

	@Override
	public String toString() {
		return "Accidente [descripcionAccidente=" + descripcionAccidente
				+ ", fechaAccidente=" + fechaAccidente + ", horaAccidente=" + horaAccidente + ", areaAccidente="
				+ areaAccidente + ", idTipoAccidente=" + idTipoAccidente + ", idUsario=" + idUsario + ", idEmpresa="
				+ idEmpresa + ", nombreAccidentado=" + nombreAccidentado + "]";
	}

	

}
