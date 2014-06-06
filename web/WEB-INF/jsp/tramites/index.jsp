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
                            <h3></h3>
                            <form>
                                <ul class="form-ul">
                                    <li>
                                        <label>Nombre de Trámite</label>
                                        <div><input type="text" placeholder="tramite"/></div>
                                    </li>
                                    
                                    <li>
                                        <label>Actividad Económica</label>
                                        <div><input type="text" placeholder="Actividad Económica"/></div>
                                    </li>
                                </ul>
                                 <div class="form-buttons">
                                    <a class="smallsmoothrectange blackbutton " href="resultados.htm" title="Enviar" id="send">Consultar</a>
                                    <a class="smallsmoothrectange blackbutton" href="tramite.htm" title="Enviar">Cancelar</a>
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
            })
        </script>
    </body>
</html>