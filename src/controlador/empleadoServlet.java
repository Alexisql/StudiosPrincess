package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Categoria;
import entities.Cliente;
import entities.Empleado;
import entities.Rol;
import model.CategoriaDao;
import model.ClienteDao;
import model.EmpleadoDao;
import model.GenericDao;
import model.RolDao;

/**
 * Servlet implementation class empleadoServlet
 */
@WebServlet("/empleadoServlet")
public class empleadoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public empleadoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String telefono = request.getParameter("telefono");
		String documento = request.getParameter("documento");
		
		String r = request.getParameter("rol");
		GenericDao<Rol> rDao = new RolDao();
		Rol rol = rDao.find(Integer.parseInt(r));

		Empleado empleado = new Empleado();
		
		empleado.setNombre(nombre);
		empleado.setApellido(apellido);
		empleado.setTelefono(telefono);
		empleado.setDocumento(documento);
		empleado.setRol(rol);
		
		EmpleadoDao eDao = new EmpleadoDao();
		boolean existe = eDao.existe(empleado);
		if(!existe) {
			eDao.insert(empleado);
		}else {
			eDao.update(empleado);
		}

		request.setAttribute("msgResultado", "El estudiante ha sido creado correctamente"); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
		response.sendRedirect("Admin.jsp");	
		
		
	}

}
