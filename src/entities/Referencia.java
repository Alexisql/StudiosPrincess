package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the referencia database table.
 * 
 */
@Entity
@NamedQuery(name="Referencia.findAll", query="SELECT r FROM Referencia r")
public class Referencia implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	@Column(name="descripcion_ref")
	private String descripcionRef;

	@Column(name="nombre_ref")
	private String nombreRef;

	//bi-directional many-to-one association to Producto
	@OneToMany(mappedBy="referencia")
	private List<Producto> productos;

	public Referencia() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescripcionRef() {
		return this.descripcionRef;
	}

	public void setDescripcionRef(String descripcionRef) {
		this.descripcionRef = descripcionRef;
	}

	public String getNombreRef() {
		return this.nombreRef;
	}

	public void setNombreRef(String nombreRef) {
		this.nombreRef = nombreRef;
	}

	public List<Producto> getProductos() {
		return this.productos;
	}

	public void setProductos(List<Producto> productos) {
		this.productos = productos;
	}

	public Producto addProducto(Producto producto) {
		getProductos().add(producto);
		producto.setReferencia(this);

		return producto;
	}

	public Producto removeProducto(Producto producto) {
		getProductos().remove(producto);
		producto.setReferencia(null);

		return producto;
	}

}