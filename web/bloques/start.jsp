<%-- 
    Document   : start.jsp
    Created on : 27-ene-2015, 9:52:09
    Author     : Sammy Guergachi <sguergachi at gmail.com>
--%>

<div class="row v-table">
    <div class="col-md-12 col-xs-12 v-align">
        <h2>Escoge tu nombre de usuario</h2>
        <form class="form-inline" method="get" action="modulos/login.jsp">
            <div class="form-group">
                <input type="text" class="form-control" id="nameUser" name="nick" placeholder="Lorne Malvo" required>
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
        </form>
    </div>
</div>

