package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Talla;
import model.TallaDao;

/**
 * Servlet implementation class proveedorServlet
 */
@WebServlet("/tallaServlet")
public class tallaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public tallaServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		int id_c=Integer.parseInt(id);
		Talla prov = new Talla();
		Talla provaux = new Talla();
		prov.setId(id_c);
		TallaDao pDao = new TallaDao();
		if(pDao.existe(prov)) {
			provaux=pDao.find(id_c);
			response.getWriter().append(provaux.getId()+"_"+provaux.getNombreTalla()+"_"+provaux.getDescripcion());
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
		
		
		Talla proveedor = new Talla();
		
		
		proveedor.setNombreTalla(nombre);
		proveedor.setDescripcion(descripcion);
		System.out.println(id+"id_talla");
		if(id!=null) {
			id_c=Integer.parseInt(id);
			proveedor.setId(id_c);
			}
		
		
		TallaDao pDao = new TallaDao();
		
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
