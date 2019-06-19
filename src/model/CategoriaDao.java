package model;

import entities.Categoria;
import entities.Proveedor;
import util.Conexion;

public class CategoriaDao extends Conexion<Categoria> implements GenericDao<Categoria>{

	public CategoriaDao() {
		super(Categoria.class);
	}

	public boolean existe(Categoria p) {
		Categoria prov = this.find(p.getId());
		if (prov != null) {
			return true;
		}
		return false;
	}
}

