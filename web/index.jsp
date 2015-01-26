<%-- 
    Document   : index
    Created on : 26-ene-2015, 8:55:29
    Author     : Juan Antonio Seco Merchán
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
    <jsp:include page="bloques/head.jsp"/>
<body>
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-xs-12">
                <jsp:include page="modulos/chat.jsp"/>
            </div>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
</body>
</html>

