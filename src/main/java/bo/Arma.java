package bo;

public class Arma {
	private static int armaID;
	private String fabricante;
	private String modelo;
	private String calibre;

	public static int getArmaID() {
		return armaID;
	}

	public static void setArmaID(int armaID) {
		Arma.armaID = armaID;
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

}
