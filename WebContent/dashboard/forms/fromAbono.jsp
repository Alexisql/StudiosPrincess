<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>

<div class="modal fade" id="formProducto" tabindex="-1" role="dialog" aria-labelledby="formProductoLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header ">
                <h2 class="modal-title titulo" id="formProductoLabel">Registro
                    de producto</h2>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <!-- Modal body -->
            <div class="modal-body">
                <form method="post" action="">
                    <div class=" row justify-content-around">

                        <!-- Columna izquierda -->
                        <div class="col-md-5">

                            <!-- Fecha -->
                            <div class="form-group">
                                <label><strong> Fecha </strong></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <ion-icon name="calendar"></ion-icon>
                                        </span>
                                    </div>
                                    <input type="date" name="fechaAbono" class="form-control">
                                </div>
                            </div>
                        </div>

                        <!-- Columna derecha -->
                        <div class="col-md-5">
                            
                            <!-- valor -->
                            <div class="form-group">
                                <label><strong> Valor </strong></label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text">
                                            <ion-icon name="cash"></ion-icon>
                                        </span>
                                    </div>
                                    <input type="text" name="valor" class="form-control">
                                </div>
                            </div>

                        </div>

                    </div>
                    <br>
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