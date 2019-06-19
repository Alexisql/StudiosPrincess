<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@include file="../forms/formCliente.jsp"%>

<!-- Breadcrumbs-->
<ol class="breadcrumb">
	<li class="breadcrumb-item"><a>Clientes</a></li>
</ol>
<div class="card mb-3">
	<div class="card-header">
		<i class="fa fa-calendar-check-o"></i> Tabla Clientes
	</div>
	<div class="card-body">
		<div class="table-responsive">
			<jsp:useBean id="cDao" class="model.ClienteDao" scope="request">
			</jsp:useBean>
			<hr>
			<table class="table table-bordered" id="dataTable" width="100%"
				cellspacing="0">
				<thead>
					<tr>
						<th>Documento</th>
						<th>Nombre</th>
						<th>Apellido</th>
						<th>Dirección</th>
						<th>Telefono</th>
						<th>Tipo Documento</th>
						<th>Genero</th>
						<th>Acciones</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cliente" items="${cDao.list()}">
						<tr>
							<td><input type="hidden" id="${cliente.documento}" name="documento"><c:out value="${cliente.documento}" /></td>
							<td><c:out value="${cliente.nombre}" /></td>
							<td><c:out value="${cliente.apellido}" /></td>
							<td><c:out value="${cliente.direccion}" /></td>
							<td><c:out value="${cliente.telefono}" /></td>
							<td><c:out value="${cliente.tipodocumento}" /></td>
							<td><c:out value="${cliente.genero}" /></td>
							<td><button type="button" data-toggle="modal" id="${cliente.documento}"
								data-target="#formActCliente" class="btn btn-warning botones_mostrar" onclick="editar(this)"> <span
									class="fa fa-pencil"></span></button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<!-- MODAL ACTUALIZAR CLIENTE -->
							<c:set var="cliente" scope="request"
								value="${requestScope.cliente}" />
							<div class="modal fade" id="formActCliente" tabindex="-1"
								role="dialog" aria-labelledby="formActClienteLabel"
								aria-hidden="true">
								<div class="modal-dialog modal-lg" role="document">
									<div class="modal-content">
										<div class="modal-header ">
											<h2 class="modal-title titulo" id="formActClienteLabel">Actualizar
												Cliente</h2>
											<button class="close" type="button" data-dismiss="modal"
												aria-label="Close">
												<span aria-hidden="true">&times;</span>
											</button>
										</div>
										<!-- Modal body -->
										<div class="modal-body">
											<form method="post" action="clienteServlet">
												<div class=" row justify-content-around">

													<!-- Columna izquierda -->
													<div class="col-md-5">
														<!-- Tipo de documento -->
														<div class="form-group">
															<label><strong style="color: red;">* </strong><strong>Tipo
																	de documento </strong></label>
															<div class="input-group">
																<div class="input-group-prepend">
																	<span class="input-group-text"><ion-icon
																			name="list" class=" md-list"></ion-icon></span></span>
																</div>
																<select class="form-control" name="tipodoc" id="tipodoc" required>
																	<option value="cc">Cedula Ciudadania</option>
																	<option value="cx">Cedula Extranjera</option>
																	<option value="pas">Pasaporte</option>
																</select>
															</div>
														</div>
														
														
														<!-- Primer nombre -->
														<div class="form-group">
															<label><strong style="color: red;">* </strong><strong>Nombre(s)</strong></label>
															<div class="input-group">
																<div class="input-group-prepend">
																	<span class="input-group-text"><ion-icon
																			name="person" class="md-person"></ion-icon></span></span>
																</div>
																<input type="text" name="nombre" class="form-control"
																	id="nombre" required>
															</div>
														</div>

														<!-- Direccion -->
														<div class="form-group">
															<label><strong style="color: red;">* </strong><strong>
																	Direccion </strong></label>
															<div class="input-group">
																<div class="input-group-prepend">
																	<span class="input-group-text"><ion-icon
																			name="home" class=" md-home"></ion-icon></span>
																</div>
																<input type="text" name="direccion" id="direccion" class="form-control">
															</div>
														</div>
														
														<!-- Telefono -->
														<div class="form-group">
															<label><strong>Teléfono</strong></label>
															<div class="input-group">
																<div class="input-group-prepend">
																	<span class="input-group-text"><span
																		class="fa fa-user"></span></span>
																</div>
																<input type="text" name="telefono" id="telefono" class="form-control">
															</div>
														</div>
													</div>

													<!-- Columna derecha -->
													<div class="col-md-5">
													
														<!-- Documento -->
														<div class="form-group">
															<label><strong>Numero de Documento</strong></label>
															<div class="input-group">
																<div class="input-group-prepend">
																	<span class="input-group-text"><span
																		class="fa fa-phone"></span></span>
																</div>
																<input type="text" name="documento"
																	class="form-control" id="modal_cc"
																	required>
															</div>
														</div>
														<!-- Apellido -->
														<div class="form-group">
															<label><strong style="color: red;">* </strong><strong>Apellido(s)
															</strong></label>
															<div class="input-group">
																<div class="input-group-prepend">
																	<span class="input-group-text"><span
																		class="fa fa-user"></span></span>
																</div>
																<input type="text" name="apellido" id="apellido" class="form-control">
															</div>
														</div>
														
														<!-- Genero -->
														<div class="form-group">
															<label><strong style="color: red;">* </strong><strong>Genero</strong></label>
															<div class="input-group">
																<div class="input-group-prepend">
																	<span class="input-group-text"><span
																		class="fa fa-address-book"></span></span>
																</div>
																<select class="form-control" name="genero" id="genero" required>
																	<option value="m">Masculino</option>
																	<option value="f">Femenino</option>
																</select>
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
													<button class="btn btn-default" type="button"
														data-dismiss="modal">Cancelar</button>
													<button type="submit" class="btn btn-primary">Actualizar</button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
			
		</div>
	</div>
	<div class="card-footer small text-muted">StudioPrincess.com</div>
</div>

<!-- Boton para llamar al modal -->
<a href="#" class="btn btn-danger pull-right" data-toggle="modal"
	data-target="#formCliente"><strong>Registrar Cliente</strong></a>
