package controlador;

import java.io.IOException;
import java.security.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entities.Cliente;
import entities.Usuario;
import model.ClienteDao;

/**
 * Servlet implementation class clienteServlet
 */
@WebServlet("/clienteServlet")
public class clienteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public clienteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String documento = request.getParameter("documento");
		Cliente cl = new Cliente();
		Cliente claux = new Cliente();
		cl.setDocumento(documento);
		ClienteDao cDao = new ClienteDao();
		if(cDao.existe(cl)) {
			claux=cDao.find(documento);
			response.getWriter().append(claux.getDocumento()+"_"+claux.getNombre()+"_"+claux.getApellido()+"_"+claux.getTipodocumento()
			+"_"+claux.getDireccion()+"_"+claux.getGenero()+"_"+claux.getTelefono());
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String direccion = request.getParameter("direccion");
		String telefono = request.getParameter("telefono");
		String documento = request.getParameter("documento");
		String tipodocumento =  request.getParameter("tipodoc");
		String genero = request.getParameter("genero");

		Cliente cliente = new Cliente();
		
		cliente.setNombre(nombre);
		cliente.setApellido(apellido);
		cliente.setDireccion(direccion);
		cliente.setTelefono(telefono);
		cliente.setDocumento(documento);
		cliente.setTipodocumento(tipodocumento);
		cliente.setGenero(genero);
		
		ClienteDao cDao = new ClienteDao();
		boolean existe = cDao.existe(cliente);
		if(!existe) {
			cDao.insert(cliente);
		}else {
			cDao.update(cliente);
		}
		
		request.setAttribute("msgResultado", "El estudiante ha sido creado correctamente"); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
		response.sendRedirect("Admin.jsp");	
		
		
		
		
	}

}
