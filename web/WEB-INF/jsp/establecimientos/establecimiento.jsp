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
                &gt; <a href="establecimientos.htm">Establecimiento</a>
            </div>
            <!-- Start H1 Title -->
            <div class="titlesnormal">
                <h1>Consultar establecimiento</h1>
                <span></span>
            </div>
            <!-- End H1 Title -->
            <!-- Start Main Body Wrap -->
            <div id="main-wrap">
                <!-- Start Latest Project titles -->
                <div class="boxes-full">
                    <div class="boxes-padding fullpadding choose-entidad">
                        <hr />                
                        <div class="split3">
                            <jsp:include page="../../template/leftmenu.jsp" />
                        </div>

                        <div>
                            <h3>Datos del Establecimiento</h3>
                        
                        <!-- <div class="split23"> -->
                            <div class="split2">
                                <div class="">
                                    <ul>
                                        <li class="tick">
                                                <label>Prueba 1: </label>
                                                <div> Rta prueba 1</div>
                                        </li>
                                        <li class="tick">
                                                <label>Prueba 2: </label>
                                                <div> Rta prueba 2</div>
                                        </li>
                                        <li class="tick">
                                                <label>Prueba 3: </label>
                                                <div> Rta prueba 3</div>
                                        </li>
                                        <c:if test="${not empty establecimiento.matricula}">
                                            <li class="tick">
                                                <label>Matricula Mercantil</label>
                                                <div>${establecimiento.matricula}</div>
                                            </li>
                                        </c:if>
                                        <c:if test="${not empty establecimiento.fechaMatricula}">
                                            <li class="tick">
                                                <label>Fecha Matricula</label>
                                                <div>${establecimiento.fechaMatricula}</div>
                                            </li>
                                        </c:if>
                                        <c:if test="${not empty establecimiento.razonSocial}">
                                            <li class="tick">
                                                <label>Razón Social</label>
                                                <div>${establecimiento.razonSocial}</div>
                                            </li>
                                        </c:if>
                                        <c:if test="${not empty establecimiento.organizacionJuridica}">
                                            <li class="tick">
                                                <label>Organizacion Juridica</label>
                                                <div>${establecimiento.organizacionJuridica}</div>
                                            </li>
                                        </c:if>
                                        <c:if test="${not empty establecimiento.direccion}">
                                            <li class="tick">
                                                <label>Dirección</label>
                                                <div>${establecimiento.direccion}</div>
                                            </li>
                                        </c:if>
                                        <c:if test="${not empty establecimiento.telefono}">
                                            <li class="tick">
                                                <label>Teléfono</label>
                                                <div>${establecimiento.telefono}</div>
                                            </li>
                                        </c:if>
                                        <c:if test="${not empty establecimiento.edoMatricula}">
                                            <li class="tick">
                                                <label>Estado Matricula</label>
                                                <div>${establecimiento.edoMatricula}</div>
                                            </li>
                                        </c:if>

                                        <c:if test="${not empty establecimiento.fechaCancelacionMatricula}">
                                            <li class="tick">
                                                <label>Cancelación Matricula</label>
                                                <div>${establecimiento.fechaCancelacionMatricula}</div>
                                            </li>
                                        </c:if>

                                        <c:if test="${not empty establecimiento.fechaRenovacionMatricula}">
                                            <li class="tick">
                                                <label>Renovación Matricula</label>
                                                <div>${establecimiento.fechaRenovacionMatricula}</div>
                                            </li>
                                        </c:if>

                                        <c:if test="${not empty establecimiento.fechaRenovacionCCB}">
                                            <li class="tick">
                                                <label>Renovación CCB</label>
                                                <div>${establecimiento.fechaRenovacionCCB}</div>
                                            </li>
                                        </c:if>                                      
                                    </ul> 
                                    
                                    <a href="representante.htm">Ver información acerca del representante legal</a>    
                                </div> 
                            </div>     
                        </div>
                        <div class="clear"></div>
                        <hr />
                        <div class="splitnone">
                        </div>                        
                        <hr/>
                    </div>
                </div>
                <!-- End Latest Project titles -->

            </div>
            <!-- End Main Body Wrap -->

        </div>
        <jsp:include page="../../template/footer.jsp" />
    </body>
</html>