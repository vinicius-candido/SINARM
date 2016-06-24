package bo;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Arma {
	@Id
	private String armaID;
	private String fabricante;
	private String modelo;
	private String calibre;
	private String tipo;
	@OneToOne(cascade=CascadeType.MERGE)
	private Registro reg; 

	public String getArmaID() {
		return armaID;
	}

	public void setArmaID(String armaID) {
		this.armaID = armaID;
	}

	public String getFabricante() {
		return fabricante;
	}

	public void setFabricante(String fabricante) {
		this.fabricante = fabricante;
	}

	public String getModelo() {
		return modelo;
	}

	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getCalibre() {
		return calibre;
	}

	public void setCalibre(String calibre) {
		this.calibre = calibre;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public Registro getReg() {
		return reg;
	}

	public void setReg(Registro reg) {
		this.reg = reg;
	}

}
