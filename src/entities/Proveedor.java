package entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the proveedor database table.
 * 
 */
@Entity
@NamedQuery(name="Proveedor.findAll", query="SELECT p FROM Proveedor p")
public class Proveedor implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	private String nit;

	@Column(name="direccion_prov")
	private String direccionProv;

	@Column(name="email_prov")
	private String emailProv;

	@Column(name="nombre_contacto")
	private String nombreContacto;

	@Column(name="nombre_prov")
	private String nombreProv;

	@Column(name="telefono_contacto")
	private String telefonoContacto;

	//bi-directional many-to-one association to Compra
	@OneToMany(mappedBy="proveedor")
	private List<Compra> compras;

	public Proveedor() {
	}

	public String getNit() {
		return this.nit;
	}

	public void setNit(String nit) {
		this.nit = nit;
	}

	public String getDireccionProv() {
		return this.direccionProv;
	}

	public void setDireccionProv(String direccionProv) {
		this.direccionProv = direccionProv;
	}

	public String getEmailProv() {
		return this.emailProv;
	}

	public void setEmailProv(String emailProv) {
		this.emailProv = emailProv;
	}

	public String getNombreContacto() {
		return this.nombreContacto;
	}

	public void setNombreContacto(String nombreContacto) {
		this.nombreContacto = nombreContacto;
	}

	public String getNombreProv() {
		return this.nombreProv;
	}

	public void setNombreProv(String nombreProv) {
		this.nombreProv = nombreProv;
	}

	public String getTelefonoContacto() {
		return this.telefonoContacto;
	}

	public void setTelefonoContacto(String telefonoContacto) {
		this.telefonoContacto = telefonoContacto;
	}

	public List<Compra> getCompras() {
		return this.compras;
	}

	public void setCompras(List<Compra> compras) {
		this.compras = compras;
	}

	public Compra addCompra(Compra compra) {
		getCompras().add(compra);
		compra.setProveedor(this);

		return compra;
	}

	public Compra removeCompra(Compra compra) {
		getCompras().remove(compra);
		compra.setProveedor(null);

		return compra;
	}

}