<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>SisInventarioyVentas</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="robots" content="all,follow">
	<!-- Bootstrap CSS-->
	<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
	<!-- Font Awesome CSS-->
	<link rel="stylesheet" href="vendor/font-awesome/css/font-awesome.min.css">
	<!-- Fontastic Custom icon font-->
	<link rel="stylesheet" href="css/fontastic.css">
	<!-- Google fonts - Poppins -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
	<!-- theme stylesheet-->
	<link rel="stylesheet" href="css/style.default.css" id="theme-stylesheet">
	<!-- Custom stylesheet - for your changes-->
	<link rel="stylesheet" href="css/custom.css">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/favicon.ico">
	<!-- DataTables -->
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4-4.1.1/dt-1.10.18/datatables.min.css" />
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
			
	
</head>

<body>
<%
		if (request.getSession().getAttribute("admin") == null) {
			response.sendRedirect("index.jsp");
		}
	%>
	<div class="page">
		<!-- Main Navbar-->
		<header class="header">
			<nav class="navbar">
				<!-- Search Box-->
				<div class="search-box">
					<button class="dismiss"><i class="icon-close"></i></button>
					<form id="searchForm" action="#" role="search">
						<input type="search" placeholder="What are you looking for..." class="form-control">
					</form>
				</div>
				<div class="container-fluid">
					<div class="navbar-holder d-flex align-items-center justify-content-between">
						<!-- Navbar Header-->
						<div class="navbar-header">
							<!-- Navbar Brand -->
							<a href="Admin.jsp" class="navbar-brand d-none d-sm-inline-block">
								<div class="brand-text d-none d-lg-inline-block"><span>Studios </span><strong> Princess</strong></div>
								<div class="brand-text d-none d-sm-inline-block d-lg-none"><strong>SWASP</strong></div>
							</a>
							<!-- Toggle Button-->
							<a id="toggle-btn" href="#" class="menu-btn active"><span></span><span></span><span></span></a>
						</div>
						<!-- Navbar Menu -->
						<ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center">
							<!-- Search-->
							<li class="nav-item d-flex align-items-center"><a id="search" href="#"><i class="icon-search"></i></a></li>
							<!-- Notifications-->
							<li class="nav-item dropdown"> <a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown"
								 aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-bell-o"></i><span class="badge bg-red badge-corner">12</span></a>
								<ul aria-labelledby="notifications" class="dropdown-menu">
									<li><a rel="nofollow" href="#" class="dropdown-item">
											<div class="notification">
												<div class="notification-content"><i class="fa fa-envelope bg-green"></i>You have 6 new messages </div>
												<div class="notification-time"><small>4 minutes ago</small></div>
											</div>
										</a></li>
									<li><a rel="nofollow" href="#" class="dropdown-item">
											<div class="notification">
												<div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
												<div class="notification-time"><small>4 minutes ago</small></div>
											</div>
										</a></li>
									<li><a rel="nofollow" href="#" class="dropdown-item">
											<div class="notification">
												<div class="notification-content"><i class="fa fa-upload bg-orange"></i>Server Rebooted</div>
												<div class="notification-time"><small>4 minutes ago</small></div>
											</div>
										</a></li>
									<li><a rel="nofollow" href="#" class="dropdown-item">
											<div class="notification">
												<div class="notification-content"><i class="fa fa-twitter bg-blue"></i>You have 2 followers</div>
												<div class="notification-time"><small>10 minutes ago</small></div>
											</div>
										</a></li>
									<li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>view all
												notifications </strong></a></li>
								</ul>
							</li>
							<!-- Messages                        -->
							<li class="nav-item dropdown"> <a id="messages" rel="nofollow" data-target="#" href="#" data-toggle="dropdown"
								 aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="fa fa-envelope-o"></i><span class="badge bg-orange badge-corner">10</span></a>
								<ul aria-labelledby="notifications" class="dropdown-menu">
									<li><a rel="nofollow" href="#" class="dropdown-item d-flex">
											<div class="msg-profile"> <img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
											<div class="msg-body">
												<h3 class="h5">Jason Doe</h3><span>Sent You Message</span>
											</div>
										</a></li>
									<li><a rel="nofollow" href="#" class="dropdown-item d-flex">
											<div class="msg-profile"> <img src="img/avatar-2.jpg" alt="..." class="img-fluid rounded-circle"></div>
											<div class="msg-body">
												<h3 class="h5">Frank Williams</h3><span>Sent You Message</span>
											</div>
										</a></li>
									<li><a rel="nofollow" href="#" class="dropdown-item d-flex">
											<div class="msg-profile"> <img src="img/avatar-3.jpg" alt="..." class="img-fluid rounded-circle"></div>
											<div class="msg-body">
												<h3 class="h5">Ashley Wood</h3><span>Sent You Message</span>
											</div>
										</a></li>
									<li><a rel="nofollow" href="#" class="dropdown-item all-notifications text-center"> <strong>Read all messages
											</strong></a></li>
								</ul>
							</li>
							<!-- Logout    -->
							<li class="nav-item"><a href="index.jsp" data-toggle="modal"
								data-target="#exampleModal" class="nav-link logout"><span
									class="d-none d-sm-inline">Logout</span><i
									class="fa fa-sign-out"></i></a></li>
						</ul>
					</div>
				</div>
			</nav>
		</header>
		<div class="page-content d-flex align-items-stretch">
			<!-- Side Navbar -->
			<nav class="side-navbar">
				<!-- Sidebar Header-->
				<div class="sidebar-header d-flex align-items-center">
					<div class="avatar"><img src="img/avatar-1.jpg" alt="..." class="img-fluid rounded-circle"></div>
					<div class="title">
						<h1 class="h4">Mark Stephen</h1>
						<p>Web Designer</p>
					</div>
				</div>
				<!-- Sidebar Navidation Menus--><span class="heading">Main</span>
				<ul class="list-unstyled">
					<li><a href="#menuAlmacen" aria-expanded="false" data-toggle="collapse"><i class="icon-home"></i>Almacen</a>
						<ul id="menuAlmacen" class="collapse list-unstyled ">
							<li><a href="javascript:Carga('dashboard/content/producto.jsp','content','tablaProducto')">Productos</a></li>
							<li><a href="javascript:Carga('dashboard/content/categoria.jsp','content','tablaCategoria')">Categoria</a></li>
							<li><a href="javascript:Carga('dashboard/content/marca.jsp','content','tablaMarca')">Marca</a></li>
							<li><a href="javascript:Carga('dashboard/content/talla.jsp','content','tablaTalla')">Talla</a></li>
							<li><a href="javascript:Carga('dashboard/content/referencia.jsp','content','tablaReferencia')">Referencia</a></li>

							
						</ul>
					</li>
					<li><a href="#menuCompra" aria-expanded="false" data-toggle="collapse"><i class="icon-form"></i>Compras</a>
						<ul id="menuCompra" class="collapse list-unstyled ">
							<li><a href="#">Compra</a></li>
							<li><a href="javascript:Carga('dashboard/content/proveedor.jsp','content','tablaProveedor')">Proveedor</a></li>
						</ul>
					</li>
					<li><a href="#menuVenta" aria-expanded="false" data-toggle="collapse"><i class="icon-form"></i>Ventas</a>
						<ul id="menuVenta" class="collapse list-unstyled ">
							
							<li><a href="javascript:Carga('dashboard/content/venta.jsp','content','tablaVenta')">Ventas</a></li>
							<li><a href="javascript:Carga('dashboard/content/realizarVenta.jsp','content','tablaVenta')">Realizar Venta</a></li>
						</ul>
					</li>
					<li><a href="javascript:Carga('dashboard/content/cliente.jsp','content','tablaCliente')"><i class="icon-user"></i>Clientes </a></li>
					<li><a href="#menuUsuario" aria-expanded="false" data-toggle="collapse"><i class="icon-user"></i>Usuarios</a>
						<ul id="menuUsuario" class="collapse list-unstyled ">
							<li><a href="#">Usuario</a></li>
							<li><a href="#">Rol</a></li>
						</ul>
					</li>
				</ul>
			</nav>
			<!-- Content -->
			<div class="content-inner">
				<div id="content">
					<!-- Page Header-->
					<header class="page-header">
						<div class="container-fluid">
							<h2 class="no-margin-bottom">Dashboard</h2>
						</div>
					</header>
					<!-- Dashboard Counts Section-->
					<section class="dashboard-counts no-padding-bottom">
						<div class="container-fluid">
							<div class="row bg-white has-shadow">
								<!-- Item -->
								<div class="col-xl-3 col-sm-6">
									<div class="item d-flex align-items-center">
										<div class="icon bg-violet"><i class="icon-user"></i></div>
										<div class="title"><span>New<br>Clients</span>
											<div class="progress">
												<div role="progressbar" style="width: 25%; height: 4px;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"
												 class="progress-bar bg-violet"></div>
											</div>
										</div>
										<div class="number"><strong>25</strong></div>
									</div>
								</div>
								<!-- Item -->
								<div class="col-xl-3 col-sm-6">
									<div class="item d-flex align-items-center">
										<div class="icon bg-red"><i class="icon-padnote"></i></div>
										<div class="title"><span>Work<br>Orders</span>
											<div class="progress">
												<div role="progressbar" style="width: 70%; height: 4px;" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100"
												 class="progress-bar bg-red"></div>
											</div>
										</div>
										<div class="number"><strong>70</strong></div>
									</div>
								</div>
								<!-- Item -->
								<div class="col-xl-3 col-sm-6">
									<div class="item d-flex align-items-center">
										<div class="icon bg-green"><i class="icon-bill"></i></div>
										<div class="title"><span>New<br>Invoices</span>
											<div class="progress">
												<div role="progressbar" style="width: 40%; height: 4px;" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100"
												 class="progress-bar bg-green"></div>
											</div>
										</div>
										<div class="number"><strong>40</strong></div>
									</div>
								</div>
								<!-- Item -->
								<div class="col-xl-3 col-sm-6">
									<div class="item d-flex align-items-center">
										<div class="icon bg-orange"><i class="icon-check"></i></div>
										<div class="title"><span>Open<br>Cases</span>
											<div class="progress">
												<div role="progressbar" style="width: 50%; height: 4px;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"
												 class="progress-bar bg-orange"></div>
											</div>
										</div>
										<div class="number"><strong>50</strong></div>
									</div>
								</div>
							</div>
						</div>
					</section>
					<!-- Dashboard Header Section    -->
					<section class="dashboard-header">
						<div class="container-fluid">
							<div class="row">
								<!-- Statistics -->
								<div class="statistics col-lg-3 col-12">
									<div class="statistic d-flex align-items-center bg-white has-shadow">
										<div class="icon bg-red"><i class="fa fa-tasks"></i></div>
										<div class="text"><strong>234</strong><br><small>Applications</small></div>
									</div>
									<div class="statistic d-flex align-items-center bg-white has-shadow">
										<div class="icon bg-green"><i class="fa fa-calendar-o"></i></div>
										<div class="text"><strong>152</strong><br><small>Interviews</small></div>
									</div>
									<div class="statistic d-flex align-items-center bg-white has-shadow">
										<div class="icon bg-orange"><i class="fa fa-paper-plane-o"></i></div>
										<div class="text"><strong>147</strong><br><small>Forwards</small></div>
									</div>
								</div>
								<!-- Line Chart            -->
								<div class="chart col-lg-6 col-12">
									<div class="line-chart bg-white d-flex align-items-center justify-content-center has-shadow">
										<canvas id="lineCahrt"></canvas>
									</div>
								</div>
								<div class="chart col-lg-3 col-12">
									<!-- Bar Chart   -->
									<div class="bar-chart has-shadow bg-white">
										<div class="title"><strong class="text-violet">95%</strong><br><small>Current Server Uptime</small></div>
										<canvas id="barChartHome"></canvas>
									</div>
									<!-- Numbers-->
									<div class="statistic d-flex align-items-center bg-white has-shadow">
										<div class="icon bg-green"><i class="fa fa-line-chart"></i></div>
										<div class="text"><strong>99.9%</strong><br><small>Success Rate</small></div>
									</div>
								</div>
							</div>
						</div>
					</section>

					<section>
						<!-- Modal Form-->
						<div class="col-lg-4">
							<div class="card">
								<div class="card-header d-flex align-items-center">
									<h3 class="h4">Modal Form</h3>
								</div>
								<div class="card-body text-center">
									<button type="button" data-toggle="modal" data-target="#formActProveedor" class="btn btn-primary">Actualizar
										proveedor
									</button>

									<!-- Modal-->
									<div id="formActProveedor" tabindex="-1" role="dialog" aria-labelledby="formProveedorLabel" aria-hidden="true"
									 class="modal fade text-left">
										<div role="document" class="modal-dialog modal-lg">
											<div class="modal-content">
												<div class="modal-header">
													<h2 id="formProveedorLabel" class="modal-title">Actualizar proveedor</h2>
													<button type="button" data-dismiss="modal" aria-label="Close" class="close"><span aria-hidden="true">×</span></button>
												</div>
												<div class="modal-body">
													<form method="post" action="proveedorServlet">
														<div class=" row">
															<!-- Columna izquierda -->
															<div class="col-md-6">
																<!-- NIT -->
																<div class="form-group">
																	<label class="form-control-label">NIT</label>
																	<input type="text" name="nit" class="form-control" id="modal_nit" placeholder="NIT">
																</div>
																<!-- nombre -->
																<div class="form-group">
																	<label class="form-control-label">Nombre Proveedor</label>
																	<input type="text" name="nombreProv" id="nombreProv" class="form-control" placeholder="Nombre"
																	 required>
																</div>
																<!-- Email -->
																<div class="form-group">
																	<label class="form-control-label">Email</label>
																	<input type="email" name="email" id="email" class="form-control" placeholder="Email" required>
																</div>
																<!-- Direccion -->
																<div class="form-group">
																	<label class="form-control-label">Direccion</label>
																	<input type="text" name="direccion" id="direccion" class="form-control" placeholder="Direccion">
																</div>
															</div>

															<!-- Columna derecha -->
															<div class="col-md-6">
																<!-- contacto -->
																<div class="form-group">
																	<label class="form-control-label"> Nombre contacto</label>
																	<input type="text" name="nombreContacto" id="nombreContacto" class="form-control" placeholder="Contacto">
																</div>
																<!-- Telefono -->
																<div class="form-group">
																	<label class="form-control-label">Teléfono contacto</label>
																	<input type="text" name="telefono" id="telefono" class="form-control">
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
					<section class="container">
						<div class="card">
							<div class="card-header d-flex align-items-center">
								<h3 class="h4">Table</h3>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table id="Jtabla" cellpadding="0" cellspacing="0" border="0" class="table table-striped centered display">
										<thead>
											<tr>
												<th width="58" align="left">Codigo</th>
												<th width="274" align="left">Cliente</th>
												<th width="124" align="left">Nota Pedido</th>
												<th width="119" align="left">Estado Pedido</th>
												<th width="103" align="left">Importe</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1001</td>
												<td>Carlos Alcantara </td>
												<td>1203</td>
												<td>
													<button type="button" data-toggle="modal" id="${proveedor.nit}" data-target="#formActProveedor" class="btn"
													 onclick="editar(this)">
														<i class="material-icons my-icon ">edit</i>
													</button>
													<button type="button" data-toggle="modal" id="${proveedor.nit}" data-target="#formActProveedor" class="btn"
													 onclick="editar(this)">
														<i class="material-icons my-icon2">delete</i>
													</button>
												</td>
												<td>hola</td>
											</tr>
											<tr class="gradeA">
												<td>1018</td>
												<td>Alina Sereno </td>
												<td>1358</td>
												<td>Enviado</td>
												<td>50</td>
											</tr>
									</table>
								</div>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
		<!-- Page Footer-->
		<footer class="main-footer">
			<div class="container-fluid">
				<div class="row">
					<div class="col-sm-6">
						<p>Your company &copy; 2017-2019</p>
					</div>
					<div class="col-sm-6 text-right">
						<p>Design by <a href="https://bootstrapious.com/admin-templates" class="external">Bootstrapious</a></p>
						<!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
					</div>
				</div>
			</div>
		</footer>
	</div>
	
	<!-- Logout Modal-->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">¿Seguro Deseas
						Salir?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Seleccione "Salir" a continuación si
					está listo para finalizar su sesión actual.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancelar</button>
					<form method="get" action="loginServlet">
						<button class="btn btn-danger" type="submit">Salir</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	
	
	<!-- JavaScript files-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/popper.js/umd/popper.min.js"> </script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/jquery.cookie/jquery.cookie.js"> </script>
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
	<script src="js/charts-home.js"></script>
	<!-- Main File-->
	<script src="js/front.js"></script>
	<!-- DataTables -->
	<script type="text/javascript" src="https://cdn.datatables.net/v/bs4-4.1.1/dt-1.10.18/datatables.min.js"></script>

	<script type="text/javascript" src="js/main.js"></script>
	<script type="text/javascript" src="js/script.js"></script>
</body>

</html>
