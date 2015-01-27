<%-- 
    Document   : chat
    Created on : 26-ene-2015, 9:11:26
    Author     : Juan Antonio Seco Merchán
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="mensaje" class="entidades.Mensaje" scope="page"/>
${mensaje.setListaMensajes(true)}
<h1>Chat</h1>
<div id="chat">
    <div class="listaMensajes">
        <c:forEach var="i" items="${mensaje.listaMensajes}">
            <div class="mensaje">
                <p class="mensaje-user">${i.user}</p>
                <p class="mensaje-user">${i.text}</p>
                <p class="mensaje-user">
                    <fmt:formatDate pattern="HH:mm"  value="${i.fechaYHora}" />
                </p>
            </div>
        </c:forEach>
    </div>
    <div class="textBox">
        <form method="get" action="modulos/enviarMensaje.jsp">
            <div class="form-group">
                <input type="text" class="form-control" id="mensaje" name="text">
            </div>
            <button type="submit" class="btn btn-default">Enviar</button>
        </form>
    </div>
</div>
