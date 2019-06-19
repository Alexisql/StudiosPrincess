package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;
import java.util.List;


/**
 * The persistent class for the compra database table.
 * 
 */
@Entity
@NamedQuery(name="Compra.findAll", query="SELECT c FROM Compra c")
public class Compra implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	@Column(name="fecha_compra")
	private Timestamp fechaCompra;

	@Column(name="forma_pago")
	private String formaPago;

	private float iva;

	@Column(name="n_cuotas")
	private int nCuotas;

	@Column(name="total_compra")
	private float totalCompra;

	//bi-directional many-to-one association to AbonoCompra
	@OneToMany(mappedBy="compra")
	private List<AbonoCompra> abonoCompras;

	//bi-directional many-to-one association to Proveedor
	@ManyToOne
	@JoinColumn(name="nit_proveedor")
	private Proveedor proveedor;

	//bi-directional many-to-one association to ProductosCompra
	@OneToMany(mappedBy="compra")
	private List<ProductosCompra> productosCompras;

	public Compra() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Timestamp getFechaCompra() {
		return this.fechaCompra;
	}

	public void setFechaCompra(Timestamp fechaCompra) {
		this.fechaCompra = fechaCompra;
	}

	public String getFormaPago() {
		return this.formaPago;
	}

	public void setFormaPago(String formaPago) {
		this.formaPago = formaPago;
	}

	public float getIva() {
		return this.iva;
	}

	public void setIva(float iva) {
		this.iva = iva;
	}

	public int getNCuotas() {
		return this.nCuotas;
	}

	public void setNCuotas(int nCuotas) {
		this.nCuotas = nCuotas;
	}

	public float getTotalCompra() {
		return this.totalCompra;
	}

	public void setTotalCompra(float totalCompra) {
		this.totalCompra = totalCompra;
	}

	public List<AbonoCompra> getAbonoCompras() {
		return this.abonoCompras;
	}

	public void setAbonoCompras(List<AbonoCompra> abonoCompras) {
		this.abonoCompras = abonoCompras;
	}

	public AbonoCompra addAbonoCompra(AbonoCompra abonoCompra) {
		getAbonoCompras().add(abonoCompra);
		abonoCompra.setCompra(this);

		return abonoCompra;
	}

	public AbonoCompra removeAbonoCompra(AbonoCompra abonoCompra) {
		getAbonoCompras().remove(abonoCompra);
		abonoCompra.setCompra(null);

		return abonoCompra;
	}

	public Proveedor getProveedor() {
		return this.proveedor;
	}

	public void setProveedor(Proveedor proveedor) {
		this.proveedor = proveedor;
	}

	public List<ProductosCompra> getProductosCompras() {
		return this.productosCompras;
	}

	public void setProductosCompras(List<ProductosCompra> productosCompras) {
		this.productosCompras = productosCompras;
	}

	public ProductosCompra addProductosCompra(ProductosCompra productosCompra) {
		getProductosCompras().add(productosCompra);
		productosCompra.setCompra(this);

		return productosCompra;
	}

	public ProductosCompra removeProductosCompra(ProductosCompra productosCompra) {
		getProductosCompras().remove(productosCompra);
		productosCompra.setCompra(null);

		return productosCompra;
	}

}