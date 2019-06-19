<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>

<!-- BOTON DEL MODAL -->
<a href="#" class="btn btn-danger  pull-right" data-toggle="modal" data-target="#formCategoria"><strong>Registrar
		Categoria</strong></a>

<!-- MODAL FORM CATEGORIA -->
<div class="modal fade" id="formCategoria" tabindex="-1" role="dialog" aria-labelledby="formCategoriaLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header ">
				<h2 class="modal-title titulo" id="formCategoriaLabel">Registro
					de Categoria</h2>
				<button class="close" type="button" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<!-- Modal body -->
			<div class="modal-body">
				<form method="post" action="categoriaServlet">
					<div class=" row justify-content-around">

						<!-- Columna izquierda -->
						<div class="col-md-5">

							<!-- nombre -->
							<div class="form-group">
								<label><strong style="color: red;">* </strong><strong> Nombre Categoria</strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">

										</span>
									</div>
									<input type="text" name="nombre" class="form-control" required>
								</div>
							</div>


							
							
						</div>

						<!-- Columna derecha -->
						<div class="col-md-5">

							<!-- Descripcion -->
							<div class="form-group">
								<label><strong> Nombre Descripcion</strong></label>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">
											<ion-icon name="contact"></ion-icon>
										</span>
									</div>
									<input type="text" name="descripcion" class="form-control">
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