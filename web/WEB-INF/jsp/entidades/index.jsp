<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <jsp:include page="../../template/head.jsp" />
    <body>
        <jsp:include page="../../template/header.jsp" />
        <div id="main">            
            <div class="titlesnormal">
                <h1>Inspección, Vigilancia y Control</h1>
                <span></span>
            </div>
            <div id="main-wrap">                
                <div class="rightsection">
                    <div class="blogwidgetstart">
                        <div class="widgettitle">
                            <h4>Consultas</h4>
                        </div>
                        
                        <div class="widgetbody">
                            <div class="blogcategories">
                                <div class="contactdetails">
                                    <spring:nestedPath path="loginadmin">
                                        <form action="" method="POST">
                                            
                                            <form:errors path="*" cssClass="error"/>
                                            <h3>Nombre de Usuario</h3>
                                            <spring:bind path="username">
                                                <input type="text" class="contacttextform" name="${status.expression}" value="${status.value}" placeholder="Username">
                                            </spring:bind>                                            
                                            <h3>Password</h3>
                                            <spring:bind path="password">
                                                <input type="password" class="contacttextform" placeholder="Password" name="${status.expression}" value="${status.value}"/>
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
        <jsp:include page="../../template/footer.jsp" />
    </body>
</html>