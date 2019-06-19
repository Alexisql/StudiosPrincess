package model;

import entities.Usuario;
import util.Conexion;

public class UsuarioDao extends Conexion<Usuario> implements GenericDao<Usuario> {

	public UsuarioDao() {
		super(Usuario.class);
	}
	
	public String validarUser(Usuario u){
		Usuario usu = this.find(u.getNombre());
		if(usu != null)
			if (usu.getClave().contentEquals(u.getClave())){
				return "SUCCESS";
			}
		return "ERROR";
	}	
}