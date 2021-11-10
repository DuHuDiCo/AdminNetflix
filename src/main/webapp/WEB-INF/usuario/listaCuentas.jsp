<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="es_Co"/>

<section id="clientes">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card ">
                    <div class="card-header " >
                        <div class="row">
                            <div class="col-md-6">
                                <h4>Listado de Cuentas</h4>
                            </div>
                            <form action="ServletControlador?accion=filtrar" method="post" class="form-group col-md-4">
                                <div class=" d-md-flex">
                                    <select class="form-select" name="filtro">
                                        <option value="disponible">Seleccionar Opcion</option>
                                        <option value="disponible">Disponible</option>
                                        <option value="no disponible">No Disponible</option>
                                    </select>

                                    <button type="submit" class="btn btn-primary btn-block ">
                                        Filtrar
                                    </button>
                                </div>
                            </form>
                            <div class="col-md-2  text-center justify-content-md-start">
                                <a href="adminUsuario.jsp" class="btn btn-light btn-block bg-white ">
                                    <i class="fas fa-arrow-left"></i>Regresar al Inicio
                                </a>
                            </div>

                        </div>
                    </div>

                    <table class="table table-striped ">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>Correo</th>
                                <th>Contraseña</th>
                                <th>Plataforma</th>
                                <th>Fecha Creacion</th>
                                <th>Fecha Vencimiento</th>
                                <th>Estado Cuenta</th>
                                <th></th>
                            </tr>

                        </thead>
                        <tbody>
                            <!-- iterera cada uno de los elemntos -->
                            <c:forEach var="cuenta" items="${cuentas}" varStatus="status">
                                <tr>
                                    <td>${status.count}</td>
                                    <td>${cuenta.email}</td>
                                    <td>${cuenta.password}</td>
                                    <td>${cuenta.plataforma}</td>
                                    <td>${cuenta.fecha_creacion}</td>
                                    <td>${cuenta.fecha_vencimiento}</td>
                                    <td>${cuenta.estado}</td>
                                    <td>
                                        <a href="" class="btn btn-secondary">
                                            <i class="fas fa-pen-alt"></i>Editar 
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>                
            </div>
        </div>
        <div class="container">
            <div class="row justify-content-center p-5">  
                <div class="col-md-6">
                    <!-- tarjetas laterales -->
                    <div class="card text-center bg-success text-white mb-3">
                        <div class="card-body">
                            <h3>Total Cuentas Disponibles Registradas</h3>
                            <h6 class="display-6">
                                <i class="fas fa-users"></i>${totalCuentas} 

                            </h6>
                        </div>
                    </div>    
                </div>
            </div>
        </div>
    </div>
</section>                        
<!-- agregar cleinte modal -->    



