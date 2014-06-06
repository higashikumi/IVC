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
            <!-- Start H1 Title -->
            <div class="titlesnormal">
                <h1>Solicitud de Visita</h1>
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

                        <div class="split23">
                            <h3></h3>
                            <span>Verifique la siguiente información para confirmar la visita</span>
                            <form>
                                <ul>
                                    <li class="tick">
                                        <label>Matrícula Establecimiento</label>
                                        <div>${establecimiento.matricula}</div>
                                    </li>
                                    <li class="tick">
                                        <label>Razón Social</label>
                                        <div>${establecimiento.razonSocial}</div>
                                    </li>
                                    
                                    <li class="tick">
                                        <label>Actividad Económica</label>
                                        <div><input type="text" value=""/></div>
                                    </li>

                                    <li class="tick">
                                        <label>Dirección</label>
                                        <div><input type="text" value="${establecimiento.direccion}"/></div>
                                    </li>
                                    <li class="tick">
                                        <label>Teléfono</label>
                                        <div><input type="text" value="${establecimiento.telefono}"/></div>
                                    </li>    
                                    <li class="tick">
                                        <label>Email</label>
                                        <div><input type="text" value=""/></div>
                                    </li>
                                    
                                    <li class="tick">
                                        <label>Horario de Atención</label>
                                        <div><input type="text" value=""/></div>
                                    </li>
                                    
                                    
                                </ul>
                                <div>
                                    * Al solicitar la visita confirmo que los datos son correctos.<br/>
                                    ** Si los datos presentan alguna inconsistencia debe acercarse a la cámara de comercio para la actualización de los mismos.
                                </div>
                                <div class="form-buttons">
                                    <a class="smallsmoothrectange blackbutton " href="establecimiento.htm" title="Enviar" id="send">Enviar</a>
                                    <a class="smallsmoothrectange blackbutton" href="establecimiento.htm" title="Enviar">Cancelar</a>
                                </div>
                            </form>
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
        <script type="text/javascript">
            $(document).ready(function(){
                $('#send').click(function(){
                   alert('Hemos recibido su solicitud. Pronto un funcionario estará visitando su establecimiento');
                });
            })
        </script>
    </body>
</html>