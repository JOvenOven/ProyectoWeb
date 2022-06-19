<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<fmt:setLocale value="es_MX"/>

<section id="clientes">
    <div class="container">
        <div class="row">
            <div class="col-md-9">
                <div class="card">
                    <div class="card-header">
                        <h4>Listado de Entidades Federativas</h4>
                    </div>
                    <table class="table table-striped">
                        <thead class="thead-dark">
                            <tr>
                                <th>#</th>
                                <th>Nombre</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Iteramos cada elemento de la lista de Entidades Federativas -->
                            <c:forEach var="ef" items="${efs}" varStatus="status" >
                                <tr>
                                    <td>${status.count}</td>
                                    <td>${ef.nombreEnt}</td>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/ServletControladorEF?accion=editar&idEnt=${ef.idEnt}"
                                           class="btn btn-secondary">
                                            <i class="fas fa-angle-double-right"></i> Editar
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <!--Inicio Tarjetas para los totales-->
            <div class="col-md-3">
                <div class="card text-center bg-success text-white mb-3">
                    <div class="card-body">
                        <h3>Total Entidades Federativas</h3>
                        <h4 class="display-4">
                            <i class="fas fa-users"></i> ${totalEntidadesFederativas}
                        </h4>
                    </div>
                </div>        
            </div>
            <!--Fin Tarjetas para los totales-->
        </div>
    </div>
</section>

<!-- Agregar usuario MODAL -->

<jsp:include page="/WEB-INF/paginas/entidadFederativa/agregarEF.jsp"/>