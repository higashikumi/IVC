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
                &gt; <a href="adminactividades.htm">Actividades Económicas</a> &gt; <a href="#" class="capitalized">Edición de actividad</a>
            </div>
            <!-- Start H1 Title -->
            <div class="titlesnormal">
                <h1>Creación de Actividades Económicas</h1>
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
                            <div class="form-container">
                                <form action="" method="POST">

                                    <label>Nombre</label>
                                    <input type="text" class="contacttextform" placeholder="trámite" name="" value=""/>
                                    
                                    <label>CIUU</label>
                                    <input type="text" class="contacttextform" placeholder="CIUU" name="" value=""/>
                                    

                                    <label>Descripción</label>
                                    <textarea></textarea>                                    

                                    <label>Trámites asociados (Aqui se creará un mecanismo de búsqueda completo para seleccionar trámites)</label>
                                    <select multiple>                                        
                                        <option>Entidad A</option>
                                        <option>Entidad B</option>
                                        <option>Entidad C</option>
                                        <option>Entidad D</option>
                                    </select>
                                    
                                    <div class="clear"></div>


                                    <div class="form-buttons">
                                        <a class="smallsmoothrectange blackbutton " href="adminactividades.htm" title="Aceptar" id="send">Aceptar</a>
                                        <a class="smallsmoothrectange blackbutton " href="adminactividades.htm" title="Cancelar" id="send">Cancelar</a>
                                    </div>
                                </form>
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
            })
        </script>
    </body>
</html>