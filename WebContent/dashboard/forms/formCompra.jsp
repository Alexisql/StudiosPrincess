<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>

<!-- BOTON DEL MODAL -->
<a href="#" class="btn btn-danger  pull-right" data-toggle="modal" data-target="#formCompra"><strong>Registrar cliente</strong></a>

<!-- MODAL FORM COMPRA -->
<div class="modal fade" id="formCompra" tabindex="-1" role="dialog" aria-labelledby="formCompraLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header ">
				<h2 class="modal-title titulo" id="formCompraLabel">Registro
					de compra</h2>
				<button class="close" type="button" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<!-- Modal body -->
			<div class="modal-body">
				<form method="post" action="PersonaController">
					<div class=" row justify-content-around">

						<!-- Columna izquierda -->
						<div class="col-md-5">

							<!-- Primer nombre -->
							<div class="form-group">
								<label><strong style="color: red;">* </strong><strong>Primer
										Nombre </strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><span class="fa fa-user"></span></span>
									</div>
									<input type="text" name="nombre1" class="form-control" required>
								</div>
							</div>

							<!-- Segundo nombre-->
							<div class="form-group">
								<label><strong>Segundo Nombre </strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><span class="fa fa-user"></span></span>
									</div>
									<input type="text" name="nombre2" class="form-control">
								</div>
							</div>

							<!-- Apellido -->
							<div class="form-group">
								<label><strong style="color: red;">* </strong><strong>Primer
										Apellido </strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><span class="fa fa-user"></span></span>
									</div>
									<input type="text" name="apellido1" class="form-control">
								</div>
							</div>

							<!-- Segundo apellido-->
							<div class="form-group">
								<label><strong>Segundo Apellido </strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><span class="fa fa-user"></span></span>
									</div>
									<input type="text" name="apellido2" class="form-control">
								</div>
							</div>
						</div>

						<!-- Columna derecha -->
						<div class="col-md-5">
							
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

							<!-- Tipo de empleado-->
							<div class="form-group">
								<label><strong style="color: red;">* </strong><strong>Tipo
										de Empleado</strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><span class="fa fa-id-card"></span></span>
									</div>
									<select class="form-control" name="tipoemp" required>
										<option value="cc">nose </option>
										<option value="cx">nose</option>
									</select>
								</div>
							</div>

							<!-- Documento -->
							<div class="form-group">
								<label><strong>Numero de Documento</strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><span class="fa fa-phone"></span></span>
									</div>
									<input type="text" name="documento" class="form-control">
								</div>
							</div>

							<!-- Clave -->
							<div class="form-group">
								<div class="input-group">
									<label><strong style="color: red;">* </strong><strong>Contraseña</strong></label>
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text"><span class="fa fa-phone"></span></span>
										</div>
										<input type="text" name="clave" class="form-control">
									</div>
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