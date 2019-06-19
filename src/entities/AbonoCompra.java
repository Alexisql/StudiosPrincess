package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Timestamp;


/**
 * The persistent class for the abono_compra database table.
 * 
 */
@Entity
@Table(name="abono_compra")
@NamedQuery(name="AbonoCompra.findAll", query="SELECT a FROM AbonoCompra a")
public class AbonoCompra implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;

	private Timestamp fecha;

	@Column(name="valor_abono")
	private float valorAbono;

	//bi-directional many-to-one association to Compra
	@ManyToOne
	@JoinColumn(name="id_compra")
	private Compra compra;

	public AbonoCompra() {
	}

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Timestamp getFecha() {
		return this.fecha;
	}

	public void setFecha(Timestamp fecha) {
		this.fecha = fecha;
	}

	public float getValorAbono() {
		return this.valorAbono;
	}

	public void setValorAbono(float valorAbono) {
		this.valorAbono = valorAbono;
	}

	public Compra getCompra() {
		return this.compra;
	}

	public void setCompra(Compra compra) {
		this.compra = compra;
	}

}