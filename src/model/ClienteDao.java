package model;

import entities.Cliente;
import util.Conexion;

public class ClienteDao extends Conexion<Cliente> implements GenericDao<Cliente> {

	public ClienteDao() {
		super(Cliente.class);
	}

	public boolean existe(Cliente e) {
		Cliente estu = this.find(e.getDocumento());
		if (estu != null) {
			return true;
		}
		return false;
	}
}
