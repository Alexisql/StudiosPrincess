package util;

import entities.Categoria;
import entities.Marca;
import entities.Referencia;
import entities.Talla;
import model.CategoriaDao;
import model.MarcaDao;
import model.ReferenciaDao;
import model.TallaDao;

public class Prueba {
	public static void main(String[] args) {
		
		Categoria c = new Categoria();
		CategoriaDao cDao = new CategoriaDao();
		c.setNombreCategoria("Hombre");
		c.setDescripcionCategoria("Ropa para Hombre");
		cDao.insert(c);
		/*
		EstudianteDao eDao = new EstudianteDao();
		Estudiante e = new Estudiante();
		e.setCodigo("1151232");
		e.setCargo("Estudiente");
		e.setCorreo("miguel@gmail.com");
		e.setNombre("Miguel");
		e.setRol("Diseñador");
		e.setTelefono("3122346785");
		e.setAdministrador(aDao.find("1151230"));
	
		eDao.update(e);*/
		/*
		EntityManagerFactory emf =
		Persistence.createEntityManagerFactory("mensajemodel");
		EntityManager em = emf.createEntityManager();
		try {
			em.getTransaction().begin();
			em.persist(c);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			em.close();
		}
*/
 /*
		// imprimir los clientes
		System.out.println("*****");
		clienteDao.obtenerClientes().forEach(System.out::println);
		*/
	}
}
