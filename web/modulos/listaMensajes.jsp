<%-- 
    Document   : listaMensajes
    Created on : 27-ene-2015, 18:39:45
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>
<jsp:useBean id="mensaje" class="entidades.Mensaje" scope="page"/>
${mensaje.setListaMensajes(param.limit)}
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:forEach var="i" items="${mensaje.listaMensajes}">
    <div class="mensaje new" name="${i.id}">
        <p class="mensaje-user">${i.user}</p>
        <p class="mensaje-text">${i.text}</p>
        <p class="mensaje-date">
            <fmt:formatDate pattern="HH:mm"  value="${i.fechaYHora}" />
            <c:set var="msg" value="${i.id}" scope="session"/>
        </p>
    </div>
</c:forEach>

