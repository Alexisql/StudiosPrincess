package model;

import entities.Categoria;
import entities.Referencia;
import util.Conexion;

public class ReferenciaDao extends Conexion<Referencia> implements GenericDao<Referencia>{

	public ReferenciaDao(){
		super(Referencia.class);
	}
	
	public boolean existe(Referencia p) {
		Referencia prov = this.find(p.getId());
		if (prov != null) {
			return true;
		}
		return false;
	}

}
