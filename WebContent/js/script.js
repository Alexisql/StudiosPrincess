function editar(e){
	var documento=document.querySelector("#modal_cc");
	$.ajax({
		url:"clienteServlet",
		data:{documento:e.id},
		type:"get",
		success:function(res){
			var aux=res.split("_");
			documento.value=aux[0];
			nombre.value=aux[1];
			apellido.value=aux[2];
			tipodoc.value=aux[3];
			direccion.value=aux[4];
			genero.value=aux[5];
			telefono.value=aux[6];
		}
	});
}

function editar(e){
	var nit=document.querySelector("#modal_nit");
	$.ajax({
		url:"proveedorServlet",
		data:{nit:e.id},
		type:"get",
		success:function(res){
			var aux=res.split("_");
			nit.value=aux[0];
			nombreContacto.value=aux[1];
			nombreProv.value=aux[2];
			direccion.value=aux[3];
			email.value=aux[4];
			telefono.value=aux[5];
		}
	});
}

function editarCategoria(e){
	var id=document.querySelector("#modal_id");
	$.ajax({		
		url:"categoriaServlet",
		data:{id:e.id},
		type:"get",
		success:function(res){
			var aux=res.split("_");
			id.value=aux[0];
			nombre.value=aux[1];
			descripcion.value=aux[2];
			
		}
	});
}

function editarMarca(e){
	var id=document.querySelector("#modal_id");
	$.ajax({		
		url:"marcaServlet",
		data:{id:e.id},
		type:"get",
		success:function(res){
			var aux=res.split("_");
			id.value=aux[0];
			nombre.value=aux[1];
			descripcion.value=aux[2];
			
		}
	});
}

function editarTalla(e){
	var id=document.querySelector("#modal_id");
	$.ajax({		
		url:"tallaServlet",
		data:{id:e.id},
		type:"get",
		success:function(res){
			var aux=res.split("_");
			id.value=aux[0];
			nombre.value=aux[1];
			descripcion.value=aux[2];
			
		}
	});
}

function editarReferencia(e){
	var id=document.querySelector("#modal_id");
	$.ajax({		
		url:"referenciaServlet",
		data:{id:e.id},
		type:"get",
		success:function(res){
			var aux=res.split("_");
			id.value=aux[0];
			nombre.value=aux[1];
			descripcion.value=aux[2];
			
		}
	});
}

function editarProducto(e){
	var id=document.querySelector("#modal_id");
	$.ajax({		
		url:"productoServlet",
		data:{id:e.id},
		type:"get",
		success:function(res){
			var aux=res.split("_");
			id.value=aux[0];
			nombre.value=aux[1];
			descripcion.value=aux[2];
			color.value=aux[3]
			stock.value=aux[4]
			imagen.value=aux[5]
			precio.value=aux[6]
			estado.value=aux[7]
			categoria.value=aux[8]
			marca.value=aux[9]
			referencia.value=aux[10]
			talla.value=aux[11]
			
			
		}
	});
}