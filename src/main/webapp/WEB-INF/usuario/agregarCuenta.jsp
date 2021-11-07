<div class="modal fade" id="agregarCuentaModal">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-info text-white " >
                <h5 class="modal-title ">Agregar Cuenta</h5>
                <button class="btn btn-info" data-bs-dismiss="modal">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            <form action="ServletControlador?accion=agregarCuenta" method="post" >
                <div class="modal-body ">
                    <div class="form-group ">
                        <lable for="email"><h6 class="card-title">Correo Cuenta</h6></lable>
                        <input type="email" class="form-control" name="email" required="">
                    </div>
                    <div class="form-group">
                        <lable for="apellido"><h6 class="card-title">Contraseña Cuenta</h6></lable>
                        <input type="text" class="form-control" name="password" required="">

                    </div>                    
                    <div class="form-group">
                        <lable for="plataforma"><h6 class="card-title">Plataforma</h6></lable>
                        <select class="form-select" name="plataforma">
                            <option selected>Seleccionar Tipo Plataforma</option>
                            <option value="netflix">Netflix</option>
                            <option value="amazon">Amazon</option>
                            <option value="disney">Disney</option>
                            <option value="hbo">HBO</option>
                        </select>
                    </div>          
                    <div class="form-group">
                        <lable for="estado"><h6 class="card-title">Estado de Cuenta</h6></lable>
                        <select class="form-select" name="estado">
                            <option selected>Seleccionar Estado Cuenta</option>
                            <option value="disponible">Disponible</option>
                            <option value="no disponible">No Disponible</option>                           
                        </select>
                    </div>  
                    <br>
                    <!--
                    <div class="row">
                        <div class="col">
                            <lable for="perfil1"><h6 class="card-title">Perfil 1</h6></lable>
                            <input type="text" class="form-control" name="nombrePerfil1" placeholder="Nombre Perfil" >
                            <input type="text" class="form-control" name="pinPerfil1" placeholder="Pin" >
                        </div>
                        <div class="col">
                            <lable for="perfil2"><h6 class="card-title">Perfil 2</h6></lable>
                            <input type="text" class="form-control" name="nombrePerfil2" placeholder="Nombre Perfil" >
                            <input type="text" class="form-control" name="pinPerfil2" placeholder="Pin" >
                        </div>
                        <div class="col">
                            <lable for="perfil3"><h6 class="card-title">Perfil 3</h6></lable>
                            <input type="text" class="form-control" name="nombrePerfil3" placeholder="Nombre Perfil" >
                            <input type="text" class="form-control" name="pinPerfil3" placeholder="Pin" >
                        </div>
                    </div>
                    <div class="row justify-content-center">
                        <div class="col-4">
                            <lable for="perfil4"><h6 class="card-title">Perfil 4</h6></lable>
                            <input type="text" class="form-control" name="nombrePerfil4" placeholder="Nombre Perfil" >
                            <input type="text" class="form-control" name="pinPerfil4" placeholder="Pin" >
                        </div>
                        <div class="col-4">
                            <lable for="perfil5"><h6 class="card-title">Perfil 5</h6></lable>
                            <input type="text" class="form-control" name="nombrePerfil5" placeholder="Nombre Perfil" >
                            <input type="text" class="form-control" name="pinPerfil5" placeholder="Pin" >
                        </div>
                    </div>
                    -->
                    <br>
                    <div class="row">
                        <div class="col-md-6">
                            <lable for="FechaCreacion"><h6 class="card-title">Fecha Creacion</h6></lable>
                            <input type="date" class="form-control" name="fecha_creacion" >
                        </div>
                        <div class="col-md-6">
                            <lable for="FechaCreacion"><h6 class="card-title">Fecha Vencimiento</h6></lable>
                            <input type="date" class="form-control" name="fecha_vencimiento" >
                        </div>
                    </div>
                    <br>
                    
                    
                    <div class="modal-footer">
                        <lable><h6 class="text-success">${mensaje}</h6></lable>
                        <button class="btn btn-primary" type="submit">Guardar</button>
                    </div>
            </form>
        </div>
    </div>
</div>
</div>