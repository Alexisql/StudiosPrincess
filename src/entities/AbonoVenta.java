package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the abono_venta database table.
 * 
 */
@Entity
@Table(name="abono_venta")
@NamedQuery(name="AbonoVenta.findAll", query="SELECT a FROM AbonoVenta a")
public class AbonoVenta implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private float abono;

	@Column(name="fecha_abono")
	private Timestamp fechaAbono;

	//bi-directional many-to-one association to Venta
	@ManyToOne
	@JoinColumn(name="id_venta")
	private Venta venta;

	public AbonoVenta() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public float getAbono() {
		return this.abono;
	}

	public void setAbono(float abono) {
		this.abono = abono;
	}

	public Timestamp getFechaAbono() {
		return this.fechaAbono;
	}

	public void setFechaAbono(Timestamp fechaAbono) {
		this.fechaAbono = fechaAbono;
	}

	public Venta getVenta() {
		return this.venta;
	}

	public void setVenta(Venta venta) {
		this.venta = venta;
	}

}