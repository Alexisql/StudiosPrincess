<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>

<!-- BOTON DEL MODAL -->
<a href="#" class="btn btn-danger  pull-right" data-toggle="modal" data-target="#formProducto"><strong>Registrar
		producto</strong></a>

<!-- MODAL FORM PROVEEDOR -->
<div class="modal fade" id="formProducto" tabindex="-1" role="dialog" aria-labelledby="formProductoLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header ">
				<h2 class="modal-title titulo" id="formProductoLabel">Registro
					de producto</h2>
				<button class="close" type="button" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<!-- Modal body -->
			<div class="modal-body">
				<form method="post" action="productoServlet">
					<div class=" row justify-content-around">

						<!-- Columna izquierda -->
						<div class="col-md-5">

							<!-- nombre -->
							<div class="form-group">
								<label><strong style="color: red;">* </strong><strong> Nombre Producto</strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">

										</span>
									</div>
									<input type="text" name="nombre" class="form-control" required>
								</div>
							</div>

							<!-- Email -->
							<div class="form-group has-feedback">
								<label><strong style="color: red;">* </strong><strong> Descripcion </strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">
											<ion-icon name="Email"></ion-icon>
										</span>
									</div>
									<input type="text" name="descripcion" class="form-control" placeholder="descripcion">
									<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
								</div>
							</div>

							<!-- Color -->
							<div class="form-group">
								<label><strong>Color</strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">

										</span>
									</div>
									<input type="text" name="color" class="form-control">
								</div>
							</div>
							
							<!-- Stock -->
							<div class="form-group">
								<label><strong>Stock</strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">

										</span>
									</div>
									<input type="text" name="stock" class="form-control">
								</div>
							</div>
								<!-- TALLA -->
							<div class="form-group">
								<label><strong>Talla</strong></label>
								<jsp:useBean id="tDao" class="model.TallaDao" scope="request"></jsp:useBean>
				<select class="form-control" id="talla" name="talla">
					<option value="">Seleccione Talla</option>
					<c:forEach var="talla" items="${tDao.list()}">
						<option value="<c:out value="${talla.id}"/>"><c:out
								value="${talla.nombreTalla}" /></option>
					</c:forEach>
				</select>
							</div>
							
						</div>

						<!-- Columna derecha -->
						<div class="col-md-5">

							<!-- Imagen -->
							<div class="form-group">
								<label><strong> Imagen</strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">
											<ion-icon name="contact"></ion-icon>
										</span>
									</div>
									<input type="file" name="imagen" class="form-control">
								</div>
							</div>

							<!-- Precio -->
							<div class="form-group">
								<label><strong>Precio</strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">
											<ion-icon name="call"></ion-icon>
										</span>
									</div>
									<input type="text" name="precio" class="form-control">
								</div>
							</div>

							<!-- Estado -->
							<div class="form-group">
								<label><strong>Estado</strong></label>
				<select class="form-control" id="estado" name="estado">
					<option value="">Seleccione Estado</option>
					<option value="">Disponible</option>
					<option value="">Agotado</option>
				</select>
							</div>
							
							<!-- CATEGORIA -->
							<div class="form-group">
								<label><strong>Categoria</strong></label>
								<jsp:useBean id="eDao" class="model.CategoriaDao" scope="request"></jsp:useBean>
				<select class="form-control" id="categoria" name="categoria">
					<option value="">Seleccione Categoria</option>
					<c:forEach var="equipo" items="${eDao.list()}">
						<option value="<c:out value="${equipo.id}"/>"><c:out
								value="${equipo.nombreCategoria}" /></option>
					</c:forEach>
				</select>
							</div>
							
							<!-- MARCA -->
							<div class="form-group">
								<label><strong>Marca</strong></label>
								<jsp:useBean id="mDao" class="model.MarcaDao" scope="request"></jsp:useBean>
				<select class="form-control" id="marca" name="marca">
					<option value="">Seleccione Marca</option>
					<c:forEach var="marca" items="${mDao.list()}">
						<option value="<c:out value="${marca.id}"/>"><c:out
								value="${marca.nombreMarca}" /></option>
					</c:forEach>
				</select>
							</div>
							
							<!-- Referencia -->
							<div class="form-group">
								<label><strong>Referencia</strong></label>
								<jsp:useBean id="rDao" class="model.ReferenciaDao" scope="request"></jsp:useBean>
				<select class="form-control" id="referencia" name="referencia">
					<option value="">Seleccione Referencia</option>
					<c:forEach var="referencia" items="${rDao.list()}">
						<option value="<c:out value="${referencia.id}"/>"><c:out
								value="${referencia.nombreRef}" /></option>
					</c:forEach>
				</select>
							</div>
							
						


						</div>
					</div>
					<br>
					<spand>
						<h4>
							Los campos con <strong style="color: red;"> * </strong> son
							obligatorios
						</h4>
					</spand>
					<hr>
					<div class="pull-right">
						<button class="btn btn-default" type="button" data-dismiss="modal">Cancelar</button>
						<button type="submit" class="btn btn-primary">Guardar</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>