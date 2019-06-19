<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>

<!-- MODAL FORM EMPLEADO -->
<div class="modal fade" id="formEmpleado" tabindex="-1" role="dialog" aria-labelledby="formEmpleadoLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header ">
                <h2 class="modal-title titulo" id="formEmpleadoLabel">Registro
                    de empleado</h2>
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

                            <!-- Nombre -->
                            <div class="form-group">
                                <label><strong style="color: red;">* </strong><strong>Nombre</strong></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><span class="fa fa-user"></span></span>
                                    </div>
                                    <input type="text" name="nombre" class="form-control" required>
                                </div>
                            </div>

                            <!-- Tipo de documento -->
                            <div class="form-group">
                                <label><strong style="color: red;">* </strong><strong>Tipo
                                        de documento</strong></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><span class="fa fa-id-card"></span></span>
                                    </div>
                                    <select class="form-control" name="tipodoc" required>
                                        <option value="cc">cc </option>
                                        <option value="cx">cx</option>
                                    </select>
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
                                        <input type="password" name="clave" class="form-control">
                                    </div>
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

                        <!-- Columna derecha -->
                        <div class="col-md-5">

                            <!-- Apellido -->
                            <div class="form-group">
                                <label><strong style="color: red;">* </strong><strong>Apellido </strong></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><span class="fa fa-user"></span></span>
                                    </div>
                                    <input type="text" name="apellido1" class="form-control">
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
                                    <label><strong style="color: red;">* </strong><strong>Confirmar contraseña</strong></label>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><span class="fa fa-phone"></span></span>
                                        </div>
                                        <input type="password" name="confClave" class="form-control">
                                    </div>
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
                                        <option value="nose">nose </option>
                                        <option value="nose">nose</option>
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
                        <button class="btn btn-default" type="button" data-dismiss="modal">Cancelar</button>
                        <button type="submit" class="btn btn-primary">Guardar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>