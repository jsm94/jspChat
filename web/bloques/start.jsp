<%-- 
    Document   : start.jsp
    Created on : 27-ene-2015, 9:52:09
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setBundle var="bundle" basename="bundles.login"/>
<div class="row v-table">
    <div class="col-md-12 col-xs-12 v-align">
        <h2><fmt:message key="titulo" bundle="${bundle}"/></h2>
        <form class="form-inline" method="get" action="modulos/login.jsp">
            <div class="form-group">
                <input type="text" class="cajaTexto2" id="nameUser" name="nick" placeholder="Lorne Malvo" required>
            </div>
            <button type="submit" class="btn btn-primary"><fmt:message key="enviar" bundle="${bundle}"/></button>
        </form>
    </div>
</div>

