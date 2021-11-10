<div class="modal fade " id="editarClienteModal">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-info text-white " >
                <h5 class="modal-title ">Editar Cuenta</h5>
                <button class="btn btn-info" data-bs-dismiss="modal">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            <form action="ServletControlador?accion=insertar" method="post" >
                <div class="modal-body ">
                    <lable for=""><h6 class="card-title">Buscar Correo</h6></lable>
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="Ingrese el Correo de La Cuenta a Editar" aria-label="Recipient's username" aria-describedby="basic-addon2">
                        <div class="input-group-append">
                            <a class="btn btn-primary btn-lg fas fa-search" type="button"></a>
                        </div>
                    </div>
                    <div class="form-group ">
                        <lable for="email"><h6 class="card-title">Correo Cuenta</h6></lable>
                        <input type="email" class="form-control" name="email" required="">
                    </div>
                    <div class="form-group">
                        <lable for="apellido"><h6 class="card-title">Contraseña Cuenta</h6></lable>
                        <input type="text" class="form-control" name="apellido" required="">

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
                    
                    <div class="row">
                        <div class="col-md-6">
                            <lable for="FechaCreacion"><h6 class="card-title">Fecha Creacion</h6></lable>
                            <input type="date" class="form-control" name="calendar" >
                        </div>
                        <div class="col-md-6">
                            <lable for="FechaCreacion"><h6 class="card-title">Fecha Vencimiento</h6></lable>
                            <input type="date" class="form-control" name="calendar" >
                        </div>
                    </div>
                    <br>

                </div>  
                <div class="modal-footer">
                    <button class="btn btn-primary btn-lg " type="submit"><i class="fas fa-pen"></i>Editar</button>
                </div>
            </form>
        </div>
    </div>
</div>