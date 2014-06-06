<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <jsp:include page="../template/head.jsp" />
    <body>
        <jsp:include page="../template/header.jsp" />
        <div id="main">            
            <div class="titlesnormal">
                <h1>Inspección, Vigilancia y Control</h1>
                <span></span>
            </div>
            <div id="main-wrap">
                <div class="leftsection">
                    <div class="blogwrapstart">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nulla enim, consequat id convallis et, rhoncus et elit. Ut sed velit in massa pharetra facilisis quis ut est. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla facilisi. Praesent a tortor sed felis luctus vulputate. Phasellus et quam imperdiet, euismod metus elementum, vestibulum est. Suspendisse at cursus justo, eget venenatis purus. Cras convallis purus id lorem hendrerit luctus id eget eros. Morbi aliquam sapien nec elit sodales volutpat. Sed at egestas dolor. Nunc tempus eros sed magna accumsan, quis faucibus leo blandit. Fusce sed varius nulla. Quisque scelerisque lectus eu erat viverra rutrum. Etiam egestas diam malesuada ornare pharetra. Donec ut nunc at metus blandit faucibus quis tincidunt sapien.
                    </div>
                </div>
                <div class="rightsection">
                    <div class="blogwidgetstart">
                        <div class="widgettitle">
                            <h4>Consultas</h4>
                        </div>
                        
                        <div class="widgetbody">
                            <div class="blogcategories">
                                <div class="contactdetails">
                                    <spring:nestedPath path="loginObject">
                                        <form action="" method="POST">
                                            <form:errors path="*" cssClass="error"/>
                                            <h3>Matricula Mercantil</h3>
                                            <spring:bind path="matricula">
                                                <input type="text" class="contacttextform" name="${status.expression}" value="${status.value}" placeholder="Matricula Mercantil">
                                            </spring:bind>                                            
                                            <h3>Matricula Establecimiento Público</h3>
                                            <spring:bind path="matriculaEstablecimiento">
                                                <input type="text" class="contacttextform" placeholder="Número Matricula Establicimiento" name="${status.expression}" value="${status.value}"/>
                                            </spring:bind>
                                            <h3>NIT</h3>
                                            <spring:bind path="nit">
                                                <input type="text" class="contacttextform" placeholder="Documento de Identidad"  name="${status.expression}" value="${status.value}"/>
                                            </spring:bind>
                                            <input type="submit" value="Consultar" class="smallsmoothrectange whitebutton">
                                            <div class="clear"></div>
                                        </form>
                                    </spring:nestedPath>                                    
                                </div>
                            </div>
                        </div>                        
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="../template/footer.jsp" />
    </body>
</html>