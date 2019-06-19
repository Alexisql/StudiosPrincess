package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the venta database table.
 * 
 */
@Entity
@NamedQuery(name="Venta.findAll", query="SELECT v FROM Venta v")
public class Venta implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	@Column(name="fecha_venta")
	private int fechaVenta;

	@Column(name="forma_pago")
	private int formaPago;

	private float iva;

	private float total;

	//bi-directional many-to-one association to AbonoVenta
	@OneToMany(mappedBy="venta")
	private List<AbonoVenta> abonoVentas;

	//bi-directional many-to-one association to ProductosVenta
	@OneToMany(mappedBy="venta")
	private List<ProductosVenta> productosVentas;

	//bi-directional many-to-one association to Cliente
	@ManyToOne
	@JoinColumn(name="id_cliente")
	private Cliente cliente;

	//bi-directional many-to-one association to Empleado
	@ManyToOne
	@JoinColumn(name="id_empleado")
	private Empleado empleado;

	//bi-directional many-to-one association to Mediopago
	@ManyToOne
	@JoinColumn(name="id_mediopago")
	private Mediopago mediopago;

	public Venta() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getFechaVenta() {
		return this.fechaVenta;
	}

	public void setFechaVenta(int fechaVenta) {
		this.fechaVenta = fechaVenta;
	}

	public int getFormaPago() {
		return this.formaPago;
	}

	public void setFormaPago(int formaPago) {
		this.formaPago = formaPago;
	}

	public float getIva() {
		return this.iva;
	}

	public void setIva(float iva) {
		this.iva = iva;
	}

	public float getTotal() {
		return this.total;
	}

	public void setTotal(float total) {
		this.total = total;
	}

	public List<AbonoVenta> getAbonoVentas() {
		return this.abonoVentas;
	}

	public void setAbonoVentas(List<AbonoVenta> abonoVentas) {
		this.abonoVentas = abonoVentas;
	}

	public AbonoVenta addAbonoVenta(AbonoVenta abonoVenta) {
		getAbonoVentas().add(abonoVenta);
		abonoVenta.setVenta(this);

		return abonoVenta;
	}

	public AbonoVenta removeAbonoVenta(AbonoVenta abonoVenta) {
		getAbonoVentas().remove(abonoVenta);
		abonoVenta.setVenta(null);

		return abonoVenta;
	}

	public List<ProductosVenta> getProductosVentas() {
		return this.productosVentas;
	}

	public void setProductosVentas(List<ProductosVenta> productosVentas) {
		this.productosVentas = productosVentas;
	}

	public ProductosVenta addProductosVenta(ProductosVenta productosVenta) {
		getProductosVentas().add(productosVenta);
		productosVenta.setVenta(this);

		return productosVenta;
	}

	public ProductosVenta removeProductosVenta(ProductosVenta productosVenta) {
		getProductosVentas().remove(productosVenta);
		productosVenta.setVenta(null);

		return productosVenta;
	}

	public Cliente getCliente() {
		return this.cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Empleado getEmpleado() {
		return this.empleado;
	}

	public void setEmpleado(Empleado empleado) {
		this.empleado = empleado;
	}

	public Mediopago getMediopago() {
		return this.mediopago;
	}

	public void setMediopago(Mediopago mediopago) {
		this.mediopago = mediopago;
	}

}