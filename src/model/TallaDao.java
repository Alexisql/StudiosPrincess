package model;

import entities.Categoria;
import entities.Talla;
import util.Conexion;

public class TallaDao extends Conexion<Talla> implements GenericDao<Talla>{

	public TallaDao() {
		super(Talla.class);
	}
	
	public boolean existe(Talla p) {
		Talla prov = this.find(p.getId());
		if (prov != null) {
			return true;
		}
		return false;
	}

}
