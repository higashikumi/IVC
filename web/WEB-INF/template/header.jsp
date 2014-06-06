<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div id="header">    
    <div id="navigation">
        <div id="navigation_wrap">
            <div id="conteactinfo">
            </div>            
            <div id="navi">
                <ul>
                    <c:if test="${not logged and !loggedAdmin}">
                        <li><a href="login.htm" title="Inicio">Inicio</a></li>
                    </c:if>
                    <c:if test="${!loggedAdmin}">
                        <li>
                            <a href="tramites.htm" title="Consultas">Consultas</a>
                            <ul>
                                <li><a href="tramites.htm" title="Gúia de tramites">Guía de Tramites</a></li>
                                <li><a href="#" class="definir" title="Uso de Suelo">Uso de Suelo</a></li>
                            </ul>
                        </li>
                    </c:if>
                    <c:if test="${!loggedAdmin}">
                        <li><a href="contactenos.htm" title="Contáctenos">Contáctenos</a></li>
                    </c:if>
                    <c:if test="${not logged and !loggedAdmin}">
                        <li><a href="administrador.htm" title="Inicio">Acceso Administrador</a></li>
                    </c:if>
                    <c:if test="${logged or loggedAdmin}">
                        <li><a href="login.htm" title="Inicio">Logout</a></li>
                    </c:if>    
                </ul>
            </div>            
        </div>
    </div>    
    <div class="clear"></div>
    <div id="header_small">
        <div id="logo">
        </div>        
    </div>    
</div>
<script>
    $(document).ready(function(){
        $('.definir').click(function(e){
           alert('Funcionalidad pendiente por definir');
           e.preventDefault();
        });
    })
    </script>