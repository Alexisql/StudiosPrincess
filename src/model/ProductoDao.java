package model;

import entities.Producto;
import util.Conexion;

public class ProductoDao extends Conexion<Producto> implements GenericDao<Producto>{

		public ProductoDao() {
			super(Producto.class);
		}
		
		public boolean existe(Producto p) {
			Producto prov = this.find(p.getId());
			if (prov != null) {
				return true;
			}
			return false;
		}
}
