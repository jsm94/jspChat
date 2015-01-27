<%-- 
    Document   : login
    Created on : 27-ene-2015, 9:58:57
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="usuario" class="entidades.Usuario" scope="session"/>
<jsp:setProperty name="usuario" property="nick"/>
<c:redirect url="../"/>
