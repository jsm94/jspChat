<%-- 
    Document   : chat
    Created on : 26-ene-2015, 9:11:26
    Author     : Juan Antonio Seco Merchán
--%>
<h1>Chat</h1>
<div id="chat">
    <div id="listado" class="listaMensajes"></div>
    <div class="textBox">
        <form id="formEnvio" class="form-inline">
            <div class="form-group">
                <input type="text" class="form-control" id="mensaje" name="text" maxlength="140">
            </div>
        </form>
        <button id="botonEnvio" type="button" class="btn btn-default">Enviar</button>
    </div>
</div>
