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
                <h1>Estado de las Visitas</h1>
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
                            <h3>Resultado de la Visita - </h3>
                            <ul>
                                <li class="tick">
                                    <label>Fecha de Radicación:</label>
                                    <div>20/10/2013</div>
                                </li>
                                
                                <li class="tick">
                                    <label>Estado:</label>
                                    <div>Visitado</div>
                                </li>
                                
                                <li class="tick">
                                    <label>Concepto:</label>
                                    <div>Favorable</div>
                                </li>
                                
                                <li class="tick">
                                    <label>Descripción:</label>
                                    <div>La visita se realizó en las oficinas del cliente. Queda pendiente la entrega del documento clasificatorio......</div>
                                </li>
                            </ul>
                            <div>


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
        <script type="text/javascript">
            $(document).ready(function(){
                $('#send').click(function(){
                    alert('Hemos recibido su solicitud. Pronto un funcionario estará visitando su establecimiento');
                });
            })
        </script>

    </body>
</html>