<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%@include file="../forms/formVenta.jsp"%>

<div class="content-inner">
	<!-- Page Header-->
	<header class="page-header">
		<div class="container-fluid">
			<h2 class="no-margin-bottom">venta</h2>
		</div>
	</header>
	<!-- Breadcrumb-->
	<div class="breadcrumb-holder container-fluid">
		<ul class="breadcrumb">
			<li class="breadcrumb-item"><a href="../../Admin.jsp">Home</a></li>
			<li class="breadcrumb-item active">venta </li>
		</ul>
	</div>
	<section class="wrapper style5">
							<div class="inner">
								<section>
									<h4 style="text-align: center;">Datos Iniciales</h4>

									<form method="post" action="#">
										<div class="row uniform">

											<div class="8u 12u$(xsmall)">
												<input type="text" name="name" id="name" value="" placeholder="Nombre Cliente" />
											</div>

											<div class="4u$ 12u$(xsmall)">
												<input type="text" name="numero" id="numero" value="" placeholder="N°" />
											</div>

											<div class="2u 12u$(xsmall)">
												<input type="text" name="codigo" id="codigo" value="" placeholder="Codigo"/>
											</div>

											<div class="6u 12u$(xsmall)">
												<input type="text" name="descripcion" id="descripcion" value="" placeholder="Descripcion Producto"/>
											</div>

											<div class="2u 12u$(xsmall)">
												<input type="text" name="cantidad" id="cantidad" value="" placeholder="cantidad" onkeyup="format(this)" onchange="format(this)"/>
											</div>

											<div class="2u$ 12u$(xsmall)">
												<input type="text" name="precio" id="precio" value="" placeholder="Precio" onkeyup="format(this)" onchange="format(this)"/>
											</div>								
										</div>
										<br>
										<div class="12u$">
											<ul class="actions" style="text-align: center">
												<li><input type="button" value="Agregar" class="principal" id="add_row"/></li>
											</ul>
										</div>
										<br>
										<br>

										<div class="table-wrapper">
											<table id="tabla_factura">
												<thead>
													<tr>
														<th>N</th>
														<th>Codigo</th>
														<th>Descripción</th>
														<th>Cantidad</th>
														<th>Precio</th>
														<th>Subtotal</th>
														<th>Impuesto</th>
														<th>Total</th>
														<td>Acción</td>
													</tr>
												</thead>
												<tbody id="content_table">
													<tr>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
														<td></td>
													</tr>
												</tbody>
												<tfoot>
													<tr>
														<td colspan="3"></td>
														<td id="total_catidad">0.00</td>
														<td id="total_precio">0.00</td>
														<td id="total_subtotales">0.00</td>
														<td id="total_impuesto">0.00</td>
														<td id="total_total">0.00</td>
														<td></td>
													</tr>
												</tfoot>
											</table>
										</div>
									</form>
								</section>
								<br> 
								<br>
								<br>
							</div>
						</section>
</div>



<!-- Scripts -->
			<script src="js/jquery.min.js"></script>
			<script src="js/jquery.scrollex.min.js"></script>
			<script src="js/jquery.scrolly.min.js"></script>
			<script src="js/skel.min.js"></script>
			<script src="js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="js/main.js"></script>
			<script src="lib/js/invoice.js"></script>