package bo;

import java.util.List;

import dao.ArmaDAO;

//Business Object.
public class ArmaBO {

	ArmaDAO armaDao;

	public void ArmaBo() {
		armaDao = new ArmaDAO();
	}

	public void incluir(Arma arma) {
		if (!arma.getArmaID().equals("")) {
			armaDao.gravar(arma);
		}
	}

	public List<Arma> listar() {
		return armaDao.listar();
	}

}
