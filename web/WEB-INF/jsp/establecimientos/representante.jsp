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
                <h1>Consulta Establecimiento</h1>
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
                            <h3>Datos del Representante Legal</h3>
                        
                        <!-- <div class="split23"> -->
                            <div class="split2">
                                <div class="">
                                    <ul>
                                        <c:if test="${not empty establecimiento.repLegal.nombre}">
                                            <li class="tick">
                                                <label>Nombre</label>
                                                <div>${establecimiento.repLegal.nombre}</div>
                                            </li>
                                        </c:if>
                                        <c:if test="${not empty establecimiento.repLegal.identificacion}">
                                            <li class="tick">
                                                <label>Identificación</label>
                                                <div>${establecimiento.repLegal.identificacion}</div>
                                            </li>
                                        </c:if>
                                        <c:if test="${not empty establecimiento.repLegal.direccion}">
                                            <li class="tick">
                                                <label>Dirección</label>
                                                <div>${establecimiento.repLegal.direccion}</div>
                                            </li>
                                        </c:if>
                                        <c:if test="${not empty establecimiento.repLegal.telefono}">
                                            <li class="tick">
                                                <label>Teléfono</label>
                                                <div>${establecimiento.repLegal.telefono}</div>
                                            </li>
                                        </c:if>
                                    </ul>
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