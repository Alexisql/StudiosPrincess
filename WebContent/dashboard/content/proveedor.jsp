<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@include file="../forms/formProveedor.jsp"%>

<div class="content-inner">
	<!-- Page Header-->
	<header class="page-header">
		<div class="container-fluid">
			<h2 class="no-margin-bottom">proveedor</h2>
		</div>
	</header>
	<!-- Breadcrumb-->
	<div class="breadcrumb-holder container-fluid">
		<ul class="breadcrumb">
			<li class="breadcrumb-item"><a href="../../Admin.jsp">Home</a></li>
			<li class="breadcrumb-item active">proveedor</li>
		</ul>
	</div>
	
	<section class="tables">
		<div class="container-fluid">
			<div class="card">
				<div class="card-header d-flex align-items-center">
					<h3 class="h4">Listado de proveedores</h3>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<jsp:useBean id="pDao" class="model.ProveedorDao" scope="request"></jsp:useBean>
						<table class="table table-striped centered display"
							id="tablaProveedor">
							<thead>
								<tr>
									<th>Nit</th>
									<th>Proveedor</th>
									<th>Dirección</th>
									<th>Email</th>
									<th>Nombre Contacto</th>
									<th>Telefono</th>
									<th>Acciones</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="proveedor" items="${pDao.list()}">
									<tr>
										<td><input type="hidden" id="${proveedor.nit}" name="nit">
											<c:out value="${proveedor.nit}" /></td>
										<td><c:out value="${proveedor.nombreProv}" /></td>
										<td><c:out value="${proveedor.direccionProv}" /></td>
										<td><c:out value="${proveedor.emailProv}" /></td>
										<td><c:out value="${proveedor.nombreContacto}" /></td>
										<td><c:out value="${proveedor.telefonoContacto}" /></td>
										<td>
											<button type="button" data-toggle="modal"
												id="${proveedor.nit}" data-target="#formActProveedor"
												class="btn" onclick="editar(this)">
												<span class="fa fa-pencil"></span>
											</button>
										</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
	
</div>
<section class="dashboard-counts">
	<!-- Modal Form-->
	<div class="col-lg-4">
		<div class="card">
			<div class="card-header d-flex align-items-center">
				<h3 class="h4">Modal Form</h3>
			</div>
			<div class="card-body text-center">
				<button type="button" data-toggle="modal"
					data-target="#formActProveedor" class="btn btn-primary">Actualizar
					proveedor</button>

				<!-- Modal-->
				<div id="formActProveedor" tabindex="-1" role="dialog"
					aria-labelledby="formProveedorLabel" aria-hidden="true"
					class="modal fade text-left">
					<div role="document" class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<h2 id="formProveedorLabel" class="modal-title">Actualizar
									proveedor</h2>
								<button type="button" data-dismiss="modal" aria-label="Close"
									class="close">
									<span aria-hidden="true">×</span>
								</button>
							</div>
							<div class="modal-body">
								<form method="post" action="proveedorServlet">
									<div class=" row justify-content-around">
										<!-- Columna izquierda -->
										<div class="col-md-6">
											<!-- NIT -->
											<div class="form-group">
												<label class="form-control-label">NIT</label> <input
													type="text" name="nit" class="form-control" id="modal_nit"
													placeholder="NIT">
											</div>
											<!-- nombre -->
											<div class="form-group">
												<label class="form-control-label">Nombre Proveedor</label> <input
													type="text" name="nombreProv" id="nombreProv"
													class="form-control" placeholder="Nombre" required>
											</div>
											<!-- Email -->
											<div class="form-group">
												<label class="form-control-label">Email</label> <input
													type="email" name="email" id="email" class="form-control"
													placeholder="Email" required>
											</div>
											<!-- Direccion -->
											<div class="form-group">
												<label class="form-control-label">Direccion</label> <input
													type="text" name="direccion" id="direccion"
													class="form-control" placeholder="Direccion">
											</div>
										</div>

										<!-- Columna derecha -->
										<div class="col-md-6">
											<!-- contacto -->
											<div class="form-group">
												<label class="form-control-label"> Nombre contacto</label> <input
													type="text" name="nombreContacto" id="nombreContacto"
													class="form-control" placeholder="Contacto">
											</div>
											<!-- Telefono -->
											<div class="form-group">
												<label class="form-control-label">Teléfono contacto</label>
												<input type="text" name="telefono" id="telefono"
													class="form-control" placeholder="Telefono contacto">
											</div>
										</div>
									</div>
									<br>
									<div class="modal-footer">
										<button class="btn btn-secondary" type="button"
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
	</div>
</section>


<!-- Boton para llamar al modal -->
<a href="#" class="btn btn-danger pull-right" data-toggle="modal"
	data-target="#formProveedor"><strong>Registrar Proveedor</strong></a>