<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@include file="../forms/formTalla.jsp"%>

<div class="content-inner">
	<!-- Page Header-->
	<header class="page-header">
		<div class="container-fluid">
			<h2 class="no-margin-bottom">Talla</h2>
		</div>
	</header>
	<!-- Breadcrumb-->
	<div class="breadcrumb-holder container-fluid">
		<ul class="breadcrumb">
			<li class="breadcrumb-item"><a href="../../Admin.jsp">Home</a></li>
			<li class="breadcrumb-item active">talla </li>
		</ul>
	</div>
	<section class="tables">
		<div class="container-fluid">
			<div class="card">
				<div class="card-header d-flex align-items-center">
					<h3 class="h4">Listado de Tallas</h3>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<jsp:useBean id="cDao" class="model.TallaDao" scope="request"></jsp:useBean>
						<table class="table table-striped centered display" id="tablaTalla">
							<thead>
								<tr>
									<th>Id</th>
									<th>Nombre</th>
									<th>Descripcion</th>
									
								</tr>
							</thead>
							<tbody>
								<c:forEach var="talla" items="${cDao.list()}">
									<tr>
										<td><input type="hidden" id="${talla.id}" name="id">
											<c:out value="${talla.id}" />
										</td>
										<td>
											<c:out value="${talla.nombreTalla}" />
										</td>
										<td>
											<c:out value="${talla.descripcion}" />
										</td>
										
										
										
										<td>
											<button type="button" data-toggle="modal" id="${talla.id}" data-target="#formActTalla" class="btn"
											 onclick="editarTalla(this)">
												<span class="fa fa-pencil"></span>
											</button></td>
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
				<button type="button" data-toggle="modal" data-target="#formActTalla" class="btn btn-primary">Actualizar
					Talla
				</button>

				<!-- Modal-->
				<div id="formActTalla" tabindex="-1" role="dialog" aria-labelledby="formTallaLabel" aria-hidden="true"
				 class="modal fade text-left">
					<div role="document" class="modal-dialog modal-lg">
						<div class="modal-content">
							<div class="modal-header">
								<h2 id="formTallaLabel" class="modal-title">Actualizar talla</h2>
								<button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
							</div>
							<div class="modal-body">
								<form method="post" action="tallaServlet">
									<div class=" row justify-content-around">
										<!-- Columna izquierda -->
										<div class="col-md-6">
											<!-- ID -->
											<div class="form-group">
												<label class="form-control-label">Id</label>
												<input type="text" name="id" class="form-control" id="modal_id" placeholder="id">
											</div>
											<!-- nombre -->
											<div class="form-group">
												<label class="form-control-label">Nombre </label>
												<input type="text" name="nombre" id="nombre" class="form-control" placeholder="nombre" required>
											</div>
											
										</div>

										<!-- Columna derecha -->
										<div class="col-md-6">
											<!-- contacto -->
											<div class="form-group">
												<label class="form-control-label"> Descripcion</label>
												<input type="text" name="descripcion" id="descripcion" class="form-control" placeholder="descripcion">
											</div>
											
										</div>
									</div>
									<br>
									<div class="modal-footer">
										<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
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
<a href="#" class="btn btn-danger pull-right" data-toggle="modal" data-target="#formTalla"><strong>Registrar
		Talla</strong></a>