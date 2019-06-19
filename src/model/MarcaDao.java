package model;

import entities.Categoria;
import entities.Marca;
import util.Conexion;

public class MarcaDao extends Conexion<Marca> implements GenericDao<Marca>{

	public MarcaDao() {
		super(Marca.class);
	}

	public boolean existe(Marca p) {
		Marca prov = this.find(p.getId());
		if (prov != null) {
			return true;
		}
		return false;
	}
}
