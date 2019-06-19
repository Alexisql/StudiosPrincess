package controlador;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.Usuario;
import model.UsuarioDao;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sesion = request.getSession();
		sesion.invalidate();
        response.sendRedirect("index.jsp");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession(true);
		
		String correo = request.getParameter("username");
		String clave = request.getParameter("password");
		 
		Usuario usu = new Usuario(); 
		 
		usu.setNombre(correo);
		usu.setClave(clave);
		 
		UsuarioDao uDao = new UsuarioDao();
		String userValidate = uDao.validarUser(usu);
		
		if(userValidate.contentEquals("SUCCESS")) {
			session.setAttribute("admin", correo);
			response.sendRedirect("Admin.jsp");
			
		} else { 
			session.setAttribute("error", userValidate);
			response.sendRedirect("index.jsp");
		}
	}
}
