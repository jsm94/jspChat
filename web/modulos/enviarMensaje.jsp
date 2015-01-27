<%-- 
    Document   : enviarMensaje
    Created on : 26-ene-2015, 10:04:50
    Author     : Juan Antonio Seco Merchán
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="mensaje" class="entidades.Mensaje" scope="page"/>
<jsp:setProperty name="mensaje" property="user" value="${usuario.nick}"/>
<jsp:setProperty name="mensaje" property="text"/>
${mensaje.setMensaje()}
<c:redirect url="../"/>
