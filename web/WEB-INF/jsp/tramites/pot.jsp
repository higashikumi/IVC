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
                &gt; <a href="#">Guía de Trámites</a>
            </div>
            <!-- Start H1 Title -->
            <div class="titlesnormal">
                <h1>Guía de Trámites</h1>
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
                            <h3>POT</h3>
                            <br/>
                            <h4>¿Qué es?</h4>
                            <div>
                                El Plan de Ordenamiento Territorial es la norma que define cómo puede la ciudad hacer uso de su suelo y dónde están las áreas protegidas, en qué condiciones se puede ubicar vivienda, actividades productivas, culturales y de esparcimiento.
                            </div>
                            <br/>
                            <h4>Finalidad</h4>
                            <div>
                                <br>Mejorar la calidad de vida de los habitantes, mediante el acceso a oportunidades y beneficios que ofrece el desarrollo de la ciudad
                                <br>Garantizar que todos los ciudadanos tengamos acceso a los servicios comunes de la ciudad: vías, parques, colegios, hospitales, servicios públicos, vivienda digna
                                <br>Procurar la utilización racional del suelo para favorecer el interés común, la sostenibilidad ambiental y la preservación del patrimonio
                                <br>Velar por la sostenibilidad ambiental y la seguridad de la población ante riesgos naturales.
                            </div>
                            <br/>
                            <a href="http://www.sdp.gov.co/portal/page/portal/PortalSDP/POT_2020">Ver más información</a>                
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
            })
        </script>
    </body>
</html>