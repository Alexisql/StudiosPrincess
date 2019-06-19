package entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the producto_prueba database table.
 * 
 */
@Entity
@Table(name="producto_prueba")
@NamedQuery(name="ProductoPrueba.findAll", query="SELECT p FROM ProductoPrueba p")
public class ProductoPrueba implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String imagen;

	public ProductoPrueba() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getImagen() {
		return this.imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

}