package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entities.Categoria;
import entities.Marca;
import entities.Producto;
import entities.Proveedor;
import entities.Referencia;
import entities.Talla;
import model.ProductoDao;
import model.ProveedorDao;
import model.ReferenciaDao;
import model.TallaDao;
import model.CategoriaDao;
import model.GenericDao;
import model.MarcaDao;

/**
 * Servlet implementation class proveedorServlet
 */
@WebServlet("/productoServlet")
public class productoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public productoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		int id_p=Integer.parseInt(id);
		Producto prov = new Producto();
		Producto provaux = new Producto();
		prov.setId(id_p);
		ProductoDao pDao = new ProductoDao();
		if(pDao.existe(prov)) {
			provaux=pDao.find(id_p);
			response.getWriter().append(provaux.getId()+"_"+provaux.getNombreProducto()+"_"+provaux.getDescripcionProducto()+"_"+
					provaux.getColor()+"_"+provaux.getStock()+"_"+provaux.getTalla().getId()+"_"+provaux.getImagen()+"_"+provaux.getPrecio()+"_"+provaux.getEstado()+"_"+provaux.getCategoria()+"_"+provaux.getMarca()+"_"+provaux.getReferencia());
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
String id = request.getParameter("id");
		
		int id_c=-1;
		String nombre = request.getParameter("nombre");
		String descripcion =  request.getParameter("descripcion");
		String color =  request.getParameter("color");
		String stock = request.getParameter("stock");
		String talla = request.getParameter("talla");
		GenericDao<Talla> dDao = new TallaDao();
		Talla d = dDao.find(Integer.parseInt(talla));
		String imagen = request.getParameter("imagen");
		String precio = request.getParameter("precio");
		String estado = request.getParameter("estado");
		String categoria = request.getParameter("categoria");
		GenericDao<Categoria> cDao = new CategoriaDao();
		Categoria c =cDao.find(Integer.parseInt(categoria));
		String marca = request.getParameter("marca");
		GenericDao<Marca> mDao = new MarcaDao();
		Marca m = mDao.find(Integer.parseInt(marca));
		String referencia = request.getParameter("referencia");
		GenericDao<Referencia> rDao = new ReferenciaDao();
		Referencia r = rDao.find(Integer.parseInt(referencia));
		
		
		Producto proveedor = new Producto();
		
		if(id!=null) {
			id_c=Integer.parseInt(id);
			proveedor.setId(id_c);
			}
		
		proveedor.setNombreProducto(nombre);
		proveedor.setDescripcionProducto(descripcion);
		proveedor.setColor(color);
		proveedor.setStock(Integer.parseInt(stock));
		proveedor.setTalla(d);
		proveedor.setImagen(imagen);
		proveedor.setPrecio(Float.parseFloat(precio));
		proveedor.setEstado(estado);
		proveedor.setCategoria(c);
		proveedor.setMarca(m);
		proveedor.setReferencia(r);
		proveedor.setImagen("aaaa");
		
		
		
		
		
		
		ProductoDao pDao = new ProductoDao();
		
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
