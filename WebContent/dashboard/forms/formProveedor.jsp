<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>

<!-- BOTON DEL MODAL -->
<a href="#" class="btn btn-danger  pull-right" data-toggle="modal" data-target="#formProveedor"><strong>Registrar
		proveedor</strong></a>

<!-- MODAL FORM PROVEEDOR -->
<div class="modal fade" id="formProveedor" tabindex="-1" role="dialog" aria-labelledby="formProveedorLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header ">
				<h2 class="modal-title titulo" id="formProveedorLabel">Registro
					de proveedor</h2>
				<button class="close" type="button" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<!-- Modal body -->
			<div class="modal-body">
				<form method="post" action="proveedorServlet">
					<div class=" row justify-content-around">

						<!-- Columna izquierda -->
						<div class="col-md-5">

							<!-- nombre -->
							<div class="form-group">
								<label><strong style="color: red;">* </strong><strong> Nombre Proveedor</strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">

										</span>
									</div>
									<input type="text" name="nombreProv" class="form-control" required>
								</div>
							</div>

							<!-- Email -->
							<div class="form-group has-feedback">
								<label><strong style="color: red;">* </strong><strong> Email </strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">
											<ion-icon name="Email"></ion-icon>
										</span>
									</div>
									<input type="email" name="email" class="form-control" placeholder="Email">
									<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
								</div>
							</div>

							<!-- NIT -->
							<div class="form-group">
								<label><strong>NIT</strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">

										</span>
									</div>
									<input type="text" name="nit" class="form-control">
								</div>
							</div>
							
						</div>

						<!-- Columna derecha -->
						<div class="col-md-5">

							<!-- contacto -->
							<div class="form-group">
								<label><strong> Nombre contacto</strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">
											<ion-icon name="contact"></ion-icon>
										</span>
									</div>
									<input type="text" name="nombreContacto" class="form-control">
								</div>
							</div>

							<!-- Telefono -->
							<div class="form-group">
								<label><strong>Teléfono contacto</strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">
											<ion-icon name="call"></ion-icon>
										</span>
									</div>
									<input type="text" name="telefono" class="form-control">
								</div>
							</div>

							<!-- Direccion -->
							<div class="form-group">
								<label><strong>Direccion</strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">
											<ion-icon name="home"></ion-icon>
										</span>
									</div>
									<input type="text" name="direccion" class="form-control">
								</div>
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