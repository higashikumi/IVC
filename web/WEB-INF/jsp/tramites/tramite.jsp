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
                &gt; <a href="tramites.htm">Guía de Trámites</a> &gt; <a href="resultados.htm">Resultados</a>&gt; <a href="#">Descripción Trámite</a>
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
                           <div  class="res-tramite">
                                
                               <h3>Nombre del Trámite</h3>
                               <br/>
                               <h4>Descripción</h4>
                                <div>
                                    Tramite para realizar la implementación de los esquemas de .....
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nulla enim, consequat id convallis et, rhoncus et elit. Ut sed velit in massa pharetra facilisis quis ut est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Praesent a tortor sed felis luctus vulputate. Phasellus et quam imperdiet, euismod metus elementum, vestibulum est. Suspendisse at cursus justo, eget venenatis purus. Cras convallis purus id lorem hendrerit luctus id eget eros. Morbi aliquam sapien nec elit sodales volutpat. Sed at egestas dolor. Nunc tempus eros sed magna accumsan, quis faucibus leo blandit. Fusce sed varius nulla. Quisque scelerisque lectus eu erat viverra rutrum. Etiam egestas diam malesuada ornare pharetra. Donec ut nunc at metus blandit faucibus quis tincidunt sapien. 
                                </div>
                               <br/>
                               <h4>Requisitos</h4>
                                <div>
                                    Tramite para realizar la implementación de los esquemas de .....
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nulla enim, consequat id convallis et, rhoncus et elit. Ut sed velit in massa pharetra facilisis quis ut est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Praesent a tortor sed felis luctus vulputate. Phasellus et quam imperdiet, euismod metus elementum, vestibulum est. Suspendisse at cursus justo, eget venenatis purus. Cras convallis purus id lorem hendrerit luctus id eget eros. Morbi aliquam sapien nec elit sodales volutpat. Sed at egestas dolor. Nunc tempus eros sed magna accumsan, quis faucibus leo blandit. Fusce sed varius nulla. Quisque scelerisque lectus eu erat viverra rutrum. Etiam egestas diam malesuada ornare pharetra. Donec ut nunc at metus blandit faucibus quis tincidunt sapien. 
                                </div>
                               <br/>
                               <h4>Puntos de Atención</h4>
                                <div>
                                    Tramite para realizar la implementación de los esquemas de .....
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nulla enim, consequat id convallis et, rhoncus et elit. Ut sed velit in massa pharetra facilisis quis ut est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Praesent a tortor sed felis luctus vulputate. Phasellus et quam imperdiet, euismod metus elementum, vestibulum est. Suspendisse at cursus justo, eget venenatis purus. Cras convallis purus id lorem hendrerit luctus id eget eros. Morbi aliquam sapien nec elit sodales volutpat. Sed at egestas dolor. Nunc tempus eros sed magna accumsan, quis faucibus leo blandit. Fusce sed varius nulla. Quisque scelerisque lectus eu erat viverra rutrum. Etiam egestas diam malesuada ornare pharetra. Donec ut nunc at metus blandit faucibus quis tincidunt sapien. 
                                </div>
                               <br/>
                               <h4>Tramites Asociados</h4>
                                <div>
                                    <ul>
                                        <li><a href="tramite.htm">Tramite A</a></li>
                                        <li><a href="tramite.htm">Tramite B</a></li>
                                        <li><a href="tramite.htm">Tramite C</a></li>
                                        <li><a href="tramite.htm">Tramite D</a></li>
                                        <li><a href="tramite.htm">Tramite E</a></li>
                                        
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
        <script type="text/javascript">
            $(document).ready(function(){
            })
        </script>
    </body>
</html>