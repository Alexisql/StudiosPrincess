package model;

import entities.Venta;
import util.Conexion;

public class VentaDao extends Conexion<Venta> implements GenericDao<Venta>{

		public VentaDao() {
			super(Venta.class);
		}
		
		public boolean existe(Venta p) {
			Venta prov = this.find(p.getId());
			if (prov != null) {
				return true;
			}
			return false;
		}
}
