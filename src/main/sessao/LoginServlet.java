package sessao;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(value = "/sessao/login")
public class LoginServlet extends HttpServlet {

  protected void service(
      HttpServletRequest req,
      HttpServletResponse resp)
      throws ServletException, IOException {

    //Referência para a sessão.
    HttpSession sessao = req.getSession();

    String usuario = req.getParameter("user");
    String senha = req.getParameter("password");
    //Usuário válido.
    if (usuario != null && usuario.equals("admin")
        && senha!= null && senha.equals("admin")) {
      sessao.setAttribute("usuarioLogado", true);
      resp.sendRedirect("index");
    } else {
      sessao.setAttribute("usuarioLogado", false);
      req.getRequestDispatcher("login.jsp").forward(req, resp);
    }
  }

}

