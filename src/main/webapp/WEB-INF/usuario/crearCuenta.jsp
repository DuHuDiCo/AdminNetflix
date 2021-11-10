    <html>
        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
            <script src="https://kit.fontawesome.com/e378c15e24.js" crossorigin="anonymous"></script>
            <title>Crear Usuario</title>
        </head>
        <body class="bg-light">
            <div class="container ">
                <div class="row vh-100 justify-content-around align-items-center" >
                    <div class="col-md-6   ">
                        <div class="card shadow-lg p-3 mb-5 bg-white rounded">
                            <div class="card-header text-center bg-info text-white ">
                                <h2>Crear Usuario</h2>
                            </div>
                            <div class="card-body">
                                <form action="ServletControlador?accion=crearCuentaUsuario" method="post" class="">
                                    <div class="form-group ">
                                        <label class="h5" for="nombre">Nombre</label>
                                        <input type="nombre" class="form-control form-control-lg " name="nombre"  placeholder="Ingrese su Nombre" required="">
                                    </div>
                                    <br>
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
                                    <section id="actions" class="py-4 mb-4 bg-white">
                                        <div class="container">
                                            <div class="row text-center">
                                                <div class="col-md-6">
                                                    <a href="index.jsp" class="btn btn-white btn-block btn-lg">
                                                        <i class="fas fa-arrow-left"></i>Regresar al Inicio
                                                    </a>
                                                </div>
                                                <div class="col-md-6">
                                                    <button type="submit" class="btn btn-primary btn-block btn-lg">
                                                        <i class="fas fa-check"></i>Crear Cuenta
                                                    </button>
                                                </div>
                                            </div>

                                        </div>
                                    </section>
                                </form>
                            </div>  
                        </div>
                    </div>

                </div>
            </div>



        </body>
    </html>

