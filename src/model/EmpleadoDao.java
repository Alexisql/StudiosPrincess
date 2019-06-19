package model;

import entities.Empleado;
import util.Conexion;

public class EmpleadoDao extends Conexion<Empleado> implements GenericDao<Empleado>{

	public EmpleadoDao() {
		super(Empleado.class);
	}
	
	public boolean existe(Empleado e) {
		Empleado emp = this.find(e.getDocumento());
		if (emp != null) {
			return true;
		}
		return false;
	}
}
