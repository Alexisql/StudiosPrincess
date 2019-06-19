<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>

<!-- MODAL FORM CLIENTE -->
<div class="modal fade" id="formCliente" tabindex="-1" role="dialog" aria-labelledby="formClienteLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header ">
				<h2 class="modal-title titulo" id="formClienteLabel">Registro
					de Cliente</h2>
				<button class="close" type="button" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<!-- Modal body -->
			<div class="modal-body">
				<form method="post" action="clienteServlet">
					<div class=" row justify-content-around">

						<!-- Columna izquierda -->
						<div class="col-md-5">

							<!-- Primer nombre -->
							<div class="form-group">
								<label><strong style="color: red;">* </strong><strong>Nombre(s)</strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><ion-icon name="person" class="md-person"></ion-icon></span></span>
									</div>
									<input type="text" name="nombre" class="form-control" required>
								</div>
							</div>

							<!-- Tipo de documento -->
							<div class="form-group">
								<label><strong style="color: red;">* </strong><strong>Tipo
										de documento </strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><ion-icon name="list" class=" md-list"></ion-icon></span></span>
									</div>
									<select class="form-control" name="tipodoc" required>
										<option value="cc">Cedula Ciudadania </option>
										<option value="cx">Cedula Extranjera </option>
										<option value="pas">Pasaporte </option>
									</select>
								</div>
							</div>

							<!-- Direccion -->
							<div class="form-group">
								<label><strong style="color: red;">* </strong><strong> Direccion </strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><ion-icon name="home" class=" md-home"></ion-icon></span>
									</div>
									<input type="text" name="direccion" class="form-control">
								</div>
							</div>

							<!-- Genero -->
							<div class="form-group">
								<label><strong style="color: red;">* </strong><strong>Genero</strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><span class="fa fa-address-book"></span></span>
									</div>
									<select class="form-control" name="genero" required>
										<option value="m">Masculino</option>
										<option value="f">Femenino</option>
									</select>
								</div>
							</div>

						</div>

						<!-- Columna derecha -->
						<div class="col-md-5">

							<!-- Apellido -->
							<div class="form-group">
								<label><strong style="color: red;">* </strong><strong>Apellido(s) </strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><span class="fa fa-user"></span></span>
									</div>
									<input type="text" name="apellido" class="form-control">
								</div>
							</div>

							<!-- Documento -->
							<div class="form-group">
								<label><strong>Numero de Documento</strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><span class="fa fa-phone"></span></span>
									</div>
									<input type="text" name="documento" class="form-control" >
								</div>
							</div>

							<!-- Telefono -->
							<div class="form-group">
								<label><strong>Teléfono</strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><span class="fa fa-user"></span></span>
									</div>
									<input type="text" name="telefono" class="form-control">
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

