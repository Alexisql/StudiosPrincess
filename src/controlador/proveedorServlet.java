package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Proveedor;
import model.ProveedorDao;

/**
 * Servlet implementation class proveedorServlet
 */
@WebServlet("/proveedorServlet")
public class proveedorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public proveedorServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nit = request.getParameter("nit");
		Proveedor prov = new Proveedor();
		Proveedor provaux = new Proveedor();
		prov.setNit(nit);
		ProveedorDao pDao = new ProveedorDao();
		if(pDao.existe(prov)) {
			provaux=pDao.find(nit);
			response.getWriter().append(provaux.getNit()+"_"+provaux.getNombreContacto()+"_"+provaux.getNombreProv()+"_"+
					provaux.getDireccionProv()+"_"+provaux.getEmailProv()+"_"+provaux.getTelefonoContacto());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String nit = request.getParameter("nit");
		String nombreProv = request.getParameter("nombreProv");
		String email =  request.getParameter("email");
		String nombreContacto =  request.getParameter("nombreContacto");
		String direccion = request.getParameter("direccion");
		String telefono = request.getParameter("telefono");
		
		Proveedor proveedor = new Proveedor();
		
		proveedor.setNit(nit);
		proveedor.setNombreProv(nombreProv);
		proveedor.setEmailProv(email);
		proveedor.setNombreContacto(nombreContacto);
		proveedor.setDireccionProv(direccion);
		proveedor.setTelefonoContacto(telefono);
		
		
		ProveedorDao pDao = new ProveedorDao();
		
		boolean existe = pDao.existe(proveedor);
		if(!existe) {
			pDao.insert(proveedor);
		}else {
			pDao.update(proveedor);
		}
		
		request.setAttribute("msgResultado", "El estudiante ha sido creado correctamente"); //with setAttribute() you can define a "key" and value pair so that you can get it in future using getAttribute("key")
		response.sendRedirect("Admin.jsp");	
	}

}
