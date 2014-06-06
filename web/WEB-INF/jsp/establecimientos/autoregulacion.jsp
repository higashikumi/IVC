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
                &gt; <a href="establecimientos.htm">Establecimientos</a> &gt; <a href="#" class="capitalized">Autoregulacion ${establecimiento.razonSocial}</a>
            </div>
            <!-- Start H1 Title -->
            <div class="titlesnormal">
                <h1>Autoregulación</h1>
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
                            <h3>Condiciones Sanitarias</h3>
                            <table class="ivc-table">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Si</th>
                                        <th>No</th>
                                        <th>No aplica</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>¿El establecimiento cuenta con conexión a la red de acueducto y alcantarillado?</td>
                                        <td class="centered"><input type="radio" name="san_1" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_1" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_1" value="na"/></td>
                                    </tr>
                                    <tr>
                                        <td>¿Las personas que manipulan alimentos están uniformadas y guardan las reglas básicas de higiene?</td>
                                        <td class="centered"><input type="radio" name="san_2" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_2" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_2" value="na"/></td>
                                    </tr>
                                    <tr>
                                        <td>¿Las áreas del establecimiento se encuentran limpias, ventiladas, iluminadas, señalizadas y ubicadas lejos de focos de contaminacion?</td>
                                        <td class="centered"><input type="radio" name="san_3" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_3" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_3" value="na"/></td>
                                    </tr>
                                    <tr>
                                        <td>¿Cuenta con servicios sanitarios suficientes, limpios, con adecuada ubicación, señalización y dotación?</td>
                                        <td class="centered"><input type="radio" name="san_4" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_4" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_4" value="na"/></td>
                                    </tr>
                                    <tr>
                                        <td>¿Los tanques de almacenamiento de agua son lavados mínimo cada seis meses?</td>
                                        <td class="centered"><input type="radio" name="san_5" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_5" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_5" value="na"/></td>
                                    </tr>
                                    <tr>
                                        <td>¿Los recipientes para residuos sólidos se encuentran debidamente ubicados, identificados y con tapa?</td>
                                        <td class="centered"><input type="radio" name="san_6" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_6" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_6" value="na"/></td>
                                    </tr>
                                    <tr>
                                        <td>¿Se evidencia presencia de animales domésticos?</td>
                                        <td class="centered"><input type="radio" name="san_7" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_7" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_7" value="na"/></td>
                                    </tr>

                                    <tr>
                                        <td>¿Las paredes, pisos y techos del establecimiento se encuentran en buen estado?</td>
                                        <td class="centered"><input type="radio" name="san_1" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_1" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_1" value="na"/></td>
                                    </tr>

                                </tbody>
                            </table>
                            <div class="clear"></div>
                            
                            <h3>Condiciones Ambientales</h3>
                            <table class="ivc-table">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Si</th>
                                        <th>No</th>
                                        <th>No aplica</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>¿Transforma o comercializa flora silvestre o madera?</td>
                                        <td class="centered"><input type="radio" name="san_1" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_1" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_1" value="na"/></td>
                                    </tr>
                                    <tr>
                                        <td>¿Comercializa especies de fauna silvestre?</td>
                                        <td class="centered"><input type="radio" name="san_2" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_2" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_2" value="na"/></td>
                                    </tr>
                                    <tr>
                                        <td>¿En el desarrollo de su actividad económica genera aceite lubricante como residuo?</td>
                                        <td class="centered"><input type="radio" name="san_3" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_3" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_3" value="na"/></td>
                                    </tr>
                                    <tr>
                                        <td>¿Su establecimiento genera residuos con características corrosivas, reactivas explosivas, tóxicas, inflamables o patógenas?</td>
                                        <td class="centered"><input type="radio" name="san_4" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_4" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_4" value="na"/></td>
                                    </tr>
                                    <tr>
                                        <td>¿En el desarrollo de su actividad comercial o de servicios genera residuos líquidos (aguas de lavado) que sean descargados en la red de alcantarillado?</td>
                                        <td class="centered"><input type="radio" name="san_5" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_5" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_5" value="na"/></td>
                                    </tr>
                                    <tr>
                                        <td>¿Su establecimiento genera residuos de características corrosivas?</td>
                                        <td class="centered"><input type="radio" name="san_6" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_6" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_6" value="na"/></td>
                                    </tr>
                                    <tr>
                                        <td>¿Cuenta con equipos de combustión (calderas, hornos, estufas, entre otros), chimeneas o cuenta con sistema de extracción de gases, vapores, partículas u olores?</td>
                                        <td class="centered"><input type="radio" name="san_7" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_7" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_7" value="na"/></td>
                                    </tr>

                                    <tr>
                                        <td>¿Su establecimiento cuenta con certificado y/o concepto de intensidad auditiva expedido por la Secretaría Distrital de Ambiente?</td>
                                        <td class="centered"><input type="radio" name="san_1" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_1" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_1" value="na"/></td>
                                    </tr>

                                </tbody>
                            </table>
                            <div class="clear"></div>
                             <h3>Condiciones de Prevención de Seguridad Industrial y Humana</h3>
                            <table class="ivc-table">
                                <thead>
                                    <tr>
                                        <th></th>
                                        <th>Si</th>
                                        <th>No</th>
                                        <th>No aplica</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td colspan="4"><b>Condiciones de incendio</b></td>
                                    </tr>
                                    <tr>
                                        <td>¿Tiene superficies calientes tales como radiadores, planchas, tuberías de vapor, otras superficies?</td>
                                        <td class="centered"><input type="radio" name="san_1" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_1" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_1" value="na"/></td>
                                    </tr>
                                    <tr>
                                        <td>¿Tiene dentro de su establecimiento llamas abiertas tales como fogones, velas, chimeneas, pebeteros?</td>
                                        <td class="centered"><input type="radio" name="san_2" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_2" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_2" value="na"/></td>
                                    </tr>
                                    <tr>
                                        <td>¿El cableado es adecuado: posee fusibles y polo a tierra?</td>
                                        <td class="centered"><input type="radio" name="san_3" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_3" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_3" value="na"/></td>
                                    </tr>
                                    <tr>
                                        <td>¿Posee avisos de prohibido fumar?</td>
                                        <td class="centered"><input type="radio" name="san_4" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_4" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_4" value="na"/></td>
                                    </tr>
                                    
                                    <tr>
                                        <td colspan="4"><b>Seguridad Humana</b></td>
                                    </tr>
                                    <tr>
                                        <td>¿Los pasillos y salidas de evacuación son suficientes, están despejadas, señalizadas y libres de obstáculos?</td>
                                        <td class="centered"><input type="radio" name="san_5" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_5" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_5" value="na"/></td>
                                    </tr>
                                    <tr>
                                        <td>¿Tiene un plan de Emergencia?</td>
                                        <td class="centered"><input type="radio" name="san_6" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_6" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_6" value="na"/></td>
                                    </tr>
                                    <tr>
                                        <td>¿Tiene iluminación de Emergencia, dependiente de servicio de energía propia (Ej. Planta de Emergencia)?</td>
                                        <td class="centered"><input type="radio" name="san_7" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_7" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_7" value="na"/></td>
                                    </tr>
                                    
                                     <tr>
                                        <td colspan="4"><b>Materiales Inflamables y Combustibles</b></td>
                                    </tr>
                                    <tr>
                                        <td>¿Almacena líquidos inflamables (gasolina, alcohol industrial, thinner, pegante PVC, otros)?</td>
                                        <td class="centered"><input type="radio" name="san_8" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_8" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_8" value="na"/></td>
                                    </tr>
                                    <tr>
                                        <td>¿Tiene instalación de gas natural?</td>
                                        <td class="centered"><input type="radio" name="san_8" value="si"/></td>
                                        <td class="centered"><input type="radio" name="san_8" value="no"/></td>
                                        <td class="centered"><input type="radio" name="san_8" value="na"/></td>
                                    </tr>
                                    

                                </tbody>
                            </table>
                            <div class="clear"></div>
                            <div class="form-buttons">
                                <a class="smallsmoothrectange blackbutton" href="establecimientos.htm" title="Enviar" id="send">Enviar</a>
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
    </body>
</html>