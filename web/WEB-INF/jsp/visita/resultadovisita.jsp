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
                &gt; <a href="establecimientos.htm">Establecimientos</a> &gt; <a href="#" class="capitalized">Resultado de Visita: ${establecimiento.razonSocial}</a>
            </div>
            <!-- Start H1 Title -->
            <div class="titlesnormal">
                <h1>Resultado de Visitas</h1>
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
                            <table class="ivc-table">
                                <thead>
                                    <tr>
                                        <th>Solicitud</th>
                                        <th>No. Radicado</th>
                                        <th>Fecha de la Visita</th>
                                        <th>Estado</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Visita Técnica de Bomberos</td>
                                        <td>0123456789</td>
                                        <td>06/03/2014</td>
                                        <td><a href="#" class="d-fav">Favorable</a></td>
                                    </tr>
                                    <tr>
                                        <td>Visita Técnica de Secretaría de Ambiente</td>
                                        <td>0123456789</td>
                                        <td>06/03/2014</td>
                                        <td><a href="#" class="d-apl">Aplazado</a></td>
                                    </tr>
                                    <tr>
                                        <td>Visita Técnica de Secretaría de Salud</td>
                                        <td>0123456789</td>
                                        <td>06/03/2014</td>
                                        <td><a href="#" class="d-fav">Favorable</a></td>
                                    </tr>
                                    <tr>
                                        <td>Visita Técnica de Sayco & Acinpro   </td>
                                        <td>0123456789</td>
                                        <td>06/03/2014</td>
                                        <td><a href="#" class="d-neg">Negado</a></td>
                                    </tr>
                                </tbody>
                            </table>
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
         <script>
            $(document).ready(function(){
                $('.d-fav').click(function(e){
                    alert('La visita ha sido favorable.');
                    e.preventDefault();
                });
                $('.d-apl').click(function(e){
                    alert('La visita ha sido aplazada.\n\n Razones\n\n 1. Se encontraron problemas con el uso del suelo\n\n 2. Se encontraron problemas de aireación');
                    e.preventDefault();
                });
                
                $('.d-neg').click(function(e){
                    alert('La visita fue desfavorable.\n\n Razones\n\n 1. Se encontraron problemas con el uso del suelo\n\n 2. Se encontraron problemas de aireación');
                    e.preventDefault();
                });
            });
        </script> 
    </body>
</html>