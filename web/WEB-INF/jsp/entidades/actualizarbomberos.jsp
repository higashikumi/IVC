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
                &gt; <a href="establecimientos.htm">Establecimientos</a> &gt; <a href="#" class="capitalized">Estado de Visita: ${establecimiento.razonSocial}</a>
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
                            <h3>Agregue el Archivo para Actualizar la Base de datos</h3>                            
                            <form  style="margin-top:40px;">
                                <input type="file[]" />
                                <a class="smallsmoothrectange blackbutton " href="visitasentidad.htm" title="Enviar" id="send">Enviar</a>
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