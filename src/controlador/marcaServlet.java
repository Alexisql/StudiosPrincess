package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Marca;
import model.MarcaDao;

/**
 * Servlet implementation class proveedorServlet
 */
@WebServlet("/marcaServlet")
public class marcaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public marcaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		int id_c=Integer.parseInt(id);
		Marca prov = new Marca();
		Marca provaux = new Marca();
		prov.setId(id_c);
		MarcaDao pDao = new MarcaDao();
		if(pDao.existe(prov)) {
			provaux=pDao.find(id_c);
			response.getWriter().append(provaux.getId()+"_"+provaux.getNombreMarca()+"_"+provaux.getDescripcionMarca());
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
		
		
		Marca proveedor = new Marca();
		
		
		proveedor.setNombreMarca(nombre);
		proveedor.setDescripcionMarca(descripcion);
		System.out.println(id+"id_marca");
		if(id!=null) {
			id_c=Integer.parseInt(id);
			proveedor.setId(id_c);
			}
		
		
		MarcaDao pDao = new MarcaDao();
		
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
