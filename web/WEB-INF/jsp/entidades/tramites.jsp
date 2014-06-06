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
                &gt; <a href="admintramites.htm">Trámites</a> 
            </div>
            <!-- Start H1 Title -->
            <div class="titlesnormal">
                <h1>Listado de Trámites</h1>
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
                            <div class="search"
                                <label>Búsqueda</label>
                                <input type="text" placeholder="Búsqueda de Tramite"/>
                                <select>
                                    <option>-- Seleccione Actividad Economica --</option>
                                    <option>1100 - Actividad 1</option>
                                    <option>1200 - Actividad 2</option>
                                    <option>1300 - Actividad 3</option>
                                    <option>1400 - Actividad 4</option>
                                    <option>1500 - Actividad 5</option>
                                </select>
                                <select>
                                    <option>-- Seleccione Entidad --</option>
                                    <option>Entidad A</option>
                                    <option>Entidad B</option>
                                    <option>Entidad C</option>
                                    <option>Entidad D</option>
                                </select>
                            </div>
                            <table class="ivc-table">
                                <thead>
                                    <tr>
                                        <th>Tramite</th>
                                        <th>Entidad</th>
                                        <th></th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Tramite A</td>
                                        <td>Cuerpo de Bomberos</td>                                        
                                        <td><a href="editartramite.htm">Editar</a></td>
                                    </tr>
                                    <tr>
                                        <td>Tramite B</td>
                                        <td>Cuerpo de Bomberos</td>                                        
                                        <td><a href="editartramite.htm">Editar</a></td>
                                    </tr>
                                    <tr>
                                        <td>Tramite C</td>
                                        <td>Cuerpo de Bomberos</td>                                        
                                        <td><a href="editartramite.htm">Editar</a></td>
                                    </tr>
                                    <tr>
                                        <td>Tramite D</td>
                                        <td>Cuerpo de Bomberos</td>                                        
                                        <td><a href="editartramite.htm">Editar</a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="form-buttons">
                           <a class="smallsmoothrectange blackbutton " href="editartramite.htm" title="Enviar" id="send">Crear Trámite</a>
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