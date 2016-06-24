package controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.Arma;
import bo.ArmaBO;

@WebServlet(value = "/jpa/CadastroAluno")
public class CadastroArmaControll extends HttpServlet {

  protected void service(
      HttpServletRequest req,
      HttpServletResponse resp)
      throws ServletException, IOException {

    String paramID = req.getParameter("armaID");
    String ID = paramID == null ? "" : paramID;
    
    String paramFabricante = req.getParameter("fabricante");
    String Fabricante = paramFabricante == null ? "" : paramFabricante;

    String paramModelo = req.getParameter("modelo");
    String Modelo = paramModelo == null ? "" : paramModelo;
    
    String paramCalibre = req.getParameter("calibre");
    String calibre = paramCalibre == null ? "" : paramCalibre;

    String paramTipo = req.getParameter("tipo");
    String tipo = paramTipo == null ? "" : paramTipo;

    Arma arma = new Arma();
    arma.setArmaID(ID);
    arma.setFabricante(Fabricante);
    arma.setModelo(Modelo);
    arma.setCalibre(calibre);
    arma.setTipo(tipo);
    
    String paramCpfMae = req.getParameter("cpfMae");
    String cpfMae = paramCpfMae == null ? "" : paramCpfMae;
    
    String paramNomeMae = req.getParameter("nomeMae");
    String nomeMae = paramNomeMae == null ? "" : paramNomeMae;

    String paramCpfPai = req.getParameter("cpfPai");
    String cpfPai = paramCpfPai == null ? "" : paramCpfPai;
    
    String paramNomePai = req.getParameter("nomePai");
    String nomePai = paramNomePai == null ? "" : paramNomePai;

    ArmaBO armaBo = new ArmaBO();
    armaBo.incluir(arma);

    req.setAttribute("arma", arma); //Passando um objeto para o JSP.

    List<Arma> armas = armaBo.listar();

    req.setAttribute("armas", armas); //Passando uma coleção para o JSP.
    
    //Chamar o JSP apenas para mostrar o resultado.
    req.getRequestDispatcher("cadastroArma.jsp").forward(req, resp);
  }

}
