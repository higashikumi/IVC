<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:choose>
<c:when test="${guia}">
    <ul class="left-menu">        
        <li <c:if test="${selected == 'tramitespornombre'}"> class="selected"</c:if>><a href="tramites.htm">Consultar por nombre</a></li>
        <li <c:if test="${selected == 'tramitesgeneral'}"> class="selected"</c:if>><a href="resultados.htm">Ver todos</a></li>
        <li<c:if test="${selected == 'entidades'}"> class="selected"</c:if>>
            <a href="#">Entidades</a>
            <ul>
                <li><a href="bomberos.htm">Bomberos</a></li>
                <li><a href="ambiente.htm">Secretaría de Ambiente</a></li>
                <li><a href="salud.htm">Secretaría de Salud</a></li>
            </ul>
        </li>
        <li <c:if test="${selected == 'normas'}"> class="selected"</c:if>><a href="normas.htm">Normas y temas legales</a></li>
        <li <c:if test="${selected == 'pot'}"> class="selected"</c:if>><a href="pot.htm">POT</a></li>
    </ul>
</c:when>
<c:when test="${logged}">
    <ul class="left-menu action-opts">
        <li <c:if test="${selected == 'establecimiento'}"> class="selected"</c:if>><a href="establecimiento.htm">Consultar Establecimiento</a></li>
        <li<c:if test="${selected == 'estadovisitas'}"> class="selected"</c:if>>
            <a href="#">Estado Visitas</a>
            <ul>
                <li><a href="estadovisitacobb.htm">Bomberos</a></li>
                <li><a href="estadovisitasda.htm">Secretaría de Ambiente</a></li>
                <li><a href="estadovisitasds.htm">Secretaría de Salud</a></li>
            </ul>
        </li>
        
        <li <c:if test="${selected == 'visita'}"> class="selected"</c:if>>
            <a href="#">Solicitar Visita</a>
            <ul>
                <li><a href="solicitarvisitacobb.htm">Bomberos</a></li>
                <li><a href="solicitarvisitasda.htm">Secretaría de Ambiente</a></li>
                <li><a href="solicitarvisitasds.htm">Secretaría de Salud</a></li>
            </ul>
        </li>        
    </ul>
</c:when>

<c:when test="${loggedAdminGeneral}">
    <ul class="left-menu">
        <li <c:if test="${selected == 'tramites'}"> class="selected"</c:if>><a href="admintramites.htm">Trámites</a></li>
        <li <c:if test="${selected == 'actividades'}"> class="selected"</c:if>><a href="adminactividades.htm">Actividades Económicas</a></li>
    </ul>
</c:when>
<c:when test="${loggedAdmin}">
    <ul class="left-menu">        
        <li <c:if test="${selected == 'solicitudes'}"> class="selected"</c:if>><a href="visitasentidad.htm">Solicitudes</a></li>        
        <c:if test="${bomberos == 'bomberos'}">
            <li <c:if test="${selected == 'actualizar'}"> class="selected"</c:if>><a href="actualizarbomberos.htm">Actualizar Estado Visitas</a></li>
        </c:if>
        <li <c:if test="${selected == 'otras'}"> class="selected"</c:if>><a href="#" class="definir">Otras opciones</a></li>
    </ul>
</c:when>
<c:otherwise> 
    <ul class="left-menu">        
        
        <li <c:if test="${selected == 'otras'}"> class="selected"</c:if>><a href="#" class="definir">Otras opciones</a></li>
    </ul>
</c:otherwise>
</c:choose>
<script type="text/javascript">
    $(document).ready(function(){
        $(function() {
            $( ".left-menu" ).menu();
        }); 
    });
</script>