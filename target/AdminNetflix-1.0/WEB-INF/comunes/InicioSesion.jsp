<div class="container ">
    <div class="row vh-100 justify-content-around align-items-center" >
        <div class="col-md-6   ">
            <div class="card shadow-lg p-3 mb-5 bg-white rounded">
                <div class="card-header text-center bg-info text-white ">
                    <h2>Iniciar Sesion</h2>
                </div>
                <div class="card-body">
                    <form action="ServletControlador?accion=iniciar" method="post">
                        <div class="form-group ">
                            <label class="h5" for="email">Email</label>
                            <input type="email" class="form-control form-control-lg " name="email"  placeholder="Ingrese su email" required="">
                        </div>
                        <br>
                        <div class="form-group">
                            <label class="h5" for="password">Contraseña</label>
                            <input type="password" class="form-control form-control-lg" name="password" placeholder="Contraseña" required="">
                        </div>
                        <br>
                        <section id="actions" class=" mb-4 bg-white">
                            <div class="container ">
                                <div class="row text-center">
                                    <div class="col-md-12">
                                        <a href="ServletControlador?accion=crearUsuario" class="btn btn-link " >Crear Cuenta</a>
                                    </div>
                                </div>

                                <div class="row ">
                                    <div class="col-md-12 text-center">
                                        <button type="submit" class="btn btn-primary  btn-lg col-md-6">
                                            Iniciar Sesion
                                        </button>

                                    </div>
                                </div>
                                <br>
                                <div class="row text-center">
                                    
                                    <h6 class="text-danger">${error}</h6>
                                </div>
                            </div>
                        </section>
                    </form>
                </div>  
            </div>
        </div>

    </div>
</div>
