package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Referencia;
import model.ReferenciaDao;

/**
 * Servlet implementation class proveedorServlet
 */
@WebServlet("/referenciaServlet")
public class referenciaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public referenciaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		int id_c=Integer.parseInt(id);
		Referencia prov = new Referencia();
		Referencia provaux = new Referencia();
		prov.setId(id_c);
		ReferenciaDao pDao = new ReferenciaDao();
		if(pDao.existe(prov)) {
			provaux=pDao.find(id_c);
			response.getWriter().append(provaux.getId()+"_"+provaux.getNombreRef()+"_"+provaux.getDescripcionRef());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		int id_c=-1;
		
		
		System.out.println(id_c+"");
        
		String nombre = request.getParameter("nombre");
		String descripcion =  request.getParameter("descripcion");
		
		
		Referencia proveedor = new Referencia();
		
		
		proveedor.setNombreRef(nombre);
		proveedor.setDescripcionRef(descripcion);
		System.out.println(id+"id_referencia");
		if(id!=null) {
			id_c=Integer.parseInt(id);
			proveedor.setId(id_c);
			}
		
		
		ReferenciaDao pDao = new ReferenciaDao();
		
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
