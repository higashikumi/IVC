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
                            Solicite el concepto técnico al Cuerpo Oficial de Bomberos de Bogotá
                            <br>Para ello siga los siguientes pasos: 
                            <br>1. Acercarse a uno de los siguientes puntos y realizar la liquidación del pago: 
                                <center>SuperCADE CAD, Carrera 30 No. 24-90.
                                <br>SuperCADE Suba, calle 145 No. 103 B - 90.
                                <br>Oficina de Atención al Ciudadano del Cuerpo Oficial de Bomberos, Calle 20 Nº 68 A - 68.</center>
                            Al momento de solicitar la liquidación presentar los documentos necesarios, según el tipo de establecimiento.
                            <br>2. Consignar en cualquier sucursal del Banco de Occidente en la Cuenta Corriente Nº 25604582-4 a nombre de la Tesorería Distrital.
                            <br>3. Realizar la radicación. 
                            <br><br> <a href="http://www.bomberosbogota.gov.co/content/view/1571/76/">Ver más información</a>
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