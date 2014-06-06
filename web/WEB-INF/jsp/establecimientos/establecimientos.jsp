<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <jsp:include page="../../template/head.jsp" />
    <body>
        <jsp:include page="../../template/header.jsp" />
        <div id="main">
            <div class="general-mapper">
                &gt; <a href="establecimientos.htm">Establecimientos</a>
            </div>
            <div class="titlesnormal">
                <h1>Inspección, Vigilancia y Control</h1>
                <span></span>
            </div>
            <div id="main-wrap">
                <div class="boxes-full">
                    <div class="boxes-padding fullpadding choose-entidad">
                        <hr />           
                        <div class="split3">
                            <jsp:include page="../../template/leftmenu.jsp" />
                        </div>
                        <div class="split23">
                            <h3>Establecimientos</h3>
                            <div>
                                Los siguientes establecimientos corresponden al NIT:

                                <c:out value="${empresa.nit}"/>
                                -
                                <c:out value="${empresa.digitoVerificacion}"/>
                            </div>
                            <table class="ivc-table">
                                <thead>
                                    <tr>
                                        <th>Matricula</th>
                                        <th>Razon Social</th>
                                        <th>Fecha de Matrícula</th>
                                        <th>Dirección</th>
                                        <th></th>
                                        <th></th>
                                    </tr>

                                </thead>
                                <tbody>
                                    <c:if test="${not empty estab}">
                                        <c:forEach var="ob" varStatus="status" items="${estab}">
                                            <tr>
                                                <td><c:out value="${ob.matricula}"/></td>
                                                <td><c:out value="${ob.razonSocial}"/></td>
                                                <td><c:out value="${ob.fechaRenovacionMatricula}"/></td>
                                                <td><c:out value="${ob.direccion}"/></td>
                                                <td><a href="establecimiento.htm?matricula=${ob.matricula}">Detalle</a></td>
                                                <td>
                                                    <ul class="action-opts">
                                                        <li><a href="#" class="actions">Consultar</a>
                                                            <ul>
                                                                <li><a href="autoregulacion.htm?est=${ob.matricula}">Autoregulación</a></li>
                                                                <li>
                                                                    <a href="#">Solicitud de Visita</a>
                                                                    <ul class="sub-action">
                                                                        <li><a href="solicitarvisita.htm?est=${ob.matricula}&ent=ambiente">Secretaria de Ambiente</a></li>
                                                                        <li><a href="solicitarvisita.htm?est=${ob.matricula}&ent=salud">Secretaria Salud</a></li>
                                                                    </ul>
                                                                </li>
                                                                <li>
                                                                    <a href="estadovisitas.htm?est=${ob.matricula}&ent=ambiente">Estado de Solicitud</a>
                                                                    <!--<ul class="sub-action">
                                                                        <a href="estadovisitas.htm?est=${ob.matricula}&ent=ambiente">Secretaria de Ambiente</a>
                                                                        <a href="estadovisitas.htm?est=${ob.matricula}&ent=salud">Secretaria Salud</a>
                                                                        <a href="estadovisitas.htm?est=${ob.matricula}&ent=bomberos">Cuerpo de Bomberos</a>
                                                                    </ul>
                                                                    -->
                                                                </li>
                                                                <li><a href="resultadovisitas.htm?est=${ob.matricula}">Resultado de Visita</a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </c:if>
                                </tbody>
                            </table>
                        </div>
                        <div class="clear"></div>
                        <hr />
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="../../template/footer.jsp" />
        <script type="text/javascript">
            $(function() {
                $( ".action-opts" ).menu();
            });
            
            $(document).ready(function(){
                $('.action-opts a').click(function(e){
                    e.preventDefault();
                })
            })
        </script>
    </body>
</html>