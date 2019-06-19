package model;

import entities.Proveedor;
import util.Conexion;

public class ProveedorDao extends Conexion<Proveedor> implements GenericDao<Proveedor>{

		public ProveedorDao() {
			super(Proveedor.class);
		}
		
		public boolean existe(Proveedor p) {
			Proveedor prov = this.find(p.getNit());
			if (prov != null) {
				return true;
			}
			return false;
		}
}
