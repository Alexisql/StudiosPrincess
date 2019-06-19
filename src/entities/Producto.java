package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the producto database table.
 * 
 */
@Entity
@NamedQuery(name="Producto.findAll", query="SELECT p FROM Producto p")
public class Producto implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private String color;

	@Column(name="descripcion_producto")
	private String descripcionProducto;

	private String estado;

	private String imagen;

	@Column(name="nombre_producto")
	private String nombreProducto;

	private float precio;

	private int stock;

	//bi-directional many-to-one association to Categoria
	@ManyToOne
	@JoinColumn(name="id_categoria")
	private Categoria categoria;

	//bi-directional many-to-one association to Marca
	@ManyToOne
	@JoinColumn(name="id_marca")
	private Marca marca;

	//bi-directional many-to-one association to Referencia
	@ManyToOne
	@JoinColumn(name="id_referencia")
	private Referencia referencia;

	//bi-directional many-to-one association to Talla
	@ManyToOne
	@JoinColumn(name="id_talla")
	private Talla talla;

	//bi-directional many-to-one association to ProductosCompra
	@OneToMany(mappedBy="producto")
	private List<ProductosCompra> productosCompras;

	//bi-directional many-to-one association to ProductosVenta
	@OneToMany(mappedBy="producto")
	private List<ProductosVenta> productosVentas;

	public Producto() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getColor() {
		return this.color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getDescripcionProducto() {
		return this.descripcionProducto;
	}

	public void setDescripcionProducto(String descripcionProducto) {
		this.descripcionProducto = descripcionProducto;
	}

	public String getEstado() {
		return this.estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
	}

	public String getImagen() {
		return this.imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public String getNombreProducto() {
		return this.nombreProducto;
	}

	public void setNombreProducto(String nombreProducto) {
		this.nombreProducto = nombreProducto;
	}

	public float getPrecio() {
		return this.precio;
	}

	public void setPrecio(float precio) {
		this.precio = precio;
	}

	public int getStock() {
		return this.stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public Categoria getCategoria() {
		return this.categoria;
	}

	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}

	public Marca getMarca() {
		return this.marca;
	}

	public void setMarca(Marca marca) {
		this.marca = marca;
	}

	public Referencia getReferencia() {
		return this.referencia;
	}

	public void setReferencia(Referencia referencia) {
		this.referencia = referencia;
	}

	public Talla getTalla() {
		return this.talla;
	}

	public void setTalla(Talla talla) {
		this.talla = talla;
	}

	public List<ProductosCompra> getProductosCompras() {
		return this.productosCompras;
	}

	public void setProductosCompras(List<ProductosCompra> productosCompras) {
		this.productosCompras = productosCompras;
	}

	public ProductosCompra addProductosCompra(ProductosCompra productosCompra) {
		getProductosCompras().add(productosCompra);
		productosCompra.setProducto(this);

		return productosCompra;
	}

	public ProductosCompra removeProductosCompra(ProductosCompra productosCompra) {
		getProductosCompras().remove(productosCompra);
		productosCompra.setProducto(null);

		return productosCompra;
	}

	public List<ProductosVenta> getProductosVentas() {
		return this.productosVentas;
	}

	public void setProductosVentas(List<ProductosVenta> productosVentas) {
		this.productosVentas = productosVentas;
	}

	public ProductosVenta addProductosVenta(ProductosVenta productosVenta) {
		getProductosVentas().add(productosVenta);
		productosVenta.setProducto(this);

		return productosVenta;
	}

	public ProductosVenta removeProductosVenta(ProductosVenta productosVenta) {
		getProductosVentas().remove(productosVenta);
		productosVenta.setProducto(null);

		return productosVenta;
	}

}