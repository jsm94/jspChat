<%-- 
    Document   : nuevoMensaje
    Created on : 27-ene-2015, 20:39:34
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<jsp:useBean id="mensaje" class="entidades.Mensaje" scope="page"/>
${mensaje.setListaMensajes(param.limit)}
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="msg" value="${mensaje.listaMensajes.get(29)}"/>
<c:choose>
    <c:when test="${param.lastmsg < msg.id}">
        <c:out value="${msg.id - param.lastmsg}"/>
    </c:when>
    <c:otherwise>
        <c:out value="0"/>
    </c:otherwise>
</c:choose>
