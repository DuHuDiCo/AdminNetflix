<section class="p-5">

    <div class="row">
        <div class="col m-3 shadow-lg p-3 mb-5 bg-white rounded">
            <div class="card p-5 border-0">
                <div class="card-body text-center">
                    <h5 class="card-title">Agregar Cuenta</h5>
                    <a class="btn btn-primary btn-block" data-bs-toggle="modal" data-bs-target="#agregarCuentaModal" data-remote="#"><i class="fas fa-plus"></i>Agregar</a>
                    <jsp:include page="/WEB-INF/usuario/agregarCuenta.jsp"/>
                </div>
            </div>
        </div>

        <div class="col m-3 shadow-lg p-3 mb-5 bg-white rounded">
            <div class="card p-5 border-0">
                <div class="card-body text-center">
                    <h5 class="card-title">Editar Cuenta</h5>
                    <a class="btn btn-primary btn-block" data-bs-toggle="modal" data-bs-target="#editarClienteModal" data-remote="#"><i class="fas fa-pen"></i>Agregar</a>
                    <jsp:include page="/WEB-INF/usuario/editarCuenta.jsp"/>
                </div>
            </div>
        </div>
        <div class="col m-3 shadow-lg p-3 mb-5 bg-white rounded">
            <div class="card p-5 border-0">
                <div class="card-body text-center">
                    <h5 class="card-title">Ver Cuentas Disponibles</h5>
                    <a href="verCuentasDisponibles.jsp" class="btn btn-primary"><i class="fas fa-search"></i>Ver Cuentas</a>
                </div>
            </div>
        </div>
    </div>


    <br>
    <div class="col-md-12 shadow-lg p-3 mb-5 bg-white rounded">
        <div class="card p-5 border-0">
            <div class="card-body text-center">
                <h5 class="card-title">Renovar Cuentas</h5>
                <a href="#" class="btn btn-primary">Renovar</a>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col m-3 shadow-lg p-3 mb-5 bg-white rounded">
            <div class="card p-5 border-0">
                <div class="card-body text-center">
                    <h5 class="card-title">Ver Todas las Cuentas</h5>
                    <a href="#" class="btn btn-primary">Ver Cuentas</a>
                </div>
            </div>
        </div>

        <div class="col m-3 shadow-lg p-3 mb-5 bg-white rounded">
            <div class="card p-5 border-0">
                <div class="card-body text-center">
                    <h5 class="card-title">Agregar Clientes</h5>
                    <a href="#" class="btn btn-primary">Agregar</a>
                </div>
            </div>
        </div>
        <div class="col m-3 shadow-lg p-3 mb-5 bg-white rounded">
            <div class="card p-5 border-0">
                <div class="card-body text-center">
                    <h5 class="card-title">Ver Clientes</h5>
                    <a href="#" class="btn btn-primary">Ver Clientes</a>
                </div>
            </div>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col m-3 shadow-lg p-3 mb-5 bg-white rounded">
            <div class="card p-5 border-0">
                <div class="card-body text-center">
                    <h5 class="card-title">Clientes Vencidos</h5>
                    <a href="#" class="btn btn-primary">Ver Vencidos</a>
                </div>
            </div>
        </div>
        <div class="col m-3 shadow-lg p-3 mb-5 bg-white rounded">
            <div class="card p-5 border-0">
                <div class="card-body text-center">
                    <h5 class="card-title">Editar Clientes</h5>
                    <a href="#" class="btn btn-primary">Editar</a>
                </div>
            </div>
        </div>

    </div>

</section>

