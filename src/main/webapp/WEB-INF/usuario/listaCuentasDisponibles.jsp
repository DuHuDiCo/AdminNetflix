<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:setLocale value="es_Co"/>

<section id="clientes">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h4>Listado de Cuentas</h4>
                    </div>
                    
                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>Correo</th>
                                <th>Saldo</th>
                                <th></th>
                            </tr>
                            
                        </thead>
                        <tbody>
                            <!-- iterera cada uno de los elemntos -->
                            <c:forEach var="client" items="${clientes}" varStatus="status">
                                <tr>
                                    <td>${status.count}</td>
                                    <td>${client.nombre} ${client.apellido}</td>
                                    <td><fmt:formatNumber value="${client.saldo}" type="currency"/></td>
                                    <td>
                                        <a href="ServletControlador?accion=editar&idCliente=${client.idCliente}" class="btn btn-secondary">
                                            <i class="fas fa-pen-alt"></i>Editar 
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>                
            </div>
        
        <!-- tarjetas laterales -->
            <div class="col-md-4">
                <div class="card text-center bg-danger text-white mb-3">
                    <div class="card-body">
                        <h3>Saldo Total</h3>
                        <h6 class="display-6">
                            <fmt:formatNumber value="${saldoTotal}" type="currency"/>
                        </h6>
                    </div>
                </div>
                <div class="card text-center bg-success text-white mb-3">
                    <div class="card-body">
                        <h3>Total Clientes Registrados</h3>
                        <h6 class="display-6">
                            <i class="fas fa-users"></i>${totalClientes} 

                        </h6>
                    </div>
                </div>        

            </div>
        </div>                  
    </div>
</section>                        
<!-- agregar cleinte modal -->    


                        
                        